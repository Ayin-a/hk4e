--- ServerUploadTool Save to [/root/env/data/lua/common/V2_8]  ---
--[[======================================
||	filename:	CrowTheatre_Whodunit
||	owner: 		weiwei.sun
||	description: 	夜鸦剧场推理模式的流程逻辑。 
||	LogName:	## [CrowTheatre]
||	Protection:	
=======================================]]
--[[
	每个Group只有一段演出要看。
	演出结束后玩家根据推理选择交互一个正确的雕像，
	选错了则全体闪一下红光，随后位置重置，演出需要玩家重播。
	选对了则全体闪一下蓝光，刷宝箱。

local	defs = 
{
	group_id = ,
	--起始操作台configID
	start_operator = ,
	--所有演员物件。用于统一设置状态
	actor_list = 
	{
	
	},
	--行动序列
	actions = 
	{
   [1] = { config_id = 雕像configID1, reminder_id = xxx, point_array = xxx, point_id_list = xxx, duration = xx},
	},
	--断案阶段加载哪些suite。用于放置操作台和聚光灯
	question_suits =  
	{
   
	},
	--真正的凶手对应哪个操作台config_id
	answer = ,
	--玩法范围，主机出圈则重置
	play_region = ,

}

]]
--reminder广播范围
local reminder_radius = 30
--成功失败物件表现等待时间
local ani_wait_time = 2


local extraTriggers={
	{ config_id = 8000001, name = "Group_Load", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_Group_Load", trigger_count = 0 },
  { config_id = 8000002, name = "TimeAxis_Pass", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "", action = "action_TimeAxis_Pass", trigger_count = 0 },
  { config_id = 8000003, name = "Starter_Option", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_Starter_Option", trigger_count = 0, forbid_guest = true},
  { config_id = 8000004, name = "Leave_PlayRegion", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_Leave_PlayRegion", trigger_count = 0, forbid_guest = true },
  { config_id = 8000005, name = "Select_Suspect", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_Select_Suspect", trigger_count = 0 },
}

function LF_Initialize_Group(triggers, suites)
	for i=1,#extraTriggers do
		table.insert(triggers, extraTriggers[i])
		table.insert(suites[init_config.suite].triggers,extraTriggers[i].name)

	end
	--状态标志位 0- 等待开启 1- 正在表演 2- 等待选择 3-完成
	table.insert(variables, { config_id = 50000001, name = "theatre_state", value = 0 })
end

function action_Group_Load(context, evt)
	local state = ScriptLib.GetGroupVariableValue(context, "theatre_state")
	ScriptLib.PrintContextLog(context, "[CrowTheatre] Group Load. state@"..state)
	--初始化动作序号
	ScriptLib.SetGroupTempValue(context, "action_index", 0, {})
	if 3 == theatre_state then 
		ScriptLib.DelWorktopOptionByGroupId(context, 0, defs.start_operator, 401)
	end
	return 0
end

function action_Starter_Option(context, evt)
	if defs.start_operator ~= evt.param1 then 
		return 0
	end
	if 0 == ScriptLib.GetGroupVariableValue(context, "theatre_state") then 
		--状态标志
		ScriptLib.SetGroupVariableValue(context, "theatre_state", 1)
		ScriptLib.DelWorktopOptionByGroupId(context, 0, defs.start_operator, 401)
		LF_SequenceAction(context)

	end
	return 0
end

function LF_SequenceAction(context)

	--先重置掉上一步的演员物件状态
	LF_SetAllActorsState(context, 0)

	ScriptLib.ChangeGroupTempValue(context, "action_index", 1, {})
	local cur_index = ScriptLib.GetGroupTempValue(context, "action_index", {})
	--是否已结束
	if #defs.actions < cur_index then
		ScriptLib.PrintContextLog(context, "[CrowTheatre] Sequence actions finished.")
		--进入断案阶段
		LF_SetSuspects(context)
		return 0
	end

	--这一步总共要干啥
	local step = defs.actions[cur_index]
	ScriptLib.PrintContextLog(context, "[CrowTheatre] Sequence actions Set. Step_index@"..cur_index.." cfg_id@"..step.config_id.." rmd_id@"..step.reminder_id.." point_array@"..step.point_array)
	--这一步是否是一个有主语的动作
	if 0 ~= step.config_id then

		--如果有台词，以物件为中心，范围内ShowReminder
		if 0 ~= step.reminder_id then
			
			local pos = LF_GetEntityPosition(context, gadgets, step.config_id)
			ScriptLib.PrintContextLog(context, "[CrowTheatre] LF_SequenceAction: Try show reminder@"..step.reminder_id.." pos@"..pos.x.." "..pos.y.." "..pos.z)
			if 0 ~= pos then 
				ScriptLib.ShowReminderRadius(context, step.reminder_id, pos, reminder_radius)
			end
			--切GadgetState到203状态 发光+气泡
			ScriptLib.PrintContextLog(context, "[CrowTheatre] LF_SequenceAction: Try Set GadgetState. ConfigId@"..step.config_id)
			ScriptLib.SetGadgetStateByConfigId(context, step.config_id, 203)

			--是否同时需要移动
			if  0 ~= step.point_array then
				ScriptLib.SetPlatformPointArray(context, step.config_id, step.point_array, step.point_id_list, {route_type = 0, turn_mode = false, record_mode = 0})
			end
		else
			--没有台词，仅移动
			if  0 ~= step.point_array then
				ScriptLib.SetPlatformPointArray(context, step.config_id, step.point_array, step.point_id_list, {route_type = 0, turn_mode = false, record_mode = 0})
				--切GadgetState到204状态 发光+无气泡
				ScriptLib.SetGadgetStateByConfigId(context, step.config_id, 204)
			end
		end
	else

		--无主语动作，以区域中心为中心，范围内ShowReminder
		local pos = LF_GetEntityPosition(context, regions, defs.play_region)
		if 0 ~= pos then 
			ScriptLib.ShowReminderRadius(context, step.reminder_id, pos, reminder_radius)
		end

	end

	--这一步是否是一个瞬时动作
	if 0 ~= step.duration then
		local axis_key = "duration"..cur_index
		ScriptLib.InitTimeAxis(context, axis_key, { math.floor(step.duration) }, false)
		ScriptLib.PrintContextLog(context, "[CrowTheatre] Actions has duration. InitTimeAxis@".. axis_key.." with duration@".. math.floor(step.duration))
	--不用等的话直接走下一步
	else
		LF_SequenceAction(context)
	end

	return 0
end

--设置断案阶段
function LF_SetSuspects(context)
	--状态标志
	ScriptLib.SetGroupVariableValue(context, "theatre_state", 2)
	--加载suite
	for k, v in pairs(defs.question_suits) do
		ScriptLib.AddExtraGroupSuite(context, base_info.group_id, v)
	end
	return 0
end

function action_Select_Suspect(context, evt)

	if 2 ~= ScriptLib.GetGroupVariableValue(context, "theatre_state") then
		return 0		
	end
	ScriptLib.PrintContextLog(context, "[CrowTheatre] Selected Suspect. config_id@"..evt.param1)

	if defs.answer == evt.param1 then 
		LF_Success(context)
		return 0
	else
		LF_Fail(context)
	end
	return 0
end

function LF_Success(context)
	--引用这个re（和谐）quire的Group监听这个GroupVar来自行处理后续逻辑。
	ScriptLib.SetGroupVariableValue(context, "theatre_state", 3)
	ScriptLib.PrintContextLog(context, "[CrowTheatre] LF_Success")
	--物件做动画表现
	LF_SetAllActorsState(context, 903)

	--移除操作台suite
	for k, v in pairs(defs.question_suits) do
		ScriptLib.RemoveExtraGroupSuite(context, base_info.group_id, v)
	end

	ScriptLib.DelWorktopOptionByGroupId(context, 0, defs.start_operator, 401)
	--加载EndSuite
	--ScriptLib.GoToGroupSuite(context, base_info.group_id, init_config.end_suite)
	return 0
end

function LF_Fail(context)
	--切状态标志为等待开始
	ScriptLib.SetGroupVariableValue(context, "theatre_state", 0)
	--物件做动画表现
	LF_SetAllActorsState(context, 902)
	--延时调用LF_ResetPlay
	ScriptLib.InitTimeAxis(context, "ani_wait", { ani_wait_time }, false)
	return 0
end

--重置玩法物件位置
function LF_ResetPlay(context)
	ScriptLib.RefreshGroup(context, { group_id = 0, suite = 1 })
	ScriptLib.SetGroupVariableValue(context, "theatre_state", 0)
	--初始化动作序号
	ScriptLib.SetGroupTempValue(context, "action_index", 0, {})
	ScriptLib.PrintContextLog(context, "[CrowTheatre] LF_ResetPlay done.")
	return 0
end

function action_TimeAxis_Pass(context, evt)
	local theatre_state = ScriptLib.GetGroupVariableValue(context, "theatre_state") 
	ScriptLib.PrintContextLog(context, "[CrowTheatre] TimeAxis_Pass. source_name@".. evt.source_name.." theatre_state@"..theatre_state)

	if 1 == theatre_state then
		if "duration" == (string.sub(evt.source_name,1,8)) then 
			ScriptLib.PrintContextLog(context, "[CrowTheatre] LF_SequenceAction")
			LF_SequenceAction(context)
			return 0
		end
	else
		if "ani_wait" == evt.source_name then 
			LF_ResetPlay(context)
			return 0
		end
	end
	return 0
end

function action_Leave_PlayRegion(context, evt)
	if defs.play_region ~= evt.param1 then
		return 0
	end
	local theatre_state = ScriptLib.GetGroupVariableValue(context, "theatre_state")
	if 0 ~= theatre_state and 3 ~= theatre_state then
		ScriptLib.PrintContextLog(context, "[CrowTheatre] Host leave region. Execute LF_Fail.")
		LF_Fail(context)
	end
	return 0
end

function LF_GetEntityPosition(context, type_table, config_id)
	local position = {0, 0, 0}
	for k,v in pairs(type_table) do
		if k == config_id then
			position = v.pos
			return position
		end
	end
	return 0
end

--演员物件统一切到指定状态
function LF_SetAllActorsState(context, target_state)
	for i, v in ipairs(defs.actor_list) do
		ScriptLib.SetGadgetStateByConfigId(context, v, target_state)
	end
	return 0
end

LF_Initialize_Group(triggers, suites)