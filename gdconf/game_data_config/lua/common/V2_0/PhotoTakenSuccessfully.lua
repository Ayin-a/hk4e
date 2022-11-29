function LF_Initialize_Group(triggers, suites)
	table.insert(variables,{ config_id=50000001,name = "takedConfigID", value = 0, no_refresh = true})
	table.insert(variables,{ config_id=50000002,name = "takeCount", value = 0})
--初始化
end

function PhotoTakenSuccessfully(context)
    local entityID=0
	ScriptLib.ChangeGroupVariableValue(context, "takeCount", 1)
	for i=1,#gadgets do
		entityID=ScriptLib.GetEntityIdByConfigId(context, gadgets[i].config_id)
		if entityID==context.target_entity_id or entityID==context.source_entity_id then
			ScriptLib.SetGroupVariableValue(context, "takedConfigID", gadgets[i].config_id)
		end
	end
	return 0
end
LF_Initialize_Group(triggers, suites)