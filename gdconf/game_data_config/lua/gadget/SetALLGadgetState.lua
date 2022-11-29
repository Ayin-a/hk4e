function OnClientExecuteReq(context, param1, param2, param3)

	--ScriptLib.PrintLog("GadgetState Get Change！！！！！！！")
	if param1 == 0 then
		ScriptLib.SetGadgetState(context, GadgetState.Default)
	end
	if param1 == 101 then
		ScriptLib.SetGadgetState(context, 101)
	end
	if param1 == 102 then
		ScriptLib.SetGadgetState(context, 102)
	end
	if param1 == 103 then
		ScriptLib.SetGadgetState(context, 103)
	end
	if param1 == 104 then
		ScriptLib.SetGadgetState(context, 104)
	end
	
	if param1 == 200 then
		ScriptLib.SetGadgetState(context, 200)
	end
	if param1 == 201 then
		ScriptLib.SetGadgetState(context, GadgetState.GearStart)
	end
	if param1 == 202 then
		ScriptLib.SetGadgetState(context, GadgetState.GearStop)
	end
	if param1 == 203 then
		ScriptLib.SetGadgetState(context, GadgetState.GearAction1)
	end
	if param1 == 204 then
		ScriptLib.SetGadgetState(context, GadgetState.GearAction2)
	end

	if param1 == 210 then
		ScriptLib.SetGadgetState(context, 210)
	end
	if param1 == 211 then
		ScriptLib.SetGadgetState(context, 211)
	end
	if param1 == 212 then
		ScriptLib.SetGadgetState(context, 212)
	end
	if param1 == 213 then
		ScriptLib.SetGadgetState(context, 213)
	end
	if param1 == 214 then
		ScriptLib.SetGadgetState(context, 214)
	end
	if param1 == 222 then
		ScriptLib.SetGadgetState(context, 222)
	end

	if param1 == 300 then
		ScriptLib.SetGadgetState(context, 300)
	end
	if param1 == 301 then
		ScriptLib.SetGadgetState(context, 301)
	end
	if param1 == 302 then
		ScriptLib.SetGadgetState(context, 302)
	end
	if param1 == 303 then
		ScriptLib.SetGadgetState(context, 303)
	end
	if param1 == 304 then
		ScriptLib.SetGadgetState(context, 304)
	end

	if param1 == 310 then
		ScriptLib.SetGadgetState(context, 310)
	end
	if param1 == 311 then
		ScriptLib.SetGadgetState(context, 311)
	end
	if param1 == 312 then
		ScriptLib.SetGadgetState(context, 312)
	end
	if param1 == 313 then
		ScriptLib.SetGadgetState(context, 313)
	end
	if param1 == 314 then
		ScriptLib.SetGadgetState(context, 314)
	end
	if param1 == 322 then
		ScriptLib.SetGadgetState(context, 322)
	end

	if param1 == 901 then
		ScriptLib.SetGadgetState(context, GadgetState.Action01)
	end
	if param1 == 902 then
		ScriptLib.SetGadgetState(context, GadgetState.Action02)
	end
	if param1 == 903 then
		ScriptLib.SetGadgetState(context, GadgetState.Action03)
	end
	if param1 == 106 then
		ScriptLib.SetGadgetState(context, GadgetState.ChestRock)
	end
end