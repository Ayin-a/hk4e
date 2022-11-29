--[[
defs = {
	group_id = 133220083, --自己的GroupId
	seelie_id = 83001,--配置的雷仙灵，需要Persistent
	pointarrayLoop = 322000028, --循环的点阵ID
	pointarraySeq = 322000028, --顺序的点阵ID
	finalPointLoop = 9,	--循环点阵的最后一个到达点
	finalPointSeq = 15,	--顺序点阵的最后一个到达点
	pointsLoop = {3,6,9},--循环时的有到达事件的点ID
	pointsSeq = {4,10,12,15},--顺序时的有到达事件的点ID
	reward_id = 83002,	--完成后刷的宝箱
	endSuite = 3,--完成时切的Suite
}

--需要在Group里定义的变量
--IsLoop 表示现在这个雷电飞贼走的状态，1表示在循环，0表示不在循环
--IsFinished 表示这个雷电飞贼是否到达终点，需要persistent
--currentPathNodeIndex 当前所在的路点点ID，初始为1
--nextRouteIndex 下一个终点的list索引ID
--IsMoving 表示飞贼是否处于移动状态
--在完成后会切SuiteFlow
]]

local Triggers_LoopSeelie = {
	[1] = { name = "avatar_near_platform", config_id = 9000401, event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "", action = "action_avatar_near_platform", trigger_count = 0 },
	[2] = { name = "platform_reach",config_id = 9000402, event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "", action = "action_platform_reach_point", trigger_count = 0 },
}

function GetNextPath(context)
	local path = {}
	local curNodeIndex = ScriptLib.GetGroupVariableValue(context,"currentPathNodeIndex")
	local nextRouteIndex = ScriptLib.GetGroupVariableValue(context,"nextRouteIndex")
	--根据状态返回一个移动路径
	if 0 ~= ScriptLib.GetGroupVariableValue(context,"IsLoop") then
		--循环状态
		local nextReachPoint = defs.pointsLoop[nextRouteIndex]
		if curNodeIndex == defs.finalPointLoop then
			curNodeIndex = 0
		end
		ScriptLib.PrintLog("@@Lua Loop Seelie: Get_Next_"..nextReachPoint)
		for i = curNodeIndex+1, nextReachPoint do
			table.insert(path, i)
		end
	else
		local nextReachPoint = defs.pointsSeq[nextRouteIndex]
		ScriptLib.PrintLog("@@Lua Loop Seelie: Get_Next_"..nextReachPoint)
		for i = curNodeIndex+1, nextReachPoint do
			table.insert(path, i)
		end
	end
	return path
end


function MovePlatform(context)
	ScriptLib.PrintLog("@@Lua Loop Seelie: Platform Move Start")
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isMoving", 1) then
		ScriptLib.PrintContextLog(context, "@@Lua Loop Seelie: Platform Moving Return")
		return -1
	end
	--顺序移动
	if 0 ~= ScriptLib.GetGroupVariableValue(context,"IsLoop") then
		ScriptLib.SetPlatformPointArray(context, defs.seelie_id, defs.pointarrayLoop, GetNextPath(context), { route_type = 0 })
		ScriptLib.PrintLog("@@Lua Loop Seelie: Start_Seq_Move")
	else
	--循环移动
		ScriptLib.SetPlatformPointArray(context, defs.seelie_id, defs.pointarraySeq, GetNextPath(context), { route_type = 0 })
		ScriptLib.PrintLog("@@Lua Loop Seelie: Start_Loop_Move")
	end
	
	return 0
end

-- 触发操作
function action_platform_reach_point(context, evt)
	--消息不是组内飞贼
	if defs.seelie_id ~= evt.param1 then
		return -1
	end
	ScriptLib.PrintLog("@@Lua Loop Seelie:Reach Point_".. "_configID_"..evt.param1 .. "_pointarray_ID_ "..evt.param2.."_pointID _"..evt.param3)
	--移动结束
	ScriptLib.SetGroupVariableValue(context, "isMoving", 0)
	ScriptLib.PrintLog("@@Lua Loop Seelie: Move_End")
	--停止移动
	ScriptLib.StopPlatform(context, defs.seelie_id)
	--判断是否到达终点
	--循环状态的终点
	if 0 ~= ScriptLib.GetGroupVariableValue(context,"IsLoop") then
	--循环状态到达终点
		if evt.param3 == defs.finalPointLoop then
			--下一个路点的索引是表里的第一个
			ScriptLib.SetGroupVariableValue(context,"nextRouteIndex", 1)
			--更新当前所在的路点
			ScriptLib.SetGroupVariableValue(context,"currentPathNodeIndex",evt.param3)
		else
	--在list里找设一个目标路点
			local next = ScriptLib.GetGroupVariableValue(context, "nextRouteIndex")
			next = next + 1
			ScriptLib.SetGroupVariableValue(context,"nextRouteIndex", next)
		--更新当前所在的路点
			ScriptLib.SetGroupVariableValue(context,"currentPathNodeIndex",evt.param3)
		end
	else
	--非循环状态的的状态
	--到达终点
		if evt.param3 == defs.finalPointSeq then
			ScriptLib.SetGroupVariableValue(context, "isFinished", 1)
			if defs.reward_id ~= 0 then
				ScriptLib.CreateGadget(context, { config_id = defs.reward_id }) 
			end
			ScriptLib.SetGadgetStateByConfigId(context, defs.seelie_id, 201)
			ScriptLib.RefreshGroup(context, { group_id = defs.group_id, suite = defs.endSuite})	
			ScriptLib.MarkPlayerAction(context, 2014, 3, 1)	
			return 0
		end
	--在list里找设一个目标路点
		local next = ScriptLib.GetGroupVariableValue(context, "nextRouteIndex")
		next = next + 1
		ScriptLib.SetGroupVariableValue(context,"nextRouteIndex", next)
		--更新当前所在的路点
		ScriptLib.SetGroupVariableValue(context,"currentPathNodeIndex",evt.param3)
	end
	return 0
end


-- 玩家靠近时触发操作
function action_avatar_near_platform(context, evt)
	ScriptLib.PrintLog("Near Platform condition : ".. evt.param1.." | RouteID = " .. evt.param2 .. " | Point = ".. evt.param3)
	--不是自己Group里的飞贼
	if defs.seelie_id ~= evt.param1 then
		return -1
	end
	--201底座状态下不触发移动操作
	local state = ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.seelie_id)
	ScriptLib.PrintLog("@@Lua Loop Seelie:Platform condition_State_"..state) 
	if state == 201 then 
		return -1
	end
	--移动状态下不触发新一次移动操作
	if ScriptLib.GetGroupVariableValue(context, "isMoving") ~= 0 then 
		return -1
	end
	MovePlatform(context)
	return 0
end


--给每个suite塞触发器
function Initialize_LoopSeelie()
	for k,v in pairs(Triggers_LoopSeelie) do
		table.insert(triggers, v)
		table.insert(suites[1].triggers, v.name)
	end
	return 0
end

Initialize_LoopSeelie()