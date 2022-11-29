local extrTriggers = {
	initialtrigger = {
		["Enter_Room"] = { config_id = 8000001, name = "Enter_Room", event= EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EnterRoom", trigger_count = 0 },
		["Gadget_StateChange"] = { config_id = 8000002, name = "Gadget_StateChange", event= EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_GadgetStateChange", trigger_count = 0 },
		["Room_Ready"] = { config_id = 8000003, name = "Room_Ready", event= EventType.EVENT_ROGUE_CELL_CONSTRUCT, source = "", condition = "", action = "action_RoomReady", trigger_count = 0 },
	}
}


function action_RoomReady( context,evt )

	for i,v in ipairs(ChestConfigIDList) do
		if ScriptLib.GetGadgetStateByConfigId(context, GroupId, v) == 0 then
			ScriptLib.PrintContextLog(context, "##Rogue LOG : action_RoomReady Has Close Chest ")
			return 0
		end
	end

	--设置为完成
	ScriptLib.SetRogueCellState(context, GroupId, 4)

	return 0
end


function action_EnterRoom( context,evt )

	if evt.param1 ~= RegionID then
		return 0
	end

	--设置进入房间
	ScriptLib.EnterRogueCell(context, GroupId)

	ScriptLib.PrintContextLog(context, "##Rogue LOG : Get Chest State == "..ScriptLib.GetGadgetStateByConfigId(context, GroupId, ChestConfigID))

	--ScriptLib.GetEntityIdByConfigId(context, ChestConfigID)

	for i,v in ipairs(ChestConfigIDList) do
		if ScriptLib.GetGadgetStateByConfigId(context, GroupId, v) == 0 then
			ScriptLib.SetRogueCellState(context, GroupId, 2)
			ScriptLib.PrintContextLog(context, "##Rogue LOG : Has Close Chest ")
			return 0
		end
	end

	
	--设置为完成
	ScriptLib.SetRogueCellState(context, GroupId, 3)

	-- if ScriptLib.GetGadgetStateByConfigId(context, GroupId, ChestConfigID) == -1 then
	-- 	--设置为完成
	-- 	ScriptLib.SetRogueCellState(context, GroupId, 3)
	-- else
	-- 	ScriptLib.SetRogueCellState(context, GroupId, 2)
	-- end

	return 0
end

function action_GadgetStateChange( context,evt )

	if evt.param1 == 102 then

		for i,v in ipairs(ChestConfigIDList) do
			if ScriptLib.GetGadgetStateByConfigId(context, GroupId, v) == 0 then
				ScriptLib.PrintContextLog(context, "##Rogue LOG : Has Close Chest ")
				return 0
			end
		end

		ScriptLib.PrintContextLog(context, "##Rogue LOG : Chest State GO TO 102, Set Room State ")

		--设置为完成
		ScriptLib.SetRogueCellState(context, GroupId, 3)
	end

	return 0
end


function LF_Initialize_Group()
	for k,v in pairs(extrTriggers.initialtrigger) do
		table.insert(triggers, v)
		table.insert(suites[init_config.suite].triggers, v.name)
	end

	return 0
end

LF_Initialize_Group()