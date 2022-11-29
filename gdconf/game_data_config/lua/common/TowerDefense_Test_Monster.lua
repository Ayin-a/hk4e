function LF_Init_Monster_Group()
	for i,v in ipairs(suites) do
		temp_trigger = { config_id = 8000001, name = "monster_die", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_monster_die", trigger_count = 0 }
		table.insert(v.triggers, temp_trigger.name)
	end
	table.insert(triggers, temp_trigger)
end

local gear_group_id = defs.gear_group_id or 250030001

function action_monster_die(context, evt)
	ScriptLib.PrintContextLog(context, "--------------- award_points ------------")
	ScriptLib.ExecuteGroupLua(context, gear_group_id, "award_points", {0})
	return 0
end

LF_Init_Monster_Group()