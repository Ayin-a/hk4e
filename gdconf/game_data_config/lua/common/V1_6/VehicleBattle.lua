--[[
local defs = {
	group_id = xxx ,	
	monster_shaman = 1,
	gadget_barrier = {1,2,3,4,5},
	TowerBridges = {{3,4},{3,5}}
}
--]]

local Tri = {
	[1] = { name = "any_monster_die", config_id = 8000001, event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_any_monster_die", trigger_count = 0 },
	--[2] = { name = "blossom_progress_finish", config_id = 8000002, event = EventType.EVENT_BLOSSOM_PROGRESS_FINISH, source = "", condition= "", action = "action_blossom_progress_finish", trigger_count = 0 },
	[3] = { name = "any_gadget_die", config_id = 8000003, event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_any_gadget_die", trigger_count = 0 },
	[4] = { name = "group_load", config_id = 8000004, event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_group_load", trigger_count = 0 },
	[5] = { name = "group_refresh", config_id = 8000005, event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_group_refresh", trigger_count = 0 }
}

local Var = {
	{ config_id=50000001,name = "in_battle", value = 0, no_refresh = true },
	{ config_id=50000002,name = "wave", value = 0, no_refresh = true }
}

function Initialize()
	for k,v in pairs(Tri) do
		table.insert(triggers, v)
		table.insert(suites[1].triggers, v.name)
	end
	for k,v in pairs(Var) do
		table.insert(variables, v)
	end
end

----------------------------------
function action_any_monster_die(context, evt)
	ScriptLib.AddBlossomScheduleProgressByGroupId(context, defs.group_id)
	if evt.param1 == defs.monster_shaman then
		for i,v in ipairs(defs.gadget_barrier) do
			ScriptLib.KillEntityByConfigId(context, { config_id = v, entity_type = EntityType.GADGET})
		end
	end
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 0) ~= 0 then
		return -1
	end
	local wave = ScriptLib.GetGroupVariableValue(context, "wave")
	ScriptLib.PrintContextLog(context, "## VehicleBattle : wave = "..wave)
	if wave == #suites - 1 then
		ScriptLib.PrintContextLog(context, "## VehicleBattle : this is final wave ")
		ScriptLib.SetBlossomScheduleStateByGroupId(context, defs.group_id, 3)
		ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 1, exclude_prev = true, is_delay_unload = true})
		ScriptLib.SetGroupVariableValue(context, "in_battle", 0)
	else
		ScriptLib.PrintContextLog(context, "## VehicleBattle : this is suite "..wave+2)
		ScriptLib.AddExtraGroupSuite(context, 0, wave + 2)
		ScriptLib.SetGroupVariableValue(context, "wave", wave + 1)
	end
	if #suites == 4 then
		if wave == 1 then
			ScriptLib.ShowReminderRadius(context, 400002, defs.point, 80)
		elseif wave == 2 then
			ScriptLib.ShowReminderRadius(context, 400003, defs.point, 80)
		end
	elseif #suites == 3 and wave == 1 then
		ScriptLib.ShowReminderRadius(context, 400004, defs.point, 80)
	end
	return 0
end

function action_group_load(context, evt)
	if 1 ~= ScriptLib.GetGroupVariableValue(context, "in_battle") then
		ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 1, exclude_prev = true, is_delay_unload = true })
	end
	--LF_Init_Blossom_Group(context)
	return 0
end

function action_group_refresh(context, evt)
	LF_Init_Blossom_Group(context)
	--ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 1, exclude_prev = true })
	return 0
end

function action_any_gadget_die(context, evt)
	if #defs.TowerBridges == 0 then
		return -1
	end
	for i,v in ipairs(defs.TowerBridges) do
		if evt.param1 == v[1] then
			ScriptLib.KillEntityByConfigId(context, { config_id = v[2], entity_type = EntityType.GADGET})
		end
	end
	return 0
end

function LF_Init_Blossom_Group(context)
	ScriptLib.SetGroupVariableValue(context, "in_battle", 1)
	ScriptLib.SetBlossomScheduleStateByGroupId(context, defs.group_id, 2)
	for i=2,#suites do
		ScriptLib.RemoveExtraGroupSuite(context, 0, i)
	end
	local ret = ScriptLib.SetGroupVariableValue(context, "wave", 1)
	ScriptLib.PrintContextLog(context, "## VehicleBattle : set wave 1 ret = "..ret)
	ScriptLib.AddExtraGroupSuite(context, 0, 2)
end
----------------------------------
Initialize()