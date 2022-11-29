function OnClientExecuteReq(context, param1, param2, param3)
	if param1~=nil then
	--ScriptLib.PrintLog("GadgetState Get Change！！！！！！！")
		ScriptLib.SetGadgetState(context, param1)
	end
	if param2~=nil then
		ScriptLib.MarkGroupLuaAction(context, "LitChargePoint_1", "", {["config_id"]=ScriptLib.GetContextGadgetConfigId(context),["gadget_id"]=70290353})
	end
	return 0
end