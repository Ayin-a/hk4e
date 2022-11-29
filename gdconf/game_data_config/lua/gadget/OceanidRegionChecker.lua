function OnClientExecuteReq(context, param1, param2, param3)
	if param1 == 201 then
		local eid = ScriptLib.GetGroupVariableValue(context, "REGION_EID")
		if ScriptLib.GetRegionEntityCount(context, { region_eid = eid, entity_type = EntityType.AVATAR }) == 0 then
			ScriptLib.SetGadgetState(context, GadgetState.GearStart)
		end
	elseif param1 == 202 then
		ScriptLib.SetGadgetState(context, GadgetState.GearStart)
	else
		 ScriptLib.SetGadgetState(context, param1)
	end
end