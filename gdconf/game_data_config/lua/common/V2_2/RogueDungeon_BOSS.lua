local startChallenge = 16
local getCard = 13
local quitDungeon = 15


local extrTriggers = {
	initialtrigger = {
		["Gadget_Create"] = { config_id = 8000001, name = "Gadget_Create", event= EventType.EVENT_GADGET_CREATE, source = "", condition = "", action = "action_WhenGadgetCreate", trigger_count = 0 },
		["Option_Dwon"] = { config_id = 8000002, name = "Option_Dwon", event= EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_WhenOptionDown", trigger_count = 0 },
		["Challenge_Success"] = { config_id = 8000003, name = "Challenge_Success", event= EventType.EVENT_CHALLENGE_SUCCESS, source = "", condition = "", action = "action_ChallengeSuccess", trigger_count = 0 },
		["Challenge_Fail"] = { config_id = 8000004, name = "Challenge_Fail", event= EventType.EVENT_CHALLENGE_FAIL, source = "", condition = "", action = "action_ChallengeFail", trigger_count = 0 },
		["BOSSRoom_StateChange"] = { config_id = 8000005, name = "BOSSRoom_StateChange", event= EventType.EVENT_ROGUE_CELL_STATE_CHANGE, source = "", condition = "", action = "action_BossRoomStateChange", trigger_count = 0 },
		["Dungeon_Settle"] = { config_id = 8000006, name = "Dungeon_Settle", event= EventType.EVENT_DUNGEON_SETTLE, source = "", condition = "", action = "action_DungeonSettle", trigger_count = 0 },	
		["Finish_Card"] = { config_id = 8000008, name = "Finish_Card", event= EventType.EVENT_ROGUE_CELL_FINISH_SELECT_CARD, source = "", condition = "", action = "action_FinishCard", trigger_count = 0 },
		["Room_Ready"] = { config_id = 8000009, name = "Room_Ready", event= EventType.EVENT_ROGUE_CELL_CONSTRUCT, source = "", condition = "", action = "action_WhenRoomReady", trigger_count = 0 },
		["ThunderFloor_TimeAxis"] = { config_id = 8000010, name = "ThunderFloor_TimeAxis", event= EventType.EVENT_TIME_AXIS_PASS, source = "thunderfloor_timer", condition = "", action = "action_ThunderFloorTimeAxis", trigger_count = 0 },
		--["Monster_Die"] = { config_id = 8000011, name = "Monster_Die", event= EventType.EVENT_MONSTER_DIE_BEFORE_LEAVE_SCENE, source = "", condition = "", action = "action_monster_die", trigger_count = 0 },
		["Group_Ready"] = { config_id = 8000011, name = "Group_Ready", event= EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_WhenGroupReady", trigger_count = 0 },
		["Enter_Region"] = { config_id = 8000012, name = "Enter_Region", event= EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EnterBossRegion", trigger_count = 0 },
		["Leave_Region"] = { config_id = 8000013, name = "Leave_Region", event= EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_LeaveBossRegion", trigger_count = 0 },
		--["Quest_Start"] = { config_id = 8000014, name = "Quest_Start", event= EventType.EVENT_QUEST_START, source = "", condition = "", action = "action_QuestStart", trigger_count = 0 },

	},
	unloadtrigger = {
		["Quest_Region"] = { config_id = 8000007, name = "Quest_Region", event= EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EnterQuestRegion", trigger_count = 0 },
	},
}

function RemoveBUFF( context )

	local UidList = ScriptLib.GetSceneUidList(context)

	ScriptLib.SetTeamServerGlobalValue(context, UidList[1], "SGV_ROGUE_SR_AreaNoEnemyAtkSpeedUp", 0)

	ScriptLib.SendServerMessageByLuaKey(context, "ROGUE_DISABLE_HALO", UidList)

	return 0
end

function action_QuestStart( context,evt )
	if preQuestID == nil then
		return 0
	end

	if evt.param1 == preQuestID then
		ScriptLib.PrintContextLog(context, "## RG_LOG : Quest Start Delete Destination")
		ScriptLib.KillEntityByConfigId(context, { group_id = GroupId, config_id = DestinationConfigID, entity_type = EntityType.GADGET })
	end

	return 0
end

--监听cell分配
function action_WhenGadgetCreate(context, evt)

	local roomState = ScriptLib.GetRogueCellState(context, GroupId)


	if evt.param1 == BossOperatorConfigID and roomState == 0 then

		ScriptLib.PrintContextLog(context, "## RG_LOG : Set StartChallenge Option")

		ScriptLib.SetWorktopOptionsByGroupId(context, GroupId, BossOperatorConfigID, {startChallenge})

		--设置gadget状态
		ScriptLib.SetGroupGadgetStateByConfigId(context, GroupId, BossOperatorConfigID, 0)

	elseif evt.param1 == BossOperatorConfigID and roomState == 1 then

		ScriptLib.PrintContextLog(context, "## RG_LOG : Set GadgetState To 201")

		--设置gadget状态
		ScriptLib.SetGroupGadgetStateByConfigId(context, GroupId, BossOperatorConfigID, 201)

	elseif evt.param1 == BossOperatorConfigID and roomState == 2 then

		ScriptLib.PrintContextLog(context, "## RG_LOG : Set Gacha Option")

		ScriptLib.SetWorktopOptionsByGroupId(context, GroupId, BossOperatorConfigID, {getCard})

		--设置gadget状态
		ScriptLib.SetGroupGadgetStateByConfigId(context, GroupId, BossOperatorConfigID, 203)

	elseif evt.param1 == BossOperatorConfigID and roomState == 3 then

		ScriptLib.PrintContextLog(context, "## RG_LOG : Set Gacha Off Option")

		--设置gadget状态
		--操作台
		ScriptLib.SetGroupGadgetStateByConfigId(context, GroupId, BossOperatorConfigID, 204)
		--开剧情门
		if doorConfigID~= 0 then
			ScriptLib.SetGroupGadgetStateByConfigId(context, GroupId, doorConfigID, 201)
		end
		
		--开BOSS后门
		if doorBossBackID ~= 0 then
			ScriptLib.SetGroupGadgetStateByConfigId(context, GroupId, doorBossBackID, 201)
		end

	elseif evt.param1 == QuitPointConfigID then

		ScriptLib.PrintContextLog(context, "## RG_LOG : Set QuitPoint Option")

		ScriptLib.SetWorktopOptionsByGroupId(context, GroupId, QuitPointConfigID, {quitDungeon})

	elseif evt.param1 == doorBossFrontID and roomState == 0 then
		--开门
		ScriptLib.SetGroupGadgetStateByConfigId(context, GroupId, doorBossFrontID, 201)
	end

	return 0
end

function action_WhenGroupReady( context,evt )
	-- Group加载

	--开启雷电地板时间轴
	ScriptLib.InitTimeAxis(context, "thunderfloor_timer", ThunderFloorTimeAxis, true)

	return 0
end


function action_WhenRoomReady(context,evt)
	-- 当房间准备好后
	local roomState = ScriptLib.GetRogueCellState(context, GroupId)

	local uidList = ScriptLib.GetSceneUidList(context)
	local avatar_entity = ScriptLib.GetAvatarEntityIdByUid(context, uidList[1])


	--如果任务还未完成
	if roomState == 3 and ScriptLib.GetQuestState(context, avatar_entity, questID) ~= QuestState.FINISHED then

		--开启任务region
		ScriptLib.CreateGroupTrigger(context, "Quest_Region")

	end

	--获取任务，如果有任务，需要特殊创建门的位置
	if preQuestID~= nil then
		ScriptLib.PrintContextLog(context, "## RG_LOG : Quest "..preQuestID.." State = "..ScriptLib.GetQuestState(context, avatar_entity, preQuestID))
		ScriptLib.PrintContextLog(context, "## RG_LOG : Quest "..nextQuestID.." State = "..ScriptLib.GetQuestState(context, avatar_entity, nextQuestID))
	end



	if nextQuestID == 0 then
		ScriptLib.PrintContextLog(context, "## RG_LOG : No Quest： Create DestinationPoint")

		--创建指引点
		ScriptLib.CreateGadget(context, { config_id = DestinationConfigID })

	elseif ScriptLib.GetQuestState(context, avatar_entity, nextQuestID) == QuestState.FINISHED then
		ScriptLib.PrintContextLog(context, "## RG_LOG : Quest Finish： Create DestinationPoint")
		
		--创建指引点，定点
		ScriptLib.CreateGadgetByConfigIdByPos(context, DestinationConfigID, DestinationPos, {x=0, y=DestinationRot[1], z=0 }) 

	else
		ScriptLib.PrintContextLog(context, "## RG_LOG : Has Quest： Create DestinationPoint")

		--创建指引点
		ScriptLib.CreateGadget(context, { config_id = DestinationConfigID })
		
	end

	return 0
end

-- function action_monster_die( context, evt )

-- 	local UidList = ScriptLib.GetSceneUidList(context)

-- 	-- 杀怪计数
-- 	ScriptLib.AddExhibitionAccumulableData(context, UidList[1], "Rogue_KillMonster_Count", 1)

-- 	return 0
-- end


function action_FinishCard( context, evt )
	-- 抽卡后切房间状态

	--设置房间状态
	ScriptLib.SetRogueCellState(context, GroupId, 3)

	return 0
end



function action_BossRoomStateChange( context, evt )
	-- BOSS房间状态变化
	if evt.param1 == 0 then
		--开门
		ScriptLib.SetGroupGadgetStateByConfigId(context, GroupId, doorBossFrontID, 201)
	end

	--抽卡完成后
	if evt.param1 == 3 then
		--删除按键
		ScriptLib.DelWorktopOptionByGroupId(context, GroupId, BossOperatorConfigID, getCard)

		--设置gadget状态
		--操作台
		ScriptLib.SetGroupGadgetStateByConfigId(context, GroupId, BossOperatorConfigID, 204)

		--开剧情门
		if doorConfigID~= 0 then
			ScriptLib.SetGroupGadgetStateByConfigId(context, GroupId, doorConfigID, 201)
		end
		
		--开BOSS后门
		if doorBossBackID ~= 0 then
			ScriptLib.SetGroupGadgetStateByConfigId(context, GroupId, doorBossBackID, 201)
		end
	

		--如果任务完成，直接设置地城成功
		local uidList = ScriptLib.GetSceneUidList(context)
		local avatar_entity = ScriptLib.GetAvatarEntityIdByUid(context, uidList[1])

		if questID == 0 then
			ScriptLib.PrintContextLog(context, "## RG_LOG : No Quest")
			ScriptLib.CauseDungeonSuccess(context)
		elseif ScriptLib.GetQuestState(context, avatar_entity, questID) == QuestState.FINISHED then
			ScriptLib.PrintContextLog(context, "## RG_LOG : Quest Finished")
			ScriptLib.CauseDungeonSuccess(context)
		else
			ScriptLib.PrintContextLog(context, "## RG_LOG : Create QuestRegion")
			--开启任务region
			ScriptLib.CreateGroupTrigger(context, "Quest_Region")
		end
	end

	return 0

end

function action_EnterQuestRegion( context,evt )
	-- 进入任务region

	if evt.param1 ~= questRegionID then
		return 0
	end

	--删除指引点
	if DestinationConfigID ~= 0 then

		ScriptLib.KillEntityByConfigId(context, { group_id = GroupId, config_id = DestinationConfigID, entity_type = EntityType.GADGET })
	end



	ScriptLib.PrintContextLog(context, "## RG_LOG : Player In QuestRegion")

	ScriptLib.AddQuestProgress(context, ""..finishQuestID)

	return 0
end

function action_EnterBossRegion( context,evt )

	if evt.param1 == RegionID then
		--设置进入房间
		ScriptLib.EnterRogueCell(context, GroupId)

		--挑战房间加载eyepoint锚点
		ScriptLib.SetPlayerEyePoint(context, RegionID, RegionID)
	end

	if evt.param1 == PlotRoom.regionID then
		--设置进入房间
		ScriptLib.EnterRogueCell(context, PlotRoom.groupID)

	end

	return 0
end

function action_LeaveBossRegion( context,evt )
	
	if evt.param1 ~= RegionID then
		return 0
	end

	--清楚eyepoint锚点
	ScriptLib.ClearPlayerEyePoint(context, RegionID)

	return 0
end


function action_DungeonSettle( context,evt )
	-- dungeonsettle后

	if evt.param1 == 0 then
		return 0
	end

	--获取任务，如果有任务，需要特殊创建门的位置
	local uidList = ScriptLib.GetSceneUidList(context)
	local avatar_entity = ScriptLib.GetAvatarEntityIdByUid(context, uidList[1])

	if nextQuestID == 0 then
		ScriptLib.PrintContextLog(context, "## RG_LOG : No Quest： Create QuitPoint")

		--创建跳层机关
		ScriptLib.CreateGadget(context, { config_id = QuitPointConfigID })
		

	elseif ScriptLib.GetQuestState(context, avatar_entity, nextQuestID) == QuestState.FINISHED then
		ScriptLib.PrintContextLog(context, "## RG_LOG : Quest Finish： Create QuitPoint")

		--创建跳层机关，定点
		ScriptLib.CreateGadgetByConfigIdByPos(context, QuitPointConfigID, BossDoorPos, {x=0, y=BossDoorRot[1], z=0}) 

	else
		ScriptLib.PrintContextLog(context, "## RG_LOG : Has Quest： Create QuitPoint")

		--创建跳层机关
		ScriptLib.CreateGadget(context, { config_id = QuitPointConfigID })
		
	end

	

	--开启最后一个门
	if lastDoorConfigID ~= 0 then
		ScriptLib.SetGroupGadgetStateByConfigId(context, GroupId, lastDoorConfigID, 201)
	end

	return 0

end



function action_WhenOptionDown(context,evt)
	local UidList = ScriptLib.GetSceneUidList(context)

	ScriptLib.PrintContextLog(context, "## RG_LOG : Option Down ConfigID Is "..evt.param1.." Option ID Is "..evt.param2)

	if evt.param1 == BossOperatorConfigID and evt.param2 == startChallenge then

		--连通性检查
		if ScriptLib.IsRogueBossCellPrevCellFinish(context) == false then

			ScriptLib.ShowReminder(context, 470080101)

			ScriptLib.PrintContextLog(context, "## RG_LOG : Chuan Men Gua Bi")
			return 0 
		end

		--距离检查
		
		local PlayerPos = ScriptLib.GetPosByEntityId(context, ScriptLib.GetAvatarEntityIdByUid(context, UidList[1]))
		local OptionPos = ScriptLib.GetPosByEntityId(context, ScriptLib.GetEntityIdByConfigId(context, BossOperatorConfigID))

		if math.abs(PlayerPos.x - OptionPos.x) > 10 or math.abs(PlayerPos.y - OptionPos.y) > 10 or math.abs(PlayerPos.z - OptionPos.z) > 10 then

			ScriptLib.PrintContextLog(context, "## RG_LOG : Delta X = "..math.abs(PlayerPos.x - OptionPos.x))
			ScriptLib.PrintContextLog(context, "## RG_LOG : Delta Y = "..math.abs(PlayerPos.y - OptionPos.y))
			ScriptLib.PrintContextLog(context, "## RG_LOG : Delta Z = "..math.abs(PlayerPos.z - OptionPos.z))

			ScriptLib.ShowReminder(context, 470080102)

			ScriptLib.PrintContextLog(context, "## RG_LOG : Diao Xian Gua Bi")
			return 0 
		end

		
		--设置房间状态
	  	ScriptLib.SetRogueCellState(context, GroupId, 1)
		--删除按键
		ScriptLib.PrintContextLog(context, "## RG_LOG : Delete StartChallenge Option")
		ScriptLib.DelWorktopOptionByGroupId(context, GroupId, BossOperatorConfigID, startChallenge)

		--开启高危挑战
		ScriptLib.ExecuteGroupLua(context, MainGroupID, "RogueStartChallenge", {BossPoolID,GroupId})

		--创建空气墙
		ScriptLib.CreateGadget(context, { config_id = AirWallConfigID })

		--关门
		if doorBossFrontID~= 0 then
			ScriptLib.SetGroupGadgetStateByConfigId(context, GroupId, doorBossFrontID, 0)
		end

		--设置gadget状态
		ScriptLib.SetGroupGadgetStateByConfigId(context, GroupId, BossOperatorConfigID, 201)

	elseif evt.param1 == BossOperatorConfigID and evt.param2 == getCard then

		local UidList = ScriptLib.GetSceneUidList(context)

		ScriptLib.PrintContextLog(context, "## RG_LOG : Card UidList == "..UidList[1])

		--抽卡
		ScriptLib.DoRoguelikeCardGachaByLua(context, UidList[1])

	elseif evt.param1 == QuitPointConfigID then

		ScriptLib.PrintContextLog(context, "## RG_LOG : GOTO NEXT DUNGEON")
	
		--进入下一层
		ScriptLib.EnterRogueDungeonNextLevel(context)

	end
	 
	return 0
end

function action_ThunderFloorTimeAxis( context,evt )

	if evt.param1 == 1 then
		--开启雷电地板
		for i,v in ipairs(ThunderFloorList) do
			ScriptLib.SetGroupGadgetStateByConfigId(context, GroupId, v, 201)
		end

	elseif evt.param1 ==2 then
		--关闭雷电地板
		for i,v in ipairs(ThunderFloorList) do
			ScriptLib.SetGroupGadgetStateByConfigId(context, GroupId, v, 0)
		end

	end

	return 0
end


function action_ChallengeSuccess(context,evt)
	
	--关闭怪物潮
	ScriptLib.ExecuteGroupLua(context, MainGroupID, "RogueStopChallenge", {BossPoolID,GroupId})

	--移除空气墙
	ScriptLib.RemoveEntityByConfigId(context, GroupId, EntityType.GADGET, AirWallConfigID)


	if isLastRoom == 1 then
		--设置房间状态
		ScriptLib.SetRogueCellState(context, GroupId, 3)

		--设置gadget状态
		ScriptLib.SetGroupGadgetStateByConfigId(context, GroupId, BossOperatorConfigID, 204)

	else
		--设置房间状态
		ScriptLib.SetRogueCellState(context, GroupId, 2)

		--设置抽卡按键
		ScriptLib.SetWorktopOptionsByGroupId(context, GroupId, BossOperatorConfigID, {getCard})

		--设置gadget状态
		ScriptLib.SetGroupGadgetStateByConfigId(context, GroupId, BossOperatorConfigID, 203)
	end

	

	--关闭雷电地板
	for i,v in ipairs(ThunderFloorList) do
		ScriptLib.SetGroupGadgetStateByConfigId(context, GroupId, v, 0)
	end


	return 0
end

function action_ChallengeFail(context,evt)

	--设置房间状态
	ScriptLib.SetRogueCellState(context, GroupId, 0)
	-- 重新设置option
	ScriptLib.SetWorktopOptionsByGroupId(context, GroupId, BossOperatorConfigID, {startChallenge})

	--关闭怪物潮
	ScriptLib.ExecuteGroupLua(context, MainGroupID, "RogueStopChallenge", {BossPoolID,GroupId})

	--移除空气墙
	ScriptLib.RemoveEntityByConfigId(context, GroupId, EntityType.GADGET, AirWallConfigID)

	--设置gadget状态
	ScriptLib.SetGroupGadgetStateByConfigId(context, GroupId, BossOperatorConfigID, 0)

	--关闭雷电地板
	for i,v in ipairs(ThunderFloorList) do
		ScriptLib.SetGroupGadgetStateByConfigId(context, GroupId, v, 0)
	end

	return 0
end


function LF_Initialize_Group()
	for k,v in pairs(extrTriggers.initialtrigger) do
		table.insert(triggers, v)
		table.insert(suites[init_config.suite].triggers, v.name)
	end

	for k,v in pairs(extrTriggers.unloadtrigger) do
		table.insert(triggers, v)
	end
	return 0
end

LF_Initialize_Group()




