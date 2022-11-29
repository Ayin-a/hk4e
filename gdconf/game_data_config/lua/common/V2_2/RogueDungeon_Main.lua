local extrTriggers = {
	initialtrigger = {
		["Room_Ready"] = { config_id = 9000001, name = "Room_Ready", event= EventType.EVENT_TIME_AXIS_PASS, source = "delayToClearMonster", condition = "", action = "ClearMonster", trigger_count = 0 },
		["ALL_PLAYER_DIE"] = { config_id = 9000002, name = "ALL_PLAYER_DIE", event= EventType.EVENT_DUNGEON_ALL_AVATAR_DIE, source = "", condition = "", action = "action_all_avatar_die", trigger_count = 0 },
		["Remainder_Region"] = { config_id = 8000003, name = "Remainder_Region", event= EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EnterRemainderRegion", trigger_count = 0 },
		["Gadget_Create"] = { config_id = 8000004, name = "Gadget_Create", event= EventType.EVENT_GADGET_CREATE, source = "", condition = "", action = "action_GadgetCreate", trigger_count = 0 },
		["Select_Option"] = { config_id = 8000005, name = "Select_Option", event= EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_SelectOption", trigger_count = 0 },
	}
}

local optionID = 205

function RemoveBUFF( context )

	local UidList = ScriptLib.GetSceneUidList(context)

	ScriptLib.AddTeamServerGlobalValue(context, UidList[1], "SGV_ROGUE_SR_AreaNoEnemyAtkSpeedUp", -1)

	return 0
end


function RogueStartChallenge( context, prev_context, monsterPool, groupID )
	local hasChallenge = 0
	local UidList = ScriptLib.GetSceneUidList(prev_context)
	local param = {}

	local MonsterBuff = ScriptLib.GetTeamServerGlobalValue(context, UidList[1], "SGV_ROGUECURSE_MONSTERBUFF")

	for i,v in ipairs(challengeList) do
		if v.monsterPool == monsterPool then
			hasChallenge = hasChallenge + 1
			--开启挑战

			--调整参数
			for i,v in ipairs(v.challengeParamList) do
				if v ~= -1 then
					table.insert(param,v)
				else
					table.insert(param, groupID)
				end
			end


			ScriptLib.ActiveChallenge(prev_context, param[1], param[2], param[3], param[4], param[5], param[6])

		 -- 	ScriptLib.CreateFatherChallenge(context, 101, 111175, 9999, {success = 1, fail = 1, fail_on_wipe=true})
		
			-- ScriptLib.AttachChildChallenge(context, 101, 103, 111173, challengeParamList,{},{success=1,fail=1}) 
			
			-- ScriptLib.StartFatherChallenge(context, 101)	

			--放怪
			if MonsterBuff == 1 then
				ScriptLib.AutoPoolMonsterTide(prev_context, 1, groupID, {v.monsterPool}, 0, {}, {MonsterAffix}, v.monsterPoolParamList)
			else
				ScriptLib.AutoPoolMonsterTide(prev_context, 1, groupID, {v.monsterPool}, 0, {}, {}, v.monsterPoolParamList)
			end

			--辅助怪
			if v.extraMonsterPool ~= 0 then
				if MonsterBuff == 1 then
					ScriptLib.AutoPoolMonsterTide(prev_context, 2, groupID, {v.extraMonsterPool}, 0, {}, {MonsterAffix}, v.extraMonsterPoolParamList)
				else
					ScriptLib.AutoPoolMonsterTide(prev_context, 2, groupID, {v.extraMonsterPool}, 0, {}, {}, v.extraMonsterPoolParamList)
				end	
			end
		end
	end

	if hasChallenge == 0 then
		--报错
		ScriptLib.PrintContextLog(prev_context, "## RG_LOG : Not Match The Challenge")
	elseif hasChallenge ==1 then
		ScriptLib.PrintContextLog(prev_context, "## RG_LOG : Challenge Start")
	else
		--报错
		ScriptLib.PrintContextLog(prev_context, "## RG_LOG : Duplicate Challenge Match")
	end

	return 0

end


function RogueStopChallenge( context, prev_context, monsterPool, groupID )
	ScriptLib.SetGroupTempValue(context, "monsterPool", monsterPool, {})
	ScriptLib.SetGroupTempValue(context, "groupID", groupID, {})

	--停止怪物潮
	ScriptLib.EndPoolMonsterTide(context, groupID, 1)

	--停止辅助怪物潮
	for i,v in ipairs(challengeList) do

		if v.monsterPool == monsterPool and v.extraMonsterPool ~= 0 then
			ScriptLib.EndPoolMonsterTide(context, groupID, 2)
		end

	end

	--延时清怪
	ScriptLib.InitTimeAxis(context, "delayToClearMonster", {1}, false)

	return 0
end


function action_GadgetCreate( context,evt )

	ScriptLib.PrintContextLog(context, "## RG_LOG : SerchPoint ID IS "..evt.param2)

	if evt.param2 == 70310145 then

		ScriptLib.PrintContextLog(context, "## RG_LOG : SerchPoint Set Opiton ")
		ScriptLib.SetWorktopOptionsByGroupId(context, MainGroupID, evt.param1, {optionID})
		
	end

	return 0
end


function action_SelectOption( context,evt )

	if evt.param2 == optionID then
		--根据configID不同，发送不同的reminder
		for i,v in ipairs(PointToReminderList) do
			if v.configID == evt.param1 then
				ScriptLib.ShowReminder(context, v.reminderID)
				ScriptLib.KillEntityByConfigId(context, {config_id = evt.param1})
				break
			end
		end
	end

	return 0
end


function action_EnterRemainderRegion( context,evt )
	local randomReminder = 0


	--复制一份remainderList
	local TempReminderList = {}

	for i,v in ipairs(ReminderList) do
		table.insert(TempReminderList, v)
	end

	--去重
	for i=1,10 do

		local curReminder = ScriptLib.GetGroupTempValue(context, "duplicateReminder"..i, {})
		ScriptLib.PrintContextLog(context, "## RG_LOG : duplicateReminder "..i.." IS "..curReminder)

		if curReminder  == 0 then
			break
		end

		for i,v in ipairs(TempReminderList) do
			if v == curReminder then
				table.remove(TempReminderList, i)
				break
			end
		end
	end

	--取随机reminder
	ScriptLib.PrintContextLog(context, "## RG_LOG : TempReminderList Long IS "..#TempReminderList)
	if #TempReminderList >= 1 then
		randomReminder = math.random(1,#TempReminderList)
	end

	if randomReminder == 0 then
		return 0 
	end

	ScriptLib.PrintContextLog(context, "## RG_LOG : randomReminder IS "..randomReminder)


	ScriptLib.ShowReminder(context, TempReminderList[randomReminder])

	ScriptLib.PrintContextLog(context, "## RG_LOG : ReminderID IS "..TempReminderList[randomReminder])


	--记录已经播过的reminder
	for i=1,10 do
		if ScriptLib.GetGroupTempValue(context, "duplicateReminder"..i, {}) == 0 then
			ScriptLib.SetGroupTempValue(context, "duplicateReminder"..i, TempReminderList[randomReminder], {})
			break
		end
	end

	--移除region
	ScriptLib.RemoveEntityByConfigId(context, MainGroupID, EntityType.REGION, evt.param1)

	return 0
end

function action_all_avatar_die( context,evt )
	-- 所有角色死亡
	local UidList = ScriptLib.GetSceneUidList(context)

	for i,v in ipairs(UidList) do
		if ScriptLib.IsPlayerAllAvatarDie(context, v) == false then
			return 0
		end
	end

	ScriptLib.CauseDungeonFail(context)

	return 0
end

function ClearMonster( context,evt )

	local monsterPool = ScriptLib.GetGroupTempValue(context, "monsterPool", {})
	local groupID = ScriptLib.GetGroupTempValue(context, "groupID", {})

	--停止怪物潮

	ScriptLib.ClearPoolMonsterTide(context, groupID, 1)


	--停止辅助怪物潮
	for i,v in ipairs(challengeList) do

		if v.monsterPool == monsterPool and v.extraMonsterPool ~= 0 then

			ScriptLib.ClearPoolMonsterTide(context, groupID, 2)
		end

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