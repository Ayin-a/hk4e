--[[local defs = {
	gadget_operator = xxx,
	group_id = xxx,
	gadget_prison_list = {1,2,3,4}
}--]]

local play_param = {
	prepare_time = 20,
	duration = 240,
	hunter_skill = {9013,9014,9017},
	prey_skill = {9015,9016,9018}
}

local Tri = {
	{ name = "gadget_create", config_id = 8000001, event = EventType.EVENT_GADGET_CREATE, source = "", condition = "", action = "action_gadget_create", trigger_count = 0},
	{ name = "select_option", config_id = 8000002, event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_select_option", trigger_count = 0 },
	{ name = "challenge_success", config_id = 8000003, event = EventType.EVENT_CHALLENGE_SUCCESS, source = "", condition = "", action = "action_challenge_success", trigger_count = 0},
	{ name = "challenge_fail", config_id = 8000004, event = EventType.EVENT_CHALLENGE_FAIL, source = "", condition = "", action = "action_challenge_fail", trigger_counter = 0},
	{ name = "variable_change", config_id = 8000005, event = EventType.EVENT_VARIABLE_CHANGE, source = "catch_sum", condition = "", action = "action_variable_change", trigger_count = 0, tag = "9012"},
	{ name = "time_axis_pass", config_id = 8000006, event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "", action = "action_time_axis_pass", trigger_count = 0},
	{ name = "enter_region", config_id = 8000007, event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_enter_region", trigger_count = 0, forbid_guest = false}
}

local Var = {
 	{  config_id=50000001,name = "catch_sum", value = 0, no_refresh = false}
}

function Initialize()
	for i,v in ipairs(Tri) do
		table.insert(triggers, v)
		table.insert(suites[1].triggers, v.name)
	end
	for i,v in ipairs(Var) do
		table.insert(variables, v)
	end
end
---------------------------------------
function action_gadget_create(context, evt)
	if evt.param1 == defs.gadget_operator then
		ScriptLib.PrintContextLog(context, "--------------- version 21 ---------------------")
		ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_id, evt.param1, {2902})
	end
	return 0
end

function action_select_option(context, evt)
	if evt.param1 == defs.gadget_operator and evt.param2 == 2902 then
		ScriptLib.KillEntityByConfigId(context, { group_id = defs.group_id, config_id = defs.gadget_operator, entity_type = EntityType.GADGET })
		LF_Start_Hide_And_Seek(context)
	end
	return 0
end

function action_challenge_success(context, evt)
	ScriptLib.PrintContextLog(context, "## HS_Log : challenge_success -> "..evt.param1)
	if evt.param1 == 9011 then
		LF_Stop_Hide_And_Seek(context, 1)
	end
	return 0
end

function action_challenge_fail(context, evt)
	ScriptLib.PrintContextLog(context, "## HS_Log : challenge_fail -> "..evt.param1)
	if evt.param1 == 9011 then
		LF_Stop_Hide_And_Seek(context, 2)
	end
	return 0
end

function action_variable_change(context, evt)
	if evt.param1 == evt.param2 + 1 then
		return 0
	else
		return -1
	end
end

function action_time_axis_pass(context, evt)
	if evt.source_name == "prepare" then
		LF_Start_Comp_Challenge(context)
	end
	return 0
end

function action_enter_region(context, evt)
	if evt.param1 ~= 471011 then
		return -1
	end
	local uid_list = ScriptLib.GetSceneUidList(context)
	if ScriptLib.GetRegionEntityCount(context, {region_eid = evt.source_eid, entity_type = EntityType.AVATAR}) == #uid_list then
		if 1 == ScriptLib.GetGroupTempValue(context, "in_prepare", {}) then
			LF_Prepare_Comp_Challenge(context)
			ScriptLib.SetGroupTempValue(context, "in_prepare", 0, {})
		end
	end
	return 0
end
---------------------------------------
function LF_Start_Hide_And_Seek(context)
	ScriptLib.PrintContextLog(context, "## HS_Log : LF_Start_Hide_And_Seek")
	ScriptLib.SetGroupTempValue(context, "in_prepare", 1, {})
	LF_Assign_Character_Card(context)
end

function LF_Stop_Hide_And_Seek(context, value)
	ScriptLib.PrintContextLog(context, "## HS_Log : LF_Stop_Hide_And_Seek")
	local uid_list = ScriptLib.GetSceneUidList(context)
	ScriptLib.SetPlayerGroupVisionType(context, {uid_list}, {1})
	-------
	if value == 1 then
		--hunter胜利
		ScriptLib.ShowTemplateReminder(context, 125, {0})
	elseif value == 2 then
		--prey胜利
		ScriptLib.ShowTemplateReminder(context, 126, {0})
	end
	ScriptLib.CreateGadget(context, {config_id = defs.gadget_operator})
	--玩法结束，恢复UI面板
	ScriptLib.SetPlayerInteractOption(context, "HideAndSeek_Stop")
	ScriptLib.RemoveExtraGroupSuite(context, 0,3)
end

function LF_Assign_Character_Card(context)
	ScriptLib.PrintContextLog(context, "## HS_Log : LF_Assign_Character_Card")
	--分配hunter人员
	local uid_list = ScriptLib.GetSceneUidList(context)
	math.randomseed(ScriptLib.GetServerTime(context))
	local choice = math.random(#uid_list)
	local hunter = uid_list[choice]
	ScriptLib.PrintContextLog(context, "## HS_Log : hunter_uid = "..hunter)
	ScriptLib.ShowTemplateReminder(context, 124, {choice})
	ScriptLib.SetGroupTempValue(context, "hunter", hunter, {})
	for i,v in ipairs(defs.gadget_prison_list) do
		if i == choice then
			ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, v, 0)
		else
			ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, v, 201)
		end
	end
	for i,v in ipairs(uid_list) do
		for m,n in ipairs(points) do
			if n.config_id == defs.trans_point_list[i] then
				ScriptLib.TransPlayerToPos(context, {uid_list={v}, pos=n.pos, radius=0, rot=n.rot})
			end
		end
	end
	LF_Bake_Random_Scene(context)
end

function LF_Prepare_Comp_Challenge(context)
	ScriptLib.PrintContextLog(context, "## HS_Log : LF_Prepare_Comp_Challenge")
	local uid_list = ScriptLib.GetSceneUidList(context)
	ScriptLib.SetPlayerGroupVisionType(context, {uid_list}, {0})
	ScriptLib.CreateFatherChallenge(context, 9011, 9011, play_param.prepare_time, {success=10,fail=10})
	ScriptLib.AttachChildChallenge(context,9011,9019,9019,{defs.group_id,10},{},{success=1,fail=1})
	ScriptLib.InitTimeAxis(context, "prepare", {play_param.prepare_time - 1}, false)
	ScriptLib.StartFatherChallenge(context, 9011)
	--玩法准备阶段，禁用小地图，禁用普攻与技能
	ScriptLib.SetPlayerInteractOption(context, "HideAndSeek_Prepare")
end

function LF_Start_Comp_Challenge(context)
	ScriptLib.PrintContextLog(context, "## HS_Log : LF_Start_Comp_Challenge")
	local uid_list = ScriptLib.GetSceneUidList(context)
	ScriptLib.StopChallenge(context, 9019, 1)
	ScriptLib.ModifyFatherChallengeProperty(context, 9011, FatherChallengeProperty.DURATION, play_param.duration)
	ScriptLib.AttachChildChallenge(context, 9011, 9012, 9012, {0,3,9012,#uid_list-1}, {},{success=10,fail=1})
	--解除hunter限制
	for i,v in ipairs(defs.gadget_prison_list) do
		ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, v, 201)
	end
	local hunter = ScriptLib.GetGroupTempValue(context, "hunter", {})
	ScriptLib.PrintContextLog(context, "## hunter_uid = "..hunter)
	for i,v in ipairs(uid_list) do
		ScriptLib.PrintContextLog(context, "## compare_uid = "..v)
		if v == hunter then
			for m,n in ipairs(play_param.hunter_skill) do
				ScriptLib.AttachChildChallenge(context,9011,n*math.pow(10,10)+v,n,{defs.group_id,10},{v},{success=1,fail=1})
			end
		else
			for m,n in ipairs(play_param.prey_skill) do
				ScriptLib.AttachChildChallenge(context,9011,n*math.pow(10,10)+v,n,{defs.group_id,10},{v},{success=1,fail=1})
			end
		end
	end
	--玩法开始，禁用小地图，还原技能面板
	ScriptLib.SetPlayerInteractOption(context, "HideAndSeek_Start")
end

function LF_Bake_Random_Scene(context)
	if #suites >= 3 then
		math.randomseed(ScriptLib.GetServerTime(context))
		for i,v in ipairs(suites[3].gadgets) do
			if math.random(100) > 50 then
				ScriptLib.CreateGadget(context, {config_id = v})
			end
		end
	end
end
---------------------------------------
local skill_info = {
	[1] = { name = "HideSeek_Skill_DisguiseRevealing", key = "Disguise_Forbid", radius = 3 },
	[2] = { name = "HideSeek_Skill_Hunting", key = "Play_Forbid", radius = 3 },
	[3] = { name = "HideSeek_Skill_Struggle_Succ", key = "Disguise_Forbid"}
}

function HideSeek_Skill_DisguiseRevealing(context)
	ScriptLib.PrintContextLog(context, "## HS_Log : HideSeek_Skill_DisguiseRevealing")
	local skill_name = "HideSeek_Skill_DisguiseRevealing"
	LF_Handle_Skill(context, skill_name)
	return 0
end

function HideSeek_Skill_Hunting(context)
	ScriptLib.PrintContextLog(context, "## HS_Log : HideSeek_Skill_Hunting")
	local skill_name = "HideSeek_Skill_Hunting"
	LF_Handle_Skill(context, skill_name)
	return 0
end

---------------------------------------
function LF_Handle_Skill(context, skill_name)
	ScriptLib.PrintContextLog(context, "## HS_Log : LF_Handle_Skill")
	ScriptLib.PrintContextLog(context, "## HS_Log : uid = "..context.uid)
	local hunter_eid = ScriptLib.GetAvatarEntityIdByUid(context, context.uid)
	ScriptLib.PrintContextLog(context, "## HS_Log : ueid ="..hunter_eid)
	local hunter_pos = ScriptLib.GetPosByEntityId(context, hunter_eid)
	local uid_list = ScriptLib.GetSceneUidList(context)
	for i,v in ipairs(uid_list) do
		ScriptLib.PrintContextLog(context, "## HS_Log : get uid_list to "..v)
		if v ~= context.uid then
			local prey_eid = ScriptLib.GetAvatarEntityIdByUid(context, v)
			local prey_pos = ScriptLib.GetPosByEntityId(context, prey_eid)
			local info_ = LF_Get_Skill_Info(context, skill_name)
			ScriptLib.PrintContextLog(context, "## HS_Log : radius = "..info_.radius.." | uid = "..v)
			if LF_Get_Distance(context, hunter_pos, prey_pos) <= info_.radius then
				local value_ = ScriptLib.GetTeamAbilityFloatValue(context, v, info_.key)
				ScriptLib.PrintContextLog(context, "## HS_Log : value_ = "..value_)
				if value_ == 1 then
					ScriptLib.AddTeamEntityGlobalFloatValue(context, {v}, info_.key, -1)
				end
				LF_Handle_Progress(context, skill_name, v)
			end
		end
	end
end

function LF_Get_Distance(context, pos1, pos2)
	local X = pos1.x - pos2.x
	local Y = pos1.y - pos2.y
	local Z = pos1.z - pos2.z
	ScriptLib.PrintContextLog(context, "## HS_Log : X = "..X.." | Y = "..Y.." | Z = "..Z)
	return math.sqrt(math.pow(X,2)+math.pow(Y,2)+math.pow(Z,2))
end

function LF_Get_Skill_Info(context, name)
	for i,v in ipairs(skill_info) do
		if v.name == name then
			ScriptLib.PrintContextLog(context, "## HS_Log : skill_name = "..name)
			return v
		end
	end
	return -1
end

function LF_Handle_Progress(context, skill_name, uid)
	ScriptLib.PrintContextLog(context, "## HS_Log : LF_Handle_Progress")
	ScriptLib.PrintContextLog(context, "## HS_Log : skill = "..skill_name.." | uid = "..uid)
	if skill_name == "HideSeek_Skill_Hunting" then
		if 0 == ScriptLib.GetTeamAbilityFloatValue(context, uid, "Play_Forbid") then
			ScriptLib.AddTeamEntityGlobalFloatValue(context, {uid}, "Play_Forbid", 1)
			ScriptLib.ChangeGroupVariableValue(context, "catch_sum", 1)
			local uid_list = ScriptLib.GetSceneUidList(context)
			local idx = 0
			for i,v in ipairs(uid_list) do
				if uid == v then
					idx = i
					break
				end
			end
			ScriptLib.PrintContextLog(context, "## HS_Log : idx = "..idx)
			ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_prison_list[idx], 0)
			ScriptLib.TransPlayerToPos(context, {uid_list={uid},pos=gadgets[defs.gadget_prison_list[idx]].pos,radius=0,rot=gadgets[defs.gadget_prison_list[idx]].rot})
		end
	end
end
----------------------------------------
Initialize()