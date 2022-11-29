local triggers_lib = {
	["Group_Load"] = { config_id = 8000001, name = "Group_Load", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_group_load", trigger_count = 0},
	["Load_Protect"] = { config_id = 8000002, name = "Load_Protect", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_load_protect", trigger_count = 0},
	["Gadget_Create"] = { config_id = 8000003, name = "Gadget_Create", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "", action = "action_gadget_create", trigger_count = 0},
	["Group_Refresh"] = { config_id = 8000004, name = "Group_Refresh", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_group_refresh", trigger_count = 0},
	["Blossom_Chest_Die"] = { config_id = 8000005, name = "Blossom_Chest_Die", event = EventType.EVENT_BLOSSOM_CHEST_DIE, source = "", condition = "", action = "action_blossom_chest_die", trigger_count = 0},
	["Select_Option"] = { config_id = 8000006, name = "Select_Option", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_select_option", trigger_count = 0},
	["Blossom_Progress_Finish"] = { config_id = 8000007, name = "Blossom_Progress_Finish", event = EventType.EVENT_BLOSSOM_PROGRESS_FINISH, source = "", condition = "", action = "action_blossom_progress_finish", trigger_count = 0},
	["Challenge_Success"] = { config_id = 8000008, name = "Challenge_Success", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "", condition = "", action = "action_challenge_success", trigger_count = 0},
	["Challenge_Fail"] = { config_id = 8000009, name = "Challenge_Fail", event = EventType.EVENT_CHALLENGE_FAIL, source = "", condition = "", action = "action_challenge_fail", trigger_count = 0},
	["Any_Monster_Die_1"] = { config_id = 8000010, name = "Any_Monster_Die_1", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_any_monster_die_1", trigger_count = 0},
	["Any_Monster_Die_2"] = { config_id = 8000011, name = "Any_Monster_Die_2", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_any_monster_die_2", trigger_count = 0},
	["Any_Monster_Die_3"] = { config_id = 8000012, name = "Any_Monster_Die_3", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_any_monster_die_3", trigger_count = 0},
	["Any_Gadget_Die"] = { config_id = 8000013, name = "Any_Gadget_Die", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_any_gadget_die", trigger_count = 0 }
}

local gid = defs.group_id or 0
--雪山营地A
function Initialize_Group()
	for k,v in pairs(triggers_lib) do
		table.insert(triggers, v)
	end
	for i=1,6 do
		if i == 1 then
			table.insert(suites[i].triggers, "Group_Load")
		elseif i == 2 then
			table.insert(suites[i].triggers, "Load_Protect")
			table.insert(suites[i].triggers, "Gadget_Create")
			table.insert(suites[i].triggers, "Group_Refresh")
			table.insert(suites[i].triggers, "Blossom_Chest_Die")
			table.insert(suites[i].triggers, "Select_Option")
			table.insert(suites[i].triggers, "Blossom_Progress_Finish")
			table.insert(suites[i].triggers, "Challenge_Success")
			table.insert(suites[i].triggers, "Challenge_Fail")
		elseif i == 3 then
			table.insert(suites[i].triggers, "Any_Monster_Die_1")
		elseif i == 4 then
			table.insert(suites[i].triggers, "Any_Gadget_Die")
			table.insert(suites[i].triggers, "Gadget_Create")
		elseif i == 5 then
			table.insert(suites[i].triggers, "Any_Monster_Die_2")
		elseif i == 6 then
			table.insert(suites[i].triggers, "Any_Monster_Die_3")
		end
	end
end

Initialize_Group()
----------------------------------------------
--[[
local defs = {
	operator = 431009,
	blossom_chest = 431010,
	ice_storm = 431011,
	gadget_list = {
		{s = 431015, t = 431012},
		{s = 431016, t = 431013},
		{s = 431017, t = 431014}
	},
	reminder_pos = {x=1480,y=268,z=-736},
	challenge = {
		{id = 58, weight = 40, temp_r = 110 },
		{id = 58, weight = 40, temp_r = 110 },
		{id = 58, weight = 40, temp_r = 110 }
	}
}
--]]

function LF_Active_Challenge(context)
	local max = 0
	for i,v in ipairs(defs.challenge) do
		max = max + v.weight
	end
	math.randomseed(ScriptLib.GetServerTime(context))
	local ran = math.random(max)
	for i,v in ipairs(defs.challenge) do
		ran = ran - v.weight
		if ran <= 0 then
			local sum = #suites[3].monsters + #suites[5].monsters + #suites[6].monsters
			ScriptLib.ActiveChallenge(context, 1, v.id, 0, sum, 0, 0)
			ScriptLib.ShowTemplateReminder(context, v.temp_r, {0,0})
			break
		end
	end
end

---------------------------------------------
function action_group_load(context, evt)
	ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 2, exclude_prev = true })
	return 0
end

function action_load_protect(context, evt)
	ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 2, exclude_prev = true })
	return 0
end

function action_gadget_create(context, evt)
	--创建操作台
	if defs.operator == evt.param1 then
		if 0 == ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
			ScriptLib.SetWorktopOptionsByGroupId(context, 0, evt.param1, {37})
			ScriptLib.RefreshBlossomDropRewardByGroupId(context, 0)
		end
	elseif defs.ice_storm == evt.param1 then
		ScriptLib.ShowReminderRadius(context, 400010, defs.reminder_pos, 50)
	end
	return 0
end

function action_group_refresh(context, evt)
	ScriptLib.CreateGadget(context, { config_id = defs.operator })
	ScriptLib.SetBlossomScheduleStateByGroupId(context, 0, 1)
	ScriptLib.RefreshBlossomDropRewardByGroupId(context, 0)
	return 0
end

function action_blossom_chest_die(context, evt)
	if evt.param1 == defs.blossom_chest then
		ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 2, exclude_prev = true })
	end
	return 0
end

function action_select_option(context, evt)
	if evt.param1 == defs.operator and evt.param2 == 37 then
		LF_Active_Challenge(context)
		ScriptLib.AddExtraGroupSuite(context, 0, 3)
		ScriptLib.AddExtraGroupSuite(context, 0, 4)
		ScriptLib.DelWorktopOptionByGroupId(context, 0, defs.operator, 37)
		ScriptLib.SetGadgetStateByConfigId(context, defs.operator, GadgetState.GearStart)
		ScriptLib.SetBlossomScheduleStateByGroupId(context, 0, 2)
		ScriptLib.RefreshBlossomDropRewardByGroupId(context, 0)
	end
	return 0
end

function action_blossom_progress_finish(context, evt)
	ScriptLib.CreateBlossomChestByGroupId(context, 0, defs.blossom_chest)
	ScriptLib.SetBlossomScheduleStateByGroupId(context, 0, 3)
	ScriptLib.SetGroupVariableValue(context, "GroupCompletion", 1)
	return 0
end

function action_challenge_success(context, evt)
	for i,v in ipairs(defs.gadget_list) do
		ScriptLib.RemoveEntityByConfigId(context, 0, EntityType.GADGET, v.s)
	end
	ScriptLib.AddBlossomScheduleProgressByGroupId(context, 0)
	return 0
end

function action_challenge_fail(context, evt)
	ScriptLib.RefreshGroup(context, { group_id = 0, suite = 2 })
	return 0
end

function action_any_monster_die_1(context, evt)
		ScriptLib.PrintContextLog(context, "## monster_die_1")
	if ScriptLib.GetGroupMonsterCountByGroupId(context, gid) == 0 then
		ScriptLib.RemoveExtraGroupSuite(context, 0, 3)
		ScriptLib.AddExtraGroupSuite(context, 0, 5)
		ScriptLib.ShowReminderRadius(context, 400002, defs.reminder_pos, 50)
	end
	return 0
end

function action_any_monster_die_2(context, evt)
		ScriptLib.PrintContextLog(context, "## monster_die_2")
	if ScriptLib.GetGroupMonsterCountByGroupId(context, gid) == 0 then
		ScriptLib.RemoveExtraGroupSuite(context, 0, 5)
		ScriptLib.AddExtraGroupSuite(context, 0, 6)
		ScriptLib.ShowReminderRadius(context, 400003, defs.reminder_pos, 50)
	end
	return 0
end

function action_any_monster_die_3(context, evt)
		ScriptLib.PrintContextLog(context, "## monster_die_3")
	if ScriptLib.GetGroupMonsterCountByGroupId(context, gid) == 0 then
		ScriptLib.SetGadgetStateByConfigId(context, defs.ice_storm, GadgetState.GearStop)
		ScriptLib.KillEntityByConfigId(context, { config_id = 431011 })
		ScriptLib.RemoveExtraGroupSuite(context, 0, 6)
	end
	return 0
end

function action_any_gadget_die(context, evt)
	for i,v in ipairs(defs.gadget_list) do
		if evt.param1 == v.s then
			ScriptLib.SetGadgetStateByConfigId(context, v.t, GadgetState.Default)
			ScriptLib.ChangeGroupVariableValue(context, "remainingHeat", -1)
		end
	end
	return 0
end