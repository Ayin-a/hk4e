
local extrTriggers = {
	initialtrigger = {
		["Room_Ready"] = { config_id = 8000001, name = "Room_Ready", event= EventType.EVENT_ROGUE_CELL_CONSTRUCT, source = "", condition = "", action = "action_WhenGetRoomType", trigger_count = 0 },
		["Start_Challenge"] = { config_id = 8000002, name = "Start_Challenge", event= EventType.EVENT_ROGUE_CELL_STATE_CHANGE, source = "", condition = "", action = "action_CellStateChange", trigger_count = 0 },
		["Challenge_Success"] = { config_id = 8000003, name = "Challenge_Success", event= EventType.EVENT_CHALLENGE_SUCCESS, source = "", condition = "", action = "action_ChallengeSuccess", trigger_count = 0 },
		["Challenge_Fail"] = { config_id = 8000004, name = "Challenge_Fail", event= EventType.EVENT_CHALLENGE_FAIL, source = "", condition = "", action = "action_ChallengeFail", trigger_count = 0 },
		["Enter_Room"] = { config_id = 8000005, name = "Enter_Room", event= EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EnterUnBattleRoom", trigger_count = 0 },
		["Leave_Room"] = { config_id = 8000006, name = "Leave_Room", event= EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_LeaveRoom", trigger_count = 0 },
		--["Monster_Die"] = { config_id = 8000006, name = "Monster_Die", event= EventType.EVENT_MONSTER_DIE_BEFORE_LEAVE_SCENE, source = "", condition = "", action = "action_monster_die", trigger_count = 0 },
	}
}

local MAX_battleroombuff_LV = 6
local MAX_reviveroombuff_LV = 2

--监听cell分配
function action_WhenGetRoomType(context, evt)
	--存下当前房间类型
	ScriptLib.SetGroupTempValue(context, "RoomType", evt.param2, {})

	return 0
end


-- function action_monster_die( context, evt )

-- 	local UidList = ScriptLib.GetSceneUidList(context)

-- 	-- 杀怪计数
-- 	ScriptLib.AddExhibitionAccumulableData(context, UidList[1], "Rogue_KillMonster_Count", 1)

-- 	return 0
-- end


function action_CellStateChange(context,evt)
	local UidList = ScriptLib.GetSceneUidList(context)

	--检查当前房间类型
	local roomType = ScriptLib.GetGroupTempValue(context, "RoomType", {})
	ScriptLib.PrintContextLog(context, "## RG_LOG : roomType == "..roomType)

	--存下当前poolID
	ScriptLib.SetGroupTempValue(context, "PoolId", evt.param2, {})


	--进入挑战状态
	if evt.param1 == 1 and (roomType == 3 or roomType ==4) then
		--开启挑战
		ScriptLib.ExecuteGroupLua(context, MainGroupID, "RogueStartChallenge", {evt.param2,GroupId})


	end
	
	--完成回复房间加BUFF
	if roomType == 5 and evt.param1 == 3 then

		local TeamValue = ScriptLib.GetTeamServerGlobalValue(context, UidList[1], "SGV_ROGUE_REVIVEROOMBUFF")

		ScriptLib.PrintContextLog(context, "##Rogue LOG : ReviveBUFF TeamValue =="..TeamValue)

		--改SGV
		if TeamValue >0 and TeamValue <= MAX_reviveroombuff_LV then
			ScriptLib.AddTeamServerGlobalValue(context, UidList[1], "SGV_ROGUE_REVIVEROOMBUFF", 1)
		end

	end

	--完成战斗房间加BUFF
	if (roomType == 3 or roomType == 4) and evt.param1 == 2 then

		local TeamValue = ScriptLib.GetTeamServerGlobalValue(context, UidList[1], "SGV_ROGUE_BATTLEROOMBUFF")

		ScriptLib.PrintContextLog(context, "##Rogue LOG : ReviveBUFF TeamValue =="..TeamValue)

		--改SGV
		if TeamValue >0 and TeamValue <= MAX_battleroombuff_LV then
			ScriptLib.AddTeamServerGlobalValue(context, UidList[1], "SGV_ROGUE_BATTLEROOMBUFF", 1)
		end
	end

	return 0
end

function action_EnterUnBattleRoom(context,evt)
	-- 玩家进入非战斗房直接开门
	local roomType = ScriptLib.GetGroupTempValue(context, "RoomType", {})

	if RegionID ~= evt.param1 then
		return 0
	end

	--设置进入房间
	ScriptLib.EnterRogueCell(context, GroupId)

	if roomType == 3 or roomType ==4 then

		--挑战房间加载eyepoint锚点
		ScriptLib.SetPlayerEyePoint(context, RegionID, RegionID)

		ScriptLib.PrintContextLog(context, "##Rogue LOG : Set EyePoint")

		return 0
	end

	if ScriptLib.GetRogueCellState(context, GroupId) ~= 0 then
		return 0
	end

	--设置为挑战完成
	ScriptLib.SetRogueCellState(context, GroupId, 2)

	return 0

end

function action_LeaveRoom( context,evt )

	local roomType = ScriptLib.GetGroupTempValue(context, "RoomType", {})

	if RegionID ~= evt.param1 then
		return 0
	end

	--清楚eyepoint锚点
	ScriptLib.ClearPlayerEyePoint(context, RegionID)
	

	return 0
end


function action_ChallengeSuccess(context,evt)
	-- 改变房间状态 完成
	ScriptLib.SetRogueCellState(context, GroupId, 2)

	--清理怪物
	ScriptLib.ExecuteGroupLua(context, MainGroupID, "RogueStopChallenge", {ScriptLib.GetGroupTempValue(context, "PoolId", {}),GroupId})


	return 0
end

function action_ChallengeFail(context,evt)
	-- 改变房间状态 未开始
	ScriptLib.SetRogueCellState(context, GroupId, 0)

	--清理怪物
	ScriptLib.ExecuteGroupLua(context, MainGroupID, "RogueStopChallenge", {ScriptLib.GetGroupTempValue(context, "PoolId", {}),GroupId})


	return 0
end

function RemoveBUFF( context )

	local UidList = ScriptLib.GetSceneUidList(context)

	ScriptLib.AddTeamServerGlobalValue(context, UidList[1], "SGV_ROGUE_SR_AreaNoEnemyAtkSpeedUp", -1)

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




