--[[
	2.3雪山冬令营，营地冷暖源装置
	限时按顺序激活子装置，启动主装置
	10.15迭代：不要顺序激活；进圈弹banner
]]

--[[

local defs = {
	--按想要的解谜顺序, 填子装置的config_id
	branch_gadgets = {117012, 117013, 117014}, 
	--主装置的config_id,可填一个或多个
	main_gadget = {117011}, 
	--重置倒计时秒数
	limit_time = {25}, 
	--这组解谜在哪个suit里
	puzzle_suit = 1,
	--当前group
	group = 133008117,
	--营地内龙血矿石组
	mineral = {117015, 117016, 117017},
	--挑战操作台
	challenge_gadget = 117018,
	--怪物数量
	monster_count = 25,
	--挑战时间
	time = 120,
	--怪物列表
	monster_array = {117001,117002,117003,117004,117005,117006,117007,117008,117009,117010},
	monster_min = 5,
	monster_max = 5,
	monster_count =25,
	target_point = 117019,
	optimiz_region=117043

}

]]

local extraTriggers={
 -- { config_id = 8000001,name = "Time_Limit", event = EventType.EVENT_TIME_AXIS_PASS, source = "WinterCamp_LimitTime", condition = "", action = "action_Time_Limit", trigger_count = 0 },
  { config_id = 8000002, name = "Gadget_State_Change", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_Gadget_State_Change", trigger_count = 0 },
  { config_id = 8000003, name = "Enter_Tutorial_Region", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_enter_TutorialRegion", trigger_count = 0},
  { config_id = 8000004, name = "Enter_Optimiz_Region", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_enter_OptimizRegion", trigger_count = 0 },
  { config_id = 8000005, name = "Leave_Optimiz_Region",  event = EventType.EVENT_LEAVE_REGION, source = "",condition = "",action = "action_leave_OptimizRegion",trigger_count= 0},
  { config_id = 8000006, name = "Challenge_Success",  event = EventType.EVENT_CHALLENGE_SUCCESS, source = "",condition = "",action = "action_challenge_success",trigger_count= 0},
  { config_id = 8000007, name = "Challenge_Fail", event = EventType.EVENT_CHALLENGE_FAIL, source = "", condition = "", action = "action_challenge_fail", trigger_count = 0 },
  { config_id = 8000008, name = "Select_Option", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_select_option", trigger_count = 0 },
  { config_id = 8000009, name = "Mineral_State_Change", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_Mineral_State_Change", trigger_count = 0 },
  { config_id = 8000010, name = "TimeAxis_Event", event= EventType.EVENT_TIME_AXIS_PASS, source = "SGV_Checker", condition = "", action = "action_On_TimeAxis", trigger_count = 0 },
  { config_id = 8000011, name = "Enter_Banner_Region", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_enter_BannerRegion", trigger_count = 0 },
  { config_id = 8000012, name = "TimeAxis_Banner", event= EventType.EVENT_TIME_AXIS_PASS, source = "Banner_CD", condition = "", action = "action_On_BannerCD", trigger_count = 0 },

}


function LF_Initialize_Group(triggers, suites)
	for i=1,#extraTriggers do
		table.insert(triggers, extraTriggers[i])
		table.insert(suites[defs.puzzle_suit].triggers,extraTriggers[i].name)
	end
	--下一个该被激活的branch装置序号.
	table.insert(variables,{ config_id=50000001,name = "next_index", value = 1})
	--0未完成,1-开始中 2-已经完成
	table.insert(variables,{ config_id=50000002,name = "puzzle_state", value = 0, no_refresh = true})
	table.insert(variables,{ config_id=50000003,name = "challenge", value = 0})
end

--[[function action_Time_Limit(context,evt)
	--如果解谜已开始且还没完成
	if ScriptLib.GetGroupVariableValue(context,"puzzle_state") == 1 then
		ScriptLib.PrintContextLog(context,"[WinterCampDevice] Timeout. Puzzle Failed.")
		FaildProcess(context)
	end
	return 0
end]]

--10.15迭代：进入范围弹出banner 反复弹 战斗过程中不弹 装置已经是暖源了也不弹
function action_enter_BannerRegion(context, evt)
	--检查region
	if defs.banner_region == nil or evt.param1 ~= defs.banner_region then 
		return 0
	end
	--检查暖源
	if ScriptLib.GetGroupVariableValue(context,"puzzle_state") == 2 then
		return 0
	end
	--检查战斗状态
	if ScriptLib.GetGroupVariableValue(context,"challenge") == 0 then

		if ScriptLib.GetGroupTempValue(context, "deny_banner", {}) ~= 1 then 
			--banner触发CD，防止堆积Banner队列
			ScriptLib.InitTimeAxis(context, "Banner_CD", {3}, false)
			ScriptLib.SetGroupTempValue(context, "deny_banner", 1, {})
			ScriptLib.ShowReminder(context, 400108)
		end
	end	
	return 0
end
function action_On_BannerCD(context, evt)
	ScriptLib.SetGroupTempValue(context, "deny_banner", 0, {})
	return 0
end 
function action_enter_TutorialRegion(context, evt)

	if defs.guide_regionID == nil then 
		return 0
	elseif evt.param1 == defs.guide_regionID then 
		LF_Try_StartTutorial(context)
	end
	return 0
end

function LF_Try_StartTutorial(context)

    local UidList = ScriptLib.GetSceneUidList(context)
    local ownerUid = UidList[1]
    local havePlayed  = ScriptLib.GetExhibitionAccumulableData(context, ownerUid, 10901104)

    if 0 == havePlayed then
        ScriptLib.ShowClientTutorial(context, 836, {ownerUid})
        ScriptLib.AddExhibitionAccumulableData(context,ownerUid, "WinterCamp_Device_HavePlayed", 1)
    end

    return 0
end

function FaildProcess(context)
	--ScriptLib.EndTimeAxis(context, "WinterCamp_LimitTime")
	ScriptLib.SetGroupVariableValue(context,"next_index", 1)
	ScriptLib.SetGroupVariableValue(context,"puzzle_state", 0)
	SetGadgetStateInTable(context,defs.branch_gadgets,0)

	ScriptLib.ShowReminder(context, 400096)
	--龙血矿重置
	if defs.mineral ~= nil then 
		for k,v in pairs(defs.mineral) do
			ScriptLib.CreateGadget(context, { config_id = v })
		end
	end
	return 0
end

--用于把一个table中的gadget设成指定state
function SetGadgetStateInTable(context,table,state)
	for k, v in pairs(table) do
		ScriptLib.SetGadgetStateByConfigId(context,v,state)
	end
	return 0
end

function SuccessProcess(context)
	UpLoadActionLog_StateChange(context) 
	ScriptLib.SetGroupVariableValue(context,"puzzle_state", 2)
	SetGadgetStateInTable(context,defs.main_gadget,201)
	--在战斗过程中解谜完成，立即上SGV
	local uid_list = ScriptLib.GetSceneUidList(context)
	for k,v in pairs(uid_list) do 
		ScriptLib.SetTeamServerGlobalValue(context, v, "SGV_WinterCamp_PlayerBuff", 1)
	end
	if ScriptLib.GetGroupVariableValue(context,"challenge") == 1 then
		--用于检查中途加入的玩家
		ScriptLib.InitTimeAxis(context, "SGV_Checker", {3}, true)
	end
	return 0
end
function action_Mineral_State_Change(context, evt)

	if GadgetState.GearStart ~= evt.param1 then
		return 0
	end

	local mineral_index = LF_IndexInTable(context,evt.param2,defs.mineral)

	if mineral_index == 0 then 
		return 0
	else
		--记下最后一次交互的龙血矿index
		ScriptLib.SetGroupVariableValue(context, "lastID", mineral_index) 
	end
	return 0
end
function action_Gadget_State_Change(context, evt)

	if ScriptLib.GetGroupVariableValue(context, "puzzle_state") == 2 then
		return 0
	end

	local gadget_index = LF_IndexInTable(context,evt.param2,defs.branch_gadgets)

	--如果是branch装置。且是被点亮.
	if gadget_index ~= 0 and evt.param1 == 201 then
		--无论是不是正确的顺序，都要mark
		ScriptLib.MarkGroupLuaAction(context, "ActivityWinterCamp_4", "", {})

		local next_index = ScriptLib.GetGroupVariableValue(context,"next_index")

		--如果解谜已经开始
		if ScriptLib.GetGroupVariableValue(context,"puzzle_state") == 1 then
			--检查是不是正确顺序
			--[[if gadget_index ~= next_index then

				ScriptLib.PrintContextLog(context,"[WinterCampDevice] Wrong Branch Gadget Index. Puzzle Failed.")
				FaildProcess(context)
				return 0
			--如果是正确的交互顺序
			else]]
				--移除对应的龙血矿
				local index_toRemove = ScriptLib.GetGroupVariableValue(context, "lastID") 
				if index_toRemove ~= 0 then
					ScriptLib.RemoveEntityByConfigId(context, defs.group, EntityType.GADGET, defs.mineral[index_toRemove])
				end
				--这次被交互的是不是最后一个子机关
				if next_index == #defs.branch_gadgets then
					SuccessProcess(context)
					return 0
				end
				--不是的话继续
				next_index = next_index + 1
				ScriptLib.SetGroupVariableValue(context,"next_index", next_index)

			--end

		--如果解谜还没开始
		else
			--那必须最先交互的是一号机关，否则直接失败
			--[[if gadget_index ~= 1 then
					ScriptLib.PrintContextLog(context,"[WinterCampDevice] Wrong Branch Gadget Start Index. Puzzle Failed.")
					FaildProcess(context)
					return 0
			else]]
				--解谜开始
					ScriptLib.SetGroupVariableValue(context,"puzzle_state", 1)
					ScriptLib.SetGroupVariableValue(context,"next_index", 2)
					--移除对应的龙血矿
					local index_toRemove = ScriptLib.GetGroupVariableValue(context, "lastID") 
					if index_toRemove ~= 0 then
						ScriptLib.RemoveEntityByConfigId(context, defs.group, EntityType.GADGET, defs.mineral[index_toRemove])
					end
					--ScriptLib.InitTimeAxis(context,"WinterCamp_LimitTime",defs.limit_time,true)
					ScriptLib.PrintContextLog(context,"[WinterCampDevice] Puzzle Start. next_index@"..next_index)					
			--end
		end
	end

	return 0
end

function action_enter_OptimizRegion(context,evt)
	if defs.optimiz_region == nil then
		return 0
	end
	--检查Region的configId是否是优化圈
	if evt.param1 == defs.optimiz_region then
		ScriptLib.SetPlayerEyePointStream(context, evt.param1, evt.param1, true)
		ScriptLib.PrintContextLog(context, "[WinterCamp] Enter optimiz_region. Region_config_id@"..evt.param1 )
	end

	return 0
end

function action_leave_OptimizRegion(context,evt)
	if defs.optimiz_region == nil then
		return 0
	end
	--检查Region的configId是否是优化圈
	if evt.param1 == defs.optimiz_region then
		ScriptLib.ClearPlayerEyePoint(context, evt.param1)
		ScriptLib.PrintContextLog(context, "[WinterCamp] Leave optimiz_region. Region_config_id@"..evt.param1)		
	end
	return 0
end

--用于返回value在table中的key
function LF_IndexInTable(context,value,check_table)

	for i=1, #check_table do
		if check_table[i] == value then
			return i
		end
	end
	--如果没找到，返回0
	return 0
end

function action_On_TimeAxis(context, evt)
	--检查玩家是不是该带着SGV但没带（客机中途加入战斗的情况）
	if evt.source_name == "SGV_Checker" then
		LF_Check_AllPlayerSGV(context)
	end	
	--[[--暖源机关auth保持为主机
	local uid_list = ScriptLib.GetSceneUidList(context)
	if #uid_list ~= 0 then
		ScriptLib.ForceRefreshAuthorityByConfigId(context, defs.main_gadget[1], uid_list[1])
	end]]
	return 0
end

function LF_Check_AllPlayerSGV(context)
	--检查暖源状态
	if ScriptLib.GetGroupVariableValue(context,"puzzle_state") == 2 then 

		local uid_list = ScriptLib.GetSceneUidList(context)
		for k,v in pairs(uid_list) do 
			if ScriptLib.GetTeamServerGlobalValue(context, v, "SGV_WinterCamp_PlayerBuff") == 0 then
				ScriptLib.SetTeamServerGlobalValue(context, v, "SGV_WinterCamp_PlayerBuff", 1)
			end
		end

	end		
	return 0
end

function action_select_option(context, evt)
	--选项7是开挑战
	if evt.param2 == 7 then 
		ScriptLib.SetGroupVariableValue(context, "challenge", 1)
		ScriptLib.DelWorktopOptionByGroupId(context, defs.group, defs.challenge_gadget, 7)
		ScriptLib.SetGadgetStateByConfigId(context, defs.challenge_gadget, 201)
		--优化圈
		ScriptLib.AddExtraGroupSuite(context, defs.group, 2)
		--mark
		ScriptLib.MarkGroupLuaAction(context, "ActivityWinterCamp_3", "", {})
		--暖源状态下开挑战，上GV
		if ScriptLib.GetGroupVariableValue(context,"puzzle_state") == 2 then 
			local uid_list = ScriptLib.GetSceneUidList(context)
			for k,v in pairs(uid_list) do 
				ScriptLib.SetTeamServerGlobalValue(context, v, "SGV_WinterCamp_PlayerBuff", 1)
			end
			--用于检查中途加入的玩家
			ScriptLib.InitTimeAxis(context, "SGV_Checker", {3}, true)
		else
			local uid_list = ScriptLib.GetSceneUidList(context)
			for k,v in pairs(uid_list) do 
				ScriptLib.SetTeamServerGlobalValue(context, v, "SGV_WinterCamp_PlayerBuff", 0)
			end
			--处理暴风雪特效（如果configID已存在 会无事发生
			ScriptLib.CreateGadget(context, { config_id = defs.target_point } )
			ScriptLib.SetGadgetStateByConfigId(context, defs.target_point, 0 )
		end
	end
	return 0
end

function action_challenge_success(context, evt)
	ScriptLib.EndTimeAxis(context, "SGV_Checker")
	UpLoadActionLog_Result(context, 0)
	ScriptLib.DelWorktopOptionByGroupId(context, defs.group, defs.challenge_gadget, 7)
	ScriptLib.KillEntityByConfigId(context, { config_id = defs.challenge_gadget })
	--ScriptLib.SetGadgetStateByConfigId(context, defs.challenge_gadget, 201)
	ScriptLib.SetGroupVariableValue(context, "challenge", 0)
	--优化圈
	ScriptLib.RemoveExtraGroupSuite(context, defs.group, 2)
	--[[if defs.optimiz_region ~= nil then		
		ScriptLib.ClearPlayerEyePoint(context, defs.optimiz_region)
	end]]
	LF_ResetPlayerSGV(context)
	return 0
end

function action_challenge_fail(context, evt)
	ScriptLib.EndTimeAxis(context, "SGV_Checker")
	UpLoadActionLog_Result(context, 1)
	ScriptLib.KillMonsterTide(context, defs.group, 1)
	ScriptLib.SetGroupVariableValue(context, "challenge", 0)
	--优化圈
	ScriptLib.RemoveExtraGroupSuite(context, defs.group, 2)
	--ScriptLib.ClearPlayerEyePoint(context, defs.optimiz_region)
	ScriptLib.SetWorktopOptionsByGroupId(context, defs.group, defs.challenge_gadget, {7})
	ScriptLib.SetGadgetStateByConfigId(context, defs.challenge_gadget, 0)
	ScriptLib.SetGadgetStateByConfigId(context, defs.target_point, GadgetState.GearStop)
	LF_ResetPlayerSGV(context)
	return 0
end
--上报运营日志数据  s1286671
function UpLoadActionLog_Result(context, result)

	local log = {
		["result"] = result,--0 -成功 1-失败 （具体枚举和TD实现一致， 能区分成功or失败即可）
	}

	ScriptLib.MarkGroupLuaAction(context, "ActivityWinterCamp_1", "", log)
	ScriptLib.PrintContextLog(context, "[WinterCamp] UpLoadActionLog_Result: "..log["result"])
	return 0
end
function UpLoadActionLog_StateChange(context) --寒冷装置变为暖源状态时记录
	--	放空即可
	local log = {
	}

	ScriptLib.MarkGroupLuaAction(context, "ActivityWinterCamp_2", "", log)
	ScriptLib.PrintContextLog(context, "[WinterCamp] UpLoadActionLog_StateChange ")
	return 0
end
function LF_ResetPlayerSGV(context)
	local uid_list = ScriptLib.GetSceneUidList(context)
	for k,v in pairs(uid_list) do 
		ScriptLib.SetTeamServerGlobalValue(context, v, "SGV_WinterCamp_PlayerBuff", 0)
	end
	return 0
end
LF_Initialize_Group(triggers, suites)