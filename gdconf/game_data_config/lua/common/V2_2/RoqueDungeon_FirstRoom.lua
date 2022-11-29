local extrTriggers = {
	initialtrigger = {
		["Quest_Finish"] = { config_id = 8000001, name = "Quest_Finish", event= EventType.EVENT_QUEST_FINISH, source = "", condition = "", action = "action_questFinish", trigger_count = 0 },
		["Gadget_Create"] = { config_id = 8000002, name = "Gadget_Create", event= EventType.EVENT_GADGET_CREATE, source = "", condition = "", action = "action_gadgetCreate", trigger_count = 0 },
		["Enter_Region"] = { config_id = 8000003, name = "Enter_Region", event= EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EnterFirstRegion", trigger_count = 0 },
		["Room_Ready"] = { config_id = 8000004, name = "Room_Ready", event= EventType.EVENT_ROGUE_CELL_CONSTRUCT, source = "", condition = "", action = "action_RoomReady", trigger_count = 0 },
	}
}

function action_questFinish( context,evt )
	
	if evt.param1 ~= QuestID then
		return 0
	end

	--开门
	if RoomDoorConfigID ~= 0 then

		ScriptLib.SetGroupGadgetStateByConfigId(context, GroupID, RoomDoorConfigID, 201)
	end

	--设置引导点
	ScriptLib.CreateGadget(context, { config_id = DestinationConfigID })

	return 0 
end

function action_RoomReady( context,evt )
	local uidList = ScriptLib.GetSceneUidList(context)
	local avatar_entity = ScriptLib.GetAvatarEntityIdByUid(context, uidList[1])
	
	--如果任务完成
	if DestinationConfigID ~= 0 and QuestID ~= 0 and ScriptLib.GetQuestState(context, avatar_entity, QuestID) == QuestState.FINISHED then

		--设置引导点
		ScriptLib.CreateGadget(context, { config_id = DestinationConfigID })

	end


	return 0
end


function action_gadgetCreate( context,evt )
	
	local uidList = ScriptLib.GetSceneUidList(context)
	local avatar_entity = ScriptLib.GetAvatarEntityIdByUid(context, uidList[1])


	--ScriptLib.PrintContextLog(context, "## RG_LOG : First Room QuestState is "..ScriptLib.GetQuestState(context, avatar_entity, QuestID))


	--如果任务完成
	if RoomDoorConfigID ~= 0 and QuestID ~= 0 and ScriptLib.GetQuestState(context, avatar_entity, QuestID) == QuestState.FINISHED then

		--开门
		ScriptLib.SetGroupGadgetStateByConfigId(context, GroupID, RoomDoorConfigID, 201)

	end

	return 0

end

function action_EnterFirstRegion( context,evt )

	if evt.param1 ~= RegionID then
		return 0
	end

	--设置进入房间
	ScriptLib.EnterRogueCell(context, GroupID)

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


