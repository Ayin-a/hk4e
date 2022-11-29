function OnClientExecuteReq(context, param1, param2, param3)
	if param1 == 202 then
		ScriptLib.SetGroupVariableValue(context, "SplitterShootType", 202)
	end
	if param1 == 203 then
		ScriptLib.SetGroupVariableValue(context, "SplitterShootType", 203)
	end
	if param1 == 204 then
		ScriptLib.SetGroupVariableValue(context, "SplitterShootType", 204)
	end
	if param1 == 901 then
		ScriptLib.SetGroupVariableValue(context, "SplitterShootType", 901)
	end
	if param1 == 902 then
		ScriptLib.SetGroupVariableValue(context, "SplitterShootType", 902)
	end
end