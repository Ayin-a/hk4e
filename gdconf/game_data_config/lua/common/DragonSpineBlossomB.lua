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
	["Platform_Reach_Point"] = { config_id = 8000013, name = "Platform_Reach_Point", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "", action = "action_platform_reach_point", trigger_count = 0 },
	["Timer_Event"] = { config_id = 8000014, name ="Timer_Event", event = EventType.EVENT_TIMER_EVENT, source = "timer", condition = "", action = "action_timer_event", trigger_count = 0 }
}

local gid = defs.group_id or 0
local interval = defs.timer or 15
--雪山营地B
function Initialize_Group()
	table.insert(variables, {config_id=54000001,name = "wave", value = 0})
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
			table.insert(suites[i].triggers, "Platform_Reach_Point")
			table.insert(suites[i].triggers, "Timer_Event")
		elseif i == 3 then
			table.insert(suites[i].triggers, "Any_Monster_Die_1")
		elseif i == 4 then
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
	operator = 422010,
	blossom_chest = 422011,
	platform = 422013
	ice_storm = 422012,
	route_info = {
		{route_id = 300800099, point_id = 4, gadget = 422009},
		{route_id = 300800099, point_id = 6, gagdet = 422033},
	},
	final_info = {route_id = 300800100, point_id = 2},
	seelie_base = 422014
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
	--ScriptLib.PrintContextLog(context, "## random = "..ran)
	for i,v in ipairs(defs.challenge) do
		ran = ran - v.weight
		if ran <= 0 then
			local sum = #suites[3].monsters + #suites[5].monsters + #suites[6].monsters
			ScriptLib.ActiveChallenge(context, 1, v.id, 0, sum, 0, 0)
			ScriptLib.ShowTemplateReminder(context, v.temp_r, {0,0})
			--ScriptLib.PrintContextLog(context, "## i = "..i)
			break
		end
	end
end

---------------------------------------------
function action_group_load(context, evt)
	--ScriptLib.PrintLog("====================== faq 5 ===========================")
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

function action_load_protect(context, evt)
	ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 2, exclude_prev = true })
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
		ScriptLib.SetPlatformRouteId(context, defs.platform, defs.route_info[1].route_id)
		ScriptLib.StartPlatform(context, defs.platform)
		ScriptLib.SetBlossomScheduleStateByGroupId(context, 0, 2)
		ScriptLib.RefreshBlossomDropRewardByGroupId(context, 0)
		ScriptLib.SetGroupVariableValue(context, "wave", 1)
		ScriptLib.CreateGroupTimerEvent(context, ScriptLib.GetContextGroupId(context), "timer", interval)
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
	ScriptLib.AddBlossomScheduleProgressByGroupId(context, 0)
	return 0
end

function action_challenge_fail(context, evt)
	ScriptLib.CancelGroupTimerEvent(context, ScriptLib.GetContextGroupId(context), "timer")
	ScriptLib.RefreshGroup(context, { group_id = 0, suite = 2 })
	return 0
end

function action_any_monster_die_1(context, evt)
	if ScriptLib.GetGroupMonsterCountByGroupId(context, gid) == 0 then
		ScriptLib.RemoveExtraGroupSuite(context, 0, 3)
		ScriptLib.AddExtraGroupSuite(context, 0, 5)
		ScriptLib.ShowReminderRadius(context, 400002, defs.reminder_pos, 50)
		ScriptLib.SetPlatformRouteId(context, defs.platform, defs.route_info[2].route_id)
		ScriptLib.StartPlatform(context, defs.platform)
		ScriptLib.SetGroupVariableValue(context, "wave", 2)
	end
	return 0
end

function action_any_monster_die_2(context, evt)
	if ScriptLib.GetGroupMonsterCountByGroupId(context, gid) == 0 then
		ScriptLib.RemoveExtraGroupSuite(context, 0, 5)
		ScriptLib.AddExtraGroupSuite(context, 0, 6)
		ScriptLib.ShowReminderRadius(context, 400003, defs.reminder_pos, 50)
		ScriptLib.SetPlatformRouteId(context, defs.platform, defs.route_info[3].route_id)
		ScriptLib.StartPlatform(context, defs.platform)
		ScriptLib.SetGroupVariableValue(context, "wave", 3)
	end
	return 0
end

function action_any_monster_die_3(context, evt)
	if ScriptLib.GetGroupMonsterCountByGroupId(context, gid) == 0 then
		ScriptLib.SetPlatformRouteId(context, defs.platform, defs.final_info.route_id)
		ScriptLib.StartPlatform(context, defs.platform)
		ScriptLib.SetGadgetStateByConfigId(context, defs.ice_storm, GadgetState.GearStop)
		ScriptLib.KillEntityByConfigId(context, { config_id = defs.ice_storm })
	end
	return 0
end

function action_platform_reach_point(context, evt)
	if evt.param1 == defs.platform then
		if evt.param2 == defs.final_info.route_id and evt.param3 == defs.final_info.point_id then
			ScriptLib.SetGadgetStateByConfigId(context, defs.seelie_base, GadgetState.GearStart)
			ScriptLib.CancelGroupTimerEvent(context, ScriptLib.GetContextGroupId(context), "timer")
			ScriptLib.StopPlatform(context, defs.platform)
			ScriptLib.KillEntityByConfigId(context, { config_id = defs.platform })
			return 0
		end
		for i,v in ipairs(defs.route_info) do
			local wave = ScriptLib.GetGroupVariableValue(context, "wave")
			if evt.param2 == v.route_id and evt.param3 == v.point_id then
				if i >= wave then
					ScriptLib.StopPlatform(context, defs.platform)
				end
				ScriptLib.CreateGadget(context, { config_id = v.gadget })
				break
			end
		end	
	end
	return 0
end

function action_timer_event(context, evt)
	if defs.timedOre == nil then
		return -1
	end
	ScriptLib.RemoveEntityByConfigId(context, 0, EntityType.GADGET, defs.timedOre)
	local eid = ScriptLib.GetEntityIdByConfigId(context, defs.platform)
	local pos = ScriptLib.GetPosByEntityId(context, eid)
	ScriptLib.CreateGadgetByConfigIdByPos(context, defs.timedOre, {x=pos.x,y=pos.y,z=pos.z}, {x=0,y=0,z=0})
	ScriptLib.CreateGroupTimerEvent(context, ScriptLib.GetContextGroupId(context), "timer", interval)
	return 0
end