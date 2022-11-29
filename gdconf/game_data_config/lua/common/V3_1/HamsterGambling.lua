--ServerUploadTool Save to [/root/env/data/lua/common/V3_1]
--[[
=====================================================================================================================
||	Filename 	  ||	HamsterGambing
||	RelVersion    ||	3.1
||	Owner         ||	xudong.sun
||	Description   ||	3.1日常打地鼠
||	LogName       ||    ## HamsterGambing_LOG
||	Protection    ||	
=====================================================================================================================
local pointStateList = {configid, 0, 0, configid, 0, configid}    //点位和configID之间的关系，该点位有坑，就填对应的configID；该点位无坑，填0
local challengeOptionConfigID = 0                                 //挑战开启的configID                            
local challengeOptionID = 0                                       //挑战开启按键的ID

local holeConfigID = {1,2,3}                                      //坑的configID list
local checkOptionID = 1                                           //移动完之后，玩家靠近坑位会显示的按键ID

local arrayID = {1,2}                                              //点阵ID

local randomVez = {min = 1, max = 5}                              //每轮触发的交换最大次数和最小次数
local successCount = 2                                            //需要成功的次数
=======================================================================================]]
local extrTriggers = {
	initialtrigger = {
		["Group_Load"] = { config_id = 80000001, name = "Group_Load", event= EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_group_load", trigger_count = 0},
		["Option_Down"] = { config_id = 80000002, name = "Option_Down", event= EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_option_down", trigger_count = 0},
		["Reach_Point"] = { config_id = 80000003, name = "Reach_Point", event= EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "", action = "action_reach_point", trigger_count = 0},
		--["Move_Interval"] = { config_id = 80000004, name = "Move_Interval", event= EventType.EVENT_TIME_AXIS_PASS, source = "move_interval", condition = "", action = "action_move_interval", trigger_count = 0},
	}
}

local HamsterEnum = {
	Inmove = 0,
	WaitMove = 1,
	MoveSuccess = 2,
}

function action_group_load( context, evt )
	--初始化点位记录
	-- ScriptLib.SetGroupTempValue(context, "hamsterNum", 0,{})
	ScriptLib.SetGroupTempValue(context, "reachPointNum", 0,{})
	ScriptLib.SetGroupVariableValue(context, "hamster_success_num", 0)

	for i=1,#pointStateList do
		ScriptLib.SetGroupTempValue(context, "arraypoint"..i, pointStateList[i],{})
		-- if pointStateList[i] ~= 0 then
		-- 	ScriptLib.ChangeGroupTempValue(context, "hamsterNum", 1,{})
		-- end
	end

	--固定一个第一轮不动的鼹鼠坑
	local tempList = {}
	for i,v in ipairs(holeConfigID) do
		local entityID = ScriptLib.GetEntityIdByConfigId(context, v)
		if ScriptLib.GetGadgetIdByEntityId(context, entityID) ~= 70330295 then
			table.insert(tempList,v)
		end
	end

	if unmovenum >= #holeConfigID then

		ScriptLib.PrintGroupWarning(context,"## HamsterGambing action_group_load: 不可移动的洞，数量多于洞的总数")

		return 0
	end

	
	for i=1,unmovenum do
		local randomIndex = math.random(1, #tempList)
		ScriptLib.SetGroupTempValue(context, "unmoveableconfigid"..i, tempList[randomIndex],{})
		table.remove(tempList, randomIndex)
	end

	
	--初始化挑战按键
	ScriptLib.SetWorktopOptionsByGroupId(context, 0, challengeOptionConfigID, {challengeOptionID})


	return 0 
end

function action_option_down( context, evt )

	if evt.param2 == challengeOptionID then

		LF_SetHamster( context, HamsterEnum.WaitMove)
		--删除挑战按键
		ScriptLib.DelWorktopOption(context, challengeOptionID)

	elseif evt.param2 == checkOptionID then
		
		ScriptLib.PrintContextLog(context, "## HamsterGambing : GadgetID = "..ScriptLib.GetGadgetIdByEntityId(context, evt.source_eid))

		--删除查看按键
		for i,v in ipairs(holeConfigID) do
			ScriptLib.DelWorktopOptionByGroupId(context, 0, v, checkOptionID)
		end
		

		--确认是否完成
		if ScriptLib.GetGadgetIdByEntityId(context, evt.source_eid) == 70330295 then
			--找到鼹鼠，成功次数+1
			ScriptLib.ChangeGroupVariableValue(context, "hamster_success_num", 1)

			--8.5新增：向当前configID发送消息，播一个成功特效
			ScriptLib.SetGroupGadgetStateByConfigId(context, 0, evt.param1, 203)

			if ScriptLib.GetGroupVariableValue(context, "hamster_success_num")>= successCount then
				--完成挑战
				LF_SetHamster( context, HamsterEnum.MoveSuccess)
				ScriptLib.PrintContextLog(context, "## HamsterGambing : 挑战成功！")
				return 0
			end	
		else
			--向当前configID发送消息，播一个失败特效
			ScriptLib.SetGroupGadgetStateByConfigId(context, 0, evt.param1, 202)
		end

		LF_SetHamster( context, HamsterEnum.WaitMove)
	
	end

	return 0
end

function action_reach_point( context, evt )
	ScriptLib.ChangeGroupTempValue(context, "reachPointNum", 1,{})

	local moveRound = #holeConfigID

	if ScriptLib.GetGroupVariableValue(context, "hamster_success_num") == 0 then
		moveRound = moveRound - unmovenum
	end


	if ScriptLib.GetGroupTempValue(context, "reachPointNum", {})>= moveRound then

		ScriptLib.SetGroupTempValue(context, "reachPointNum", 0,{})

		ScriptLib.ChangeGroupTempValue(context, "moveVez", -1,{})

		if ScriptLib.GetGroupTempValue(context, "moveVez",{}) == 0 then
			--移动次数用完，显示按键
			LF_SetModel( context, holeConfigID, 1)
			for i,v in ipairs(holeConfigID) do
				ScriptLib.SetWorktopOptionsByGroupId(context, 0, v, {checkOptionID})
			end
			return 0 
		end

		--继续移动
		LF_MoveHamster( context )
	end

	return 0
end

function SLC_StartHamsterMove( context )

	LF_SetHamster( context, HamsterEnum.Inmove)

	--开启下一轮
	ScriptLib.SetGroupTempValue(context, "moveVez", math.random(randomVez.min, randomVez.max),{})
	ScriptLib.PrintContextLog(context, "## HamsterGambing : 本轮需要移动次数： "..ScriptLib.GetGroupTempValue(context, "moveVez", {}))

	--移动鼹鼠
	LF_MoveHamster( context )	

	return 0
end


-- function action_move_interval( context, evt )
-- 	ScriptLib.ChangeGroupTempValue(context, "moveVez", -1,{})
-- 	ScriptLib.PrintContextLog(context, "## HamsterGambing : 移动次数还剩： "..ScriptLib.GetGroupTempValue(context, "moveVez",{}))

-- 	if ScriptLib.GetGroupTempValue(context, "moveVez",{}) <= 0 then
-- 		--移动次数用完，显示按键
-- 		LF_SetModel( context, 1)
-- 		ScriptLib.PrintContextLog(context, "## HamsterGambing : 停止移动")

-- 		for i,v in ipairs(holeConfigID) do
-- 			ScriptLib.SetWorktopOptionsByGroupId(context, 0, v, {checkOptionID})
-- 		end

-- 		ScriptLib.EndTimeAxis(context, "move_interval")
-- 		return 0 
-- 	end

-- 	--继续移动
-- 	LF_MoveHamster( context )

-- 	return 0
-- end

function LF_SetHamster( context, value)

	for i,v in ipairs(holeConfigID) do
			local entityID = ScriptLib.GetEntityIdByConfigId(context, v)

			if ScriptLib.GetGadgetIdByEntityId(context, entityID) == 70330295 then

				ScriptLib.SetEntityServerGlobalValueByConfigId(context, v, "SGV_HAMSTER_WAITMOVE", value)
			end
		end

	return 0
end

function LF_SetModel( context, configIdList, value)

	for i,v in ipairs(configIdList) do
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, v, "SGV_HAMSTER_MODEL", value)
	end

	return 0
end

function LF_MoveHamster( context )

	ScriptLib.PrintContextLog(context, "## HamsterGambing : 开始移动")
	--删除观察按键
	for i,v in ipairs(holeConfigID) do
		ScriptLib.DelWorktopOption(context, checkOptionID)
	end

	--获取空点位
	local Point = LF_GetPointState(context)

	--如果还没成功过，降低难度
	if ScriptLib.GetGroupVariableValue(context, "hamster_success_num") == 0 then
		for i=1,unmovenum do
			
			local tempID = ScriptLib.GetGroupTempValue(context, "unmoveableconfigid"..i,{})

			for i,v in ipairs(Point.hamsterPoint) do
				if ScriptLib.GetGroupTempValue(context, "arraypoint"..v, {}) == tempID then
					table.remove(Point.hamsterPoint, i)
					break
				end
			end	

		end
		
	end

	--point转化为ConfigID
	local configIdList = {}
	for i,v in ipairs(Point.hamsterPoint) do
		table.insert(configIdList, ScriptLib.GetGroupTempValue(context, "arraypoint"..v, {}) )
	end

	LF_SetModel( context, configIdList, 0)

	for i,v in ipairs(Point.hamsterPoint) do
		local moveConfigID = ScriptLib.GetGroupTempValue(context, "arraypoint"..v, {})

		--找出一个要去的点
		local tempPoint = LF_GetPointState(context)
		tempIndex = math.random(1, #tempPoint.blankPoint)
		local blankPoint = tempPoint.blankPoint[tempIndex]

		--动起来
		ScriptLib.PrintContextLog(context, "## HamsterGambing : 本次移动，"..moveConfigID.." 从 "..v.." 移动到 "..blankPoint)

		if arrayID[ScriptLib.GetGroupVariableValue(context, "hamster_success_num")+1] == nil then

			ScriptLib.PrintGroupWarning(context,"## HamsterGambing LF_MoveHamster: arraypoint数量不足")

			return 0
		end

		ScriptLib.SetPlatformPointArray(context, moveConfigID, arrayID[ScriptLib.GetGroupVariableValue(context, "hamster_success_num")+1], {v,blankPoint}, {route_type = 0})

		--更新点位(风险点，移动平台还未到达就更新了位置关系，可能会不匹配；但是因为load之后会初始化，似乎也不会有大问题)
		ScriptLib.SetGroupTempValue(context, "arraypoint"..v, 0,{})
		ScriptLib.SetGroupTempValue(context, "arraypoint"..blankPoint, moveConfigID,{})

	end

	return 0
end




--查空point
function LF_GetPointState( context)

	local Point = {
		blankPoint = {},
		hamsterPoint = {},
	}
	for i=1,#pointStateList do

		--ScriptLib.PrintContextLog(context, "## HamsterGambing : #pointStateList = "..#pointStateList.." i = "..i)

		if ScriptLib.GetGroupTempValue(context, "arraypoint"..i, {}) == 0 then
			table.insert(Point.blankPoint, i)
		else
			table.insert(Point.hamsterPoint, i)
		end
	end

	return Point
end




function LF_Initialize_Group()
	for k,v in pairs(extrTriggers.initialtrigger) do
		table.insert(triggers, v)
		table.insert(suites[init_config.suite].triggers, v.name)
	end
	table.insert(variables,{ config_id= 50000001, name = "hamster_success_num", value = 0, no_refresh = true})
	return 0
end

LF_Initialize_Group()