local extrTriggers = {
	initialtrigger = {
		["Challenge_Fail"] = { config_id = 8000001, name = "Challenge_Fail", event= EventType.EVENT_CHALLENGE_FAIL, source = "", condition = "", action = "action_challenge_fail", trigger_count = 0 },
		["ALL_PLAYER_DIE"] = { config_id = 8000005, name = "ALL_PLAYER_DIE", event= EventType.EVENT_DUNGEON_ALL_AVATAR_DIE, source = "", condition = "", action = "action_all_avatar_die", trigger_count = 0 },
		["Group_Load"] = { config_id = 8000006, name = "Group_Load", event= EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_group_load", trigger_count = 0 },
	}
}


function action_group_load( context, evt )
	ScriptLib.SetGroupTempValue(context, "WarmFloor", 0, {})

	return 0
end

--去重随机
function RandomArea(context, mode)
	math.randomseed(ScriptLib.GetServerTime(context))

	--根据模式不同随机一套冷板、暖板数量
	local randomCold = 0
	local randomWarm = 0

	if mode == 0 then
		randomCold = math.random(2,3)
		randomWarm = 1
	end

	if mode == 1 then
		randomCold = math.random(2,3)
		randomWarm = math.random(0,1)
	end

	if randomWarm == 0 then
		ScriptLib.ChangeGroupTempValue(context, "WarmFloor", 1, {})

		ScriptLib.PrintContextLog(context, "## SN_LOG : WarmFloor == "..ScriptLib.GetGroupTempValue(context, "WarmFloor", {}))
	elseif randomWarm == 1 then
		ScriptLib.SetGroupTempValue(context, "WarmFloor", 0, {})

		ScriptLib.PrintContextLog(context, "## SN_LOG : WarmFloor == "..ScriptLib.GetGroupTempValue(context, "WarmFloor", {}))
	end


	if ScriptLib.GetGroupTempValue(context, "WarmFloor", {}) == 3 then

		ScriptLib.PrintContextLog(context, "## SN_LOG : BAODI !")

		randomWarm =1
		ScriptLib.SetGroupTempValue(context, "WarmFloor", 0, {})
	end
	

	local  PlatformTable = {11003,11004,11005,11006,11007,11008,11009,11010,11011}

	local randomIdx= 0

	--初始化所有场
	for i=1,9 do
		ScriptLib.SetGroupGadgetStateByConfigId(context, 0, PlatformTable[i], 0)
	end

	--抽取3个冰场
	for i=0,randomCold do
		randomIdx = math.random(9-i)
		ScriptLib.SetGroupGadgetStateByConfigId(context, 0, PlatformTable[randomIdx], 202)
		--使用后移除该字段
		table.remove(PlatformTable, randomIdx)
	end
	--抽取0-1个暖场
	if randomWarm == 1 then
		randomIdx = math.random(8-randomCold)
		ScriptLib.SetGroupGadgetStateByConfigId(context, 0, PlatformTable[randomIdx], 201)
	end
	return 0
end	


function action_challenge_fail( context,evt )
	local  PlatformTable = {11003,11004,11005,11006,11007,11008,11009,11010,11011}

	for i,v in ipairs(PlatformTable) do
		ScriptLib.SetGroupGadgetStateByConfigId(context, 0, v, 0)
	end

	ScriptLib.CancelGroupTimerEvent(context, GroupID, "Snow_Timer")
	return 0
end

function action_all_avatar_die( context,evt )
	local  PlatformTable = {11003,11004,11005,11006,11007,11008,11009,11010,11011}
	-- 所有角色死亡
	local UidList = ScriptLib.GetSceneUidList(context)

	for i,v in ipairs(UidList) do
		if ScriptLib.IsPlayerAllAvatarDie(context, v) == false then
			return 0
		end
	end

	for i,v in ipairs(PlatformTable) do
		ScriptLib.SetGroupGadgetStateByConfigId(context, 0, v, 0)
	end
	
	ScriptLib.CancelGroupTimerEvent(context, GroupID, "Snow_Timer")
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

