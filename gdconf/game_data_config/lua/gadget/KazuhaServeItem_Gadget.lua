function OnClientExecuteReq(context, param1, param2, param3)

		local ret = ScriptLib.SetGadgetState(context, param1)
		if 0 ~= ret then
			return 0
		end
		
		local group_id = ScriptLib.GetContextGroupId(context)

		if 220142013 == group_id or 220142012 == group_id then
			ScriptLib.ExecuteGroupLua(context, group_id, "EX_Device_Gadget_State_Change", {param1})
		end

		return 0
end