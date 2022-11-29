--ServerUploadTool Save to [/root/env/data/lua/common/V2_2]
--[[
defs = {
	group_id = ,
	region_id = ,
	seelie_id = ,
	selfLoopPointArray = ,
	selfLoopRoute = {}，
	chaseLoopPointArray = ,
	chaseLoopRoute = {},
}
]]

function MovePlatform(context)
	ScriptLib.SetPlatformPointArray(context, defs.seelie_id, defs.chaseLoopPointArray, GetNextPath(context), { route_type = 0 })
--	ScriptLib.PrintContextLog(context,"@@Lua Loop Seelie: Start_Loop_Move")
	return 0
end

function GetNextPath(context)
	local path = {}
	local nextNode = 0
	local nextIndex = 0
	local curNode = ScriptLib.GetGroupVariableValue(context,"currentPathNodeID")
--	ScriptLib.PrintContextLog(context,"@@Lua Loop Seelie: Cur_"..curNode)
	local len = #defs.chaseLoopRoute
	for index,point_id in pairs(defs.chaseLoopRoute) do
		if curNode == point_id then
			nextIndex = index
		end
	end
	--检查是不是最后一个点，或者当前的点不在循环队列里
	if nextIndex == len or nextIndex == 0 then
		nextIndex = 1
	else
		nextIndex = nextIndex + 1
	end

	nextNode = defs.chaseLoopRoute[nextIndex]
	path = {curNode,nextNode}
--	ScriptLib.PrintContextLog(context,"@@Lua Loop Seelie: Cur_"..curNode.."_NEXT_"..nextNode)
	return path
end


local Triggers_SelfLoopSeelie = {
	[1] = { name = "avatar_near_platform", config_id = 9001201, event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "", action = "action_avatar_near_platform", trigger_count = 0 },
	[2] = { name = "platform_reach",config_id = 9001202, event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "", action = "action_platform_reach_point", trigger_count = 0 },
	[3] = { name = "group_load",config_id = 9001203, event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_group_load", trigger_count = 0 },
	[4] = { name = "enter_region",config_id = 9001204, event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_enter_region", trigger_count = 0 },

}

function action_group_load( context, evt )
	--初始化这个变量保证接下来是对的
	ScriptLib.SetGroupVariableValue(context, "selfLooping", 1)
	--这个变量不知道为啥会存档，在这里初始化一下
	ScriptLib.SetGroupVariableValue(context,"currentPathNodeID", 1)
	--开始自转
	ScriptLib.SetPlatformPointArray(context, defs.seelie_id, defs.selfLoopPointArray, defs.selfLoopRoute, { route_type = 2 })
	return 0
end

function action_enter_region(context,evt)
	--判断是不是自己的Region
	if evt.param1 ~= defs.region_id then
		return -1
	end
	--看看是不是在自转状态，如果是就停下来往目标点走，不是就返回
	if 1 ~=  ScriptLib.GetGroupVariableValue(context, "selfLooping") then
		return -1
	end
--	ScriptLib.PrintContextLog(context,"@@Lua SelfLoop: Enter_Region")
	--取消自转状态
	ScriptLib.SetGroupVariableValue(context, "selfLooping", 0)
	ScriptLib.SetPlatformPointArray(context, defs.seelie_id, defs.chaseLoopPointArray, {1,2} , { route_type = 0 })
	return 0
end

-- 玩家靠近时触发操作
function action_avatar_near_platform(context, evt)
--	ScriptLib.PrintContextLog(context,"@@Lua SelfLoopL:Near Platform condition : ".. evt.param1.." | RouteID = " .. evt.param2 .. " | Point = ".. evt.param3)
	--不是自己Group里的飞贼
	if defs.seelie_id ~= evt.param1 then
		return -1
	end

	if 0 == ScriptLib.GetGroupVariableValue(context, "selfLooping") then
		MovePlatform(context)
	end
	return 0
end

-- 触发操作
function action_platform_reach_point(context, evt)
	ScriptLib.PrintContextLog(context,"@@Lua Loop Seelie:Reach Point_configID_"..evt.param1.."_pointID _"..evt.param3)
	--消息不是组内飞贼
	if defs.seelie_id ~= evt.param1 then
		return -1
	end
	--如果到的点是出发点，就返回-1
	if evt.param3 == ScriptLib.GetGroupVariableValue(context,"currentPathNodeID") then
		return -1
	end
	--到了，让平台停下来
	ScriptLib.StopPlatform(context, defs.seelie_id)

	--更新现在到的点ID
	ScriptLib.SetGroupVariableValue(context,"currentPathNodeID",evt.param3)
--	ScriptLib.PrintContextLog(context,"@@Lua Loop Seelie: Move_End")
	return 0
end

--给每个suite塞触发器
function Initialize_SelfLoopSeelie()
	for k,v in pairs(Triggers_SelfLoopSeelie) do
		table.insert(triggers, v)
		table.insert(suites[1].triggers, v.name)
	end
	return 0
end

Initialize_SelfLoopSeelie()