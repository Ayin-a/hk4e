--[[
local defs = {
	group_id = xxx,
	tide_sum = 25,
	tide_max = 8,
	tide_min = 8
}
--suites[2]为monsterTide
--suites[3]为装饰gadget
--]]

local Tri = {
	[1] = { name = "group_load", config_id = 8000001, event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_group_load", trigger_count = 0 },
	[2] = { name = "group_refresh", config_id = 8000002, event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_group_refresh", trigger_count = 0 },
	[3] = { name = "any_monster_die", config_id = 8000003, event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_any_monster_die", trigger_count = 0 },
	[4] = { name = "blossom_progress_finish", config_id = 8000004, event = EventType.EVENT_BLOSSOM_PROGRESS_FINISH, source = "", condition = "", action = "action_blossom_progress_finish", trigger_count = 0}
}

local Var = {
	[1] = { config_id=50000001,name = "in_battle", value = 0, no_refresh = true },
	[2] = { config_id=50000002,name = "BombTypeA", value = 0, no_refresh = false },
	[3] = { config_id=50000003,name = "BombTypeB", value = 0, no_refresh = false },
	[4] = { config_id=50000004,name = "BombTypeC", value = 0, no_refresh = false },
	[5] = { config_id=50000005,name = "wave", value = 0, no_refresh = false }
}

local Reg = {
	[1] = { config_id = 7000001, shape = RegionShape.SPHERE, radius = 40, pos = points[1].pos, area_id = monsters[1].area_id, ability_group_list = {"ActivityAbility_LudiHarpastum_Bomb_Mark"} }
}
------------------------------
function Initialize()
	for k,v in pairs(Tri) do
		table.insert(triggers, v)
		table.insert(suites[1].triggers, v.name)
	end	
	for k,v in pairs(Var) do
		table.insert(variables, v)
	end
	for k,v in pairs(Reg) do
		table.insert(regions, v)
		table.insert(suites[1].regions, v.config_id)
	end
end
-------------------------------
function action_group_load(context, evt)
	ScriptLib.PrintContextLog(context, "## KeleeBomb : action_group_load")
	ScriptLib.AddExtraGroupSuite(context, 0, 3)
	if 0 == ScriptLib.GetGroupVariableValue(context, "in_battle") then
		ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 1, exclude_prev = true, is_delay_unload = true })
	end
	return 0
end

function action_group_refresh(context, evt)
	ScriptLib.PrintContextLog(context, "## KeleeBomb : action_group_refresh")
	LF_Group_Init(context)
	return 0
end

function action_any_monster_die(context, evt)
	ScriptLib.PrintContextLog(context, "## KeleeBomb : monster_die : source = "..evt.source_name)
	if evt.source_name == "ActivityAbility_LudiHarpastumGadgetSkill_BombTypeA" then
		ScriptLib.ChangeGroupVariableValue(context, "BombTypeA", 1)
	elseif evt.source_name == "ActivityAbility_LudiHarpastumGadgetSkill_BombTypeB" then
		ScriptLib.ChangeGroupVariableValue(context, "BombTypeB", 1)
	elseif evt.source_name == "ActivityAbility_LudiHarpastumGadgetSkill_BombTypeC" then
		ScriptLib.ChangeGroupVariableValue(context, "BombTypeC", 1)
	end
	ScriptLib.AddBlossomScheduleProgressByGroupId(context, defs.group_id)
	if 0 == ScriptLib.GetGroupMonsterCount(context) then
		local _wave = ScriptLib.GetGroupVariableValue(context, "wave")
		if _wave+4 <= #suites then 
			ScriptLib.ShowReminderRadius(context, 400004, points[1].pos, 40)
			ScriptLib.AddExtraGroupSuite(context, 0, _wave+4)
			ScriptLib.ChangeGroupVariableValue(context, "wave", 1)
		end
	end
	return 0
end

function action_blossom_progress_finish(context, evt)
	ScriptLib.PrintContextLog(context, "## KeleeBomb : blossom_finish")
	ScriptLib.RemoveEntityByConfigId(context, 0, EntityType.REGION, 70000001)
	ScriptLib.SetGroupVariableValue(context, "in_battle", 0)
	ScriptLib.SetGroupVariableValue(context, "wave", 0)
	ScriptLib.SetBlossomScheduleStateByGroupId(context, defs.group_id, 3)
	ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 1, exclude_prev = true, is_delay_unload = true })
	return 0
end
------------------------------
function LF_Group_Init(context)
	ScriptLib.PrintContextLog(context, "## KeleeBomb : group_init")
	ScriptLib.SetBlossomScheduleStateByGroupId(context, defs.group_id, 2)
	ScriptLib.AddExtraGroupSuite(context, 0, 3)
	ScriptLib.SetGroupVariableValue(context, "in_battle", 1)
	ScriptLib.SetGroupVariableValue(context, "wave", 1)
	ScriptLib.AddExtraGroupSuite(context, 0, 4)
end
------------------------------
Initialize()