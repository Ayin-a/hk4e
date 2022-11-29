function OnClientExecuteReq(context, param1, param2, param3)
	if param1 == 1 then
		if 901 == ScriptLib.GetGadgetState(context) then
			ScriptLib.SetGadgetState(context, 0)
		else 
			local s = ScriptLib.GetGadgetState(context)
			ScriptLib.PrintContextLog(context, "error_state="..s)
		end
	elseif param1 == 202 then
		if 201 == ScriptLib.GetGadgetState(context) then
			ScriptLib.SetGadgetState(context, 202)
		else 
			local s = ScriptLib.GetGadgetState(context)
			ScriptLib.PrintContextLog(context, "error_state="..s)
		end
	end
	return 0
end
