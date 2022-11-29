local extrTriggers = {
	initialtrigger = {
		["Monster_Die1"] = { config_id = 8000001, name = "Monster_Die1", event= EventType.EVENT_ANY_MONSTER_DIE, source = "Activity_EndoraGadgetSkill_BubbleTrigger", condition = "", action = "action_monster_die1", trigger_count = 0 },
		["Monster_Die2"] = { config_id = 8000002, name = "Monster_Die2", event= EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_monster_die2", trigger_count = 0 }
	}
}


function action_monster_die1( context,evt )
	ScriptLib.AddRegionSearchProgress(context, regionsearch_region_id, 1)
	return 0
end

function action_monster_die2( context,evt )
	ScriptLib.AddRegionRecycleProgress(context, regionsearch_region_id, 1)
	return 0
end

function LF_Initialize_Group()
	for k,v in pairs(extrTriggers.initialtrigger) do
		table.insert(triggers, v)
		table.insert(suites[init_config.suite].triggers, v.name)
	end
	return 0
end

LF_Initialize_Group()
