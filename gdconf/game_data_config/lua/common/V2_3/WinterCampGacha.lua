--[[
	2.3雪山活动 盲盒雪堆

]]
--[[
local defs = {
	--挑战ID
	challenge_id = ,

	--挑战的region configID
	region_id = ,

	--挖雪堆目标数
	target_count = 10,

}
]]

local extraTriggers={
  { config_id = 8000001,name = "Enter_Region", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_enter_region", trigger_count = 0 },
  --挑战计数trigger
  { config_id = 8000002, name = "Variable_Change", event = EventType.EVENT_VARIABLE_CHANGE, source = "saved_progress", condition = "", action = "", trigger_count = 0 ,tag = "1000"},
 
  { config_id = 8000003,name = "Leave_Region", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_leave_region", trigger_count = 0 },
  { config_id = 8000009, name = "Group_Will_Unload", event = EventType.EVENT_GROUP_WILL_UNLOAD, source = "", condition = "", action = "action_Group_Will_Unload", trigger_count = 0 },

  { config_id = 8000004,name = "Challenge_Success", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "", condition = "", action = "action_challenge_success", trigger_count = 0 },
  --处理意外Fail的情况,重置标志
  { config_id = 8000005,name = "Challenge_Fail", event = EventType.EVENT_CHALLENGE_FAIL, source = "", condition = "", action = "action_challenge_fail", trigger_count = 0 },

  { config_id = 8000006,name = "Challenge_Pause", event = EventType.EVENT_CHALLENGE_PAUSE, source = "", condition = "", action = "action_challenge_pause", trigger_count = 0 },
  --{ config_id = 8000007, name = "TimeAxis_Event", event= EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "", action = "action_time_axis_pass", trigger_count = 0 },
  { config_id = 8000008, name = "Enter_Tutorial_Region", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_enter_TutorialRegion", trigger_count = 0}
}

function LF_Initialize_Group(triggers, suites)
	for i=1,#extraTriggers do
		table.insert(triggers, extraTriggers[i])
		table.insert(suites[init_config.suite].triggers,extraTriggers[i].name)
	end
	--进度保存
	table.insert(variables,{ config_id=50000001,name = "saved_progress", value = 0, no_refresh =true})
	-- 0-未完成 1-进行中 2-已完成
	table.insert(variables,{ config_id=50000002,name = "challenge_state", value = 0, no_refresh =true})

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
    local havePlayed  = ScriptLib.GetExhibitionAccumulableData(context, ownerUid, 10901103)

    if 0 == havePlayed then
        ScriptLib.ShowClientTutorial(context, 835, {ownerUid})
        ScriptLib.AddExhibitionAccumulableData(context,ownerUid, "WinterCamp_Gacha_HavePlayed", 1)
    end

    return 0
end
function action_Group_Will_Unload(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "challenge_state") == 1 then 
		ScriptLib.SetGroupVariableValue(context, "challenge_state", 0)
		ScriptLib.SetGroupTempValue(context, "temp_start", 0, {})
	end
	return 0
end
function action_enter_region(context, evt)
	if evt.param1 ~= defs.region_id then 
		return 0
	end

	LF_TryStartChallenge(context)
	return 0
end

function action_challenge_pause(context, evt)

	ScriptLib.PrintContextLog(context,"[WinterCampGacha] Challenge Paused.")

	ScriptLib.SetGroupVariableValue(context, "challenge_state", 0)
	ScriptLib.SetGroupTempValue(context, "temp_start", 0, {})

	return 0
end

function action_challenge_fail(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "challenge_state") == 1 then 
		ScriptLib.PrintContextLog(context,"[WinterCampGacha] #WARN# Challenge Failed, not really expected in this activiy.")
		ScriptLib.SetGroupVariableValue(context, "challenge_state", 0)
		ScriptLib.SetGroupTempValue(context, "temp_start", 0, {})
	end
	return 0
end

function action_leave_region (context, evt)
	if evt.param1 ~= defs.region_id then 
		return 0
	end

	if ScriptLib.GetGroupVariableValue(context, "challenge_state") == 1 then

		ScriptLib.PrintContextLog(context,"[WinterCampGacha] Leave Region, Pause Challenge.")

		ScriptLib.SetGroupVariableValue(context, "challenge_state", 0)
		ScriptLib.SetGroupTempValue(context, "temp_start", 0, {})

		ScriptLib.PauseChallenge(context, 1)

	end
	return 0
end

function action_challenge_success(context, evt)

	ScriptLib.PrintContextLog(context,"[WinterCampGacha] Challenge Done.")

	ScriptLib.SetGroupVariableValue(context, "challenge_state", 2)
	ScriptLib.SetGroupTempValue(context, "temp_start", 3, {})

	return 0
end

--圈外打雪堆 直接拉起挑战（tempStart）， 5秒没进圈、没接着打雪堆->挑战暂离(9.22迭代：出圈挑战不退出，不调用这个了)
function StartChallengeOutOfRegion(context)

	local temp_start = ScriptLib.GetGroupTempValue(context, "temp_start",{})

	ScriptLib.PrintContextLog(context,"[WinterCampGacha] Start Challenge OutOfRegion: temp_start@".. temp_start)

	if temp_start == 0 then 

		local start_process = ScriptLib.GetGroupVariableValue(context, "saved_progress")
		--参数1： event_type所在枚举序号； 参数2： trigger_tag；参数3： 次数；参数4：Bool，次数达成是否计为成功；参数5：初始次数值
		ScriptLib.StartChallenge(context, 1, defs.challenge_id, {3, 1000, defs.target_count, 1 , start_process})

		ScriptLib.SetGroupVariableValue(context, "challenge_state", 1)
		--tempStart的状态标记 
		-- 0-圈外，可触发tempStart。 1-触发了tempStart但未进圈 2-在圈里，不触发tempStart 3- 挑战已完成，不触发tempStart
		ScriptLib.SetGroupTempValue(context, "temp_start", 1, {})
		
		--起时间轴
		ScriptLib.InitTimeAxis(context, "temp_start_life", {6}, false)

	elseif temp_start == 1 then 
		--续命
		ScriptLib.InitTimeAxis(context, "temp_start_life", {6}, false)

	end

	return 0
end
function LF_TryStartChallenge(context)

	ScriptLib.SetGroupTempValue(context, "temp_start", 2, {})

	if ScriptLib.GetGroupVariableValue(context, "challenge_state") == 0 then 
		local start_process = ScriptLib.GetGroupVariableValue(context, "saved_progress")
		--参数1： event_type所在枚举序号； 参数2： trigger_tag；参数3： 次数；参数4：Bool，次数达成是否计为成功；参数5：初始次数值
		ScriptLib.StartChallenge(context, 1, defs.challenge_id, {3, 1000, defs.target_count, 1 , start_process})

		ScriptLib.SetGroupVariableValue(context, "challenge_state", 1)
		
	end

	return 0
end

--[[function action_time_axis_pass(context, evt)

	if ScriptLib.GetGroupTempValue(context, "temp_start",{}) == 1 then 

		ScriptLib.PauseChallenge(context, 1)

		ScriptLib.SetGroupVariableValue(context, "challenge_state", 0)

		ScriptLib.SetGroupTempValue(context, "temp_start", 0, {})

	end

	return 0
end
]]
function GadgetCall_SnowPile_Interact(context)

	--StartChallengeOutOfRegion(context)
	LF_TryStartChallenge(context)
	
 	local configId = ScriptLib.GetGadgetConfigId(context, {gadget_eid = context.source_entity_id})
	--向服务器请求本次雪堆结果 1 刷怪，0掉落，-1有错误
	local result = ScriptLib.WinterCampSnowDriftInteract(context, configId)

	ScriptLib.PrintContextLog(context,"[WinterCampGacha] Get result form server: result@".. result)

	if result == 1 then 

		local tmp =  GetMonsterSuit(context,configId)

		ScriptLib.ChangeGroupVariableValue(context, "saved_progress", 1)

		ScriptLib.AddExtraGroupSuite(context, defs.group_id,tmp)
		--杀死雪堆
		ScriptLib.KillGroupEntity(context, { group_id = defs.group_id, gadgets = {configId} })

		ScriptLib.PrintContextLog(context,"[WinterCampGacha] Add Monster suitID@".. tmp.." GroupID@"..defs.group_id)
		return 0

	elseif result == 0 then
		
		ScriptLib.ChangeGroupVariableValue(context, "saved_progress", 1)
		--杀死雪堆
		ScriptLib.KillGroupEntity(context, { group_id = defs.group_id, gadgets = {configId} })

		ScriptLib.PrintContextLog(context,"[WinterCampGacha] Get a Reward.")
		return 0

	elseif result == -1 then
		ScriptLib.PrintContextLog(context,"[WinterCampGacha] #WRONG# SnowDrift Result Get -1 . Please Check Activity State!")
		--如果活动状态异常，把雪堆物件状态设回0去
		ScriptLib.SetGadgetStateByConfigId(context, configId, 0)

		return 0

	else
		ScriptLib.PrintContextLog(context,"[WinterCampGacha] #WRONG# SnowDrift Interact Get Unkown Result!!!!")
		--如果活动状态异常，把雪堆物件状态设回0去
		ScriptLib.SetGadgetStateByConfigId(context, configId, 0)
		return 0

	end
	return -1
end

--当雪堆该刷怪时，刷哪个Suit
	--雪堆1 对应suite2 雪堆2 对应suite3 以此类推
function GetMonsterSuit(context, cfg_id)
	local tmp = 0
	for k,v in ipairs(suites[1].gadgets) do 
		if cfg_id == v then
			tmp = k+1
			
			return tmp 
		end
	end
	return 0

end

LF_Initialize_Group(triggers, suites)
