local extraTriggers={
	{ config_id = 8000001, name = "GROUP_LOAD", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD", trigger_count = 0 },
	{ config_id = 8000002, name = "GENERAL_REWARD_TAKEN", event = EventType.EVENT_GENERAL_REWARD_TAKEN, source = "", condition = "", action = "action_EVENT_GENERAL_REWARD_TAKEN", trigger_count = 0 }
}


function LF_Initialize_Group(triggers, suites)
	for i=1,#extraTriggers do
		table.insert(triggers, extraTriggers[i])
		table.insert(suites[init_config.suite].triggers,extraTriggers[i].name)
	end
	table.insert(variables, { config_id=50000001,name = "Created", value = 0,no_refresh = true })
end


function action_EVENT_GROUP_LOAD(context, evt)	
	if ScriptLib.GetGroupVariableValue(context, "Created") == 0 then
		for i=1,#gadgets do
			if gadgets[i].gadget_id == 70220042 then
				ScriptLib.CreateTreasureMapSpotRewardGadget(context, gadgets[i].config_id)
			end
		end
	end
	return 0
end

function action_EVENT_GENERAL_REWARD_TAKEN(context, evt)  
	ScriptLib.SetGroupVariableValue(context, "Created", 1)       
    return ScriptLib.CreateMonstersFromMonsterPool(context,"盗宝团")
end

LF_Initialize_Group(triggers, suites)