local extrTriggers = {
	initialtrigger = {
		["TimeAxis_Event"] = { config_id = 8000002, name = "TimeAxis_Event", event= EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "", action = "action_trigger_timeaxis", trigger_count = 0 },
		["Monster_Die"] = { config_id = 8000003, name = "Monster_Die", event= EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_monster_die", trigger_count = 0 },
		["Boss_Hp"] = { config_id = 8000004, name = "Boss_Hp", event= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "8002", condition = "", action = "action_boss_hp", trigger_count = 0 },
		["ALL_PLAYER_DIE"] = { config_id = 8000005, name = "ALL_PLAYER_DIE", event= EventType.EVENT_DUNGEON_ALL_AVATAR_DIE, source = "", condition = "", action = "action_all_avatar_die", trigger_count = 0 }
	}
}

local TimeAxis = {wind_force_interval}
local TimeAxisStart = {1}

function RefreshRandomElem( context, prev_context, ActivityStage )
	-- 刷新随机场地要素
	math.randomseed(ScriptLib.GetServerTime(context))
	randomIdex = math.random(#BossRandomList[ActivityStage])

	ScriptLib.SetGroupTempValue(context, "Index1", ActivityStage, {})
	ScriptLib.SetGroupTempValue(context, "Index2", randomIdex, {})
	ScriptLib.SetGroupTempValue(context, "LastWindFlowIndex", 0, {})

	ScriptLib.PrintContextLog(context, "## WINDFLORA_LOG : CurType Is ->"..BossRandomList[ActivityStage][randomIdex].type)

	if ActivityStage == 2 then
		ScriptLib.SetGroupTempValue(context, "Index2", 4, {})
		RandomWindFlow(context)
		return 0
	end

	if BossRandomList[ActivityStage][randomIdex].type == 1 then

		randomElmSuite = math.random(#BossRandomList[ActivityStage][randomIdex].suite_id)
		ScriptLib.AddExtraGroupSuite(context, 0, BossRandomList[ActivityStage][randomIdex].suite_id[randomElmSuite])

	elseif BossRandomList[ActivityStage][randomIdex].type == 2 then
		RandomWindFlow(context)
	elseif BossRandomList[ActivityStage][randomIdex].type == 3 then
		RandomFloor(context)
	elseif BossRandomList[ActivityStage][randomIdex].type == 4 then
		MoveBubble(context)
	end
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

	--ScriptLib.CauseDungeonFail(context)
	ScriptLib.ExecuteGroupLua(context, 235800001, "EndBossStage", {0,BossGroupID})

	return 0

end

function action_monster_die( context,evt )
	if BossGroupID ~= 235800008 and (ScriptLib.GetGroupMonsterCount(context)%2 ~= 0) then
		math.randomseed(ScriptLib.GetServerTime(context))
		gadgetState = math.random(201,203)
		if gadgetState == 201 then
			ScriptLib.ShowReminder(context, 358000006)
		elseif gadgetState == 202 then
			ScriptLib.ShowReminder(context, 358000007)
		elseif gadgetState == 203 then
			ScriptLib.ShowReminder(context, 358000005)
		end
		ScriptLib.SetGroupGadgetStateByConfigId(context, BossGroupID, ElementFallConfigID, gadgetState)
	elseif BossGroupID ~= 235800008 and (ScriptLib.GetGroupMonsterCount(context)%2 == 0) then
		ScriptLib.SetGroupGadgetStateByConfigId(context, BossGroupID, ElementFallConfigID, 0)
	end

	--处理挑战结束
	if ScriptLib.GetGroupMonsterCountByGroupId(context, BossGroupID) == 0 then
		ScriptLib.SetGroupGadgetStateByConfigId(context, BossGroupID, ElementFallConfigID, 0)
		ScriptLib.ExecuteGroupLua(context, 235800001, "EndBossStage", {1,BossGroupID})
		for i,v in ipairs(suites) do
			ScriptLib.RemoveExtraGroupSuite(context, BossGroupID, i)
		end
	end

	return 0
end

function action_boss_hp( context,evt )

	if BossGroupID == 235800008 and evt.param1 == BossConfigID and evt.param3 < boss_hp_threshold and ScriptLib.GetGroupTempValue(context, "BossHPTrigger", {}) == 0 then
		ScriptLib.PrintContextLog(context, "## WINDFLORA_LOG : BOSS_HP Is Low ->")
		ScriptLib.ShowReminder(context, 358000008)
		ScriptLib.SetGroupGadgetStateByConfigId(context, BossGroupID, ElementFallConfigID, 204)
		ScriptLib.SetGroupTempValue(context, "BossHPTrigger",1, {})
	end

	return 0
end

function RandomWindFlow( context )
	-- 随机风场
	ScriptLib.PrintContextLog(context, "## WINDFLORA_LOG : WindAxis Is Start !!!!!!")

	ScriptLib.InitTimeAxis(context, "WindFlowAxisStart", TimeAxisStart, false)

	ScriptLib.InitTimeAxis(context, "WindFlowAxis", TimeAxis, true)

	return 0
end

function RandomFloor( context )
	-- 随机地板
end

function action_trigger_timeaxis( context,evt)
	
	if evt.source_name == "WindFlowAxis" or evt.source_name == "WindFlowAxisStart" then

		ScriptLib.PrintContextLog(context, "## WINDFLORA_LOG : Trigger WindTimeAxis")

		local Index1 = ScriptLib.GetGroupTempValue(context, "Index1", {})
		local Index2 = ScriptLib.GetGroupTempValue(context, "Index2", {})
		local LastWindFlowIndex = ScriptLib.GetGroupTempValue(context, "LastWindFlowIndex", {})

		ScriptLib.PrintContextLog(context, "## WINDFLORA_LOG : LastWindFlowIndex Is ->"..LastWindFlowIndex)

		local CurSuiteList = {}

		for i,v in ipairs(BossRandomList[Index1][Index2].suite_id) do
			table.insert(CurSuiteList,v)
		end

		if LastWindFlowIndex ~= 0 then
			ScriptLib.RemoveExtraGroupSuite(context, BossGroupID, CurSuiteList[LastWindFlowIndex])
			table.remove(CurSuiteList,LastWindFlowIndex)
		end

		math.randomseed(ScriptLib.GetServerTime(context))
		randomSuiteIndex = math.random(#CurSuiteList)
		ScriptLib.PrintContextLog(context, "## WINDFLORA_LOG : CurSuiteList FullCount Is->"..#CurSuiteList)
		ScriptLib.PrintContextLog(context, "## WINDFLORA_LOG : randomIdex Is->"..randomSuiteIndex)


		ScriptLib.AddExtraGroupSuite(context, 0, CurSuiteList[randomSuiteIndex])

		ScriptLib.PrintContextLog(context, "## WINDFLORA_LOG : CurSuite Is ->"..CurSuiteList[randomSuiteIndex])

		if randomSuiteIndex >= LastWindFlowIndex and LastWindFlowIndex ~= 0 then
			randomSuiteIndex = randomSuiteIndex + 1
		end

		ScriptLib.SetGroupTempValue(context, "LastWindFlowIndex", randomSuiteIndex, {})
		
	end

	return 0

end

function MoveBubble( context )
	-- 移动水泡
	local Index1 = ScriptLib.GetGroupTempValue(context, "Index1", {})
	local Index2 = ScriptLib.GetGroupTempValue(context, "Index2", {})

	math.randomseed(ScriptLib.GetServerTime(context))
	randomSuiteIndex = math.random(#BossRandomList[Index1][Index2].suite_id)

	suitIndex = BossRandomList[Index1][Index2].suite_id[randomSuiteIndex]

	for i,v in ipairs(suites[suitIndex].gadgets) do
		ScriptLib.CreateGadget(context, { config_id = v })
		--ScriptLib.StopPlatform(context, v)
		ScriptLib.SetPlatformPointArray(context, v, bubble_point_array[v].point_array_id, bubble_point_array[v].point_id_list, {route_type = bubble_point_array[v].route_type})
	end


	return 0
end


function LF_Initialize_Group(triggers, suites)
	for k,v in pairs(extrTriggers.initialtrigger) do
		table.insert(triggers, v)
		table.insert(suites[init_config.suite].triggers, v.name)
	end
	return 0
end

LF_Initialize_Group(triggers, suites)