function OnClientExecuteReq(context, param1, param2, param3)
	local arguments = ScriptLib.GetGadgetArguments(context)
	local length = #arguments
	if length == 2  then
		ScriptLib.CreateMonster(context, { config_id = arguments[1], delay_time = arguments[2] })
	end
	if length ==1  then
		ScriptLib.CreateMonster(context, { config_id = arguments[1], delay_time = 2 })
	end		
end