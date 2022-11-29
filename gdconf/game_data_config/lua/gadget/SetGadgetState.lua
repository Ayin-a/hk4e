function OnClientExecuteReq(context, param1, param2, param3)

	--ScriptLib.PrintLog("GadgetState Get Change！！！！！！！")
		ScriptLib.SetGadgetState(context, param1)
		return 0
end