function OnClientExecuteReq(context, param1, param2, param3)
	if param1 == 0 then
		ScriptLib.SetGadgetState(context, GadgetState.Default)
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
	if param1 == 901 then
		ScriptLib.SetGadgetState(context, GadgetState.Action01)
	end
	if param1 == 902 then
		ScriptLib.SetGadgetState(context, GadgetState.Action02)
	end
	if param1 == 903 then
		ScriptLib.SetGadgetState(context, GadgetState.Action03)
	end

end

--烟雾弹物件会serverLuaCall处理玩家清仇恨的SGV。清仇恨功能详见单子s1260223。这里仅限单机。
function GadgetCallSetThreat(context)
	ScriptLib.PrintContextLog(context, "[HachiSneak] SGV_CAN_CLEAR_THREAT Set: 0")
	local uidList = ScriptLib.GetSceneUidList(context)
	ScriptLib.SetTeamServerGlobalValue(context, uidList[1], "SGV_CAN_CLEAR_THREAT", 0)
	return 0
end
--烟雾弹物件会serverLuaCall处理玩家清仇恨的SGV。清仇恨功能详见单子s1260223。这里仅限单机。
function GadgetCallClearThreat(context)
	ScriptLib.PrintContextLog(context, "[HachiSneak] SGV_CAN_CLEAR_THREAT Set: 1")
	local uidList = ScriptLib.GetSceneUidList(context)
	ScriptLib.SetTeamServerGlobalValue(context, uidList[1], "SGV_CAN_CLEAR_THREAT", 1)
	return 0
end



