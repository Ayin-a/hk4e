
--自定义函数部分
local extrTriggers = {
	initialtrigger = {
		["Gadget_State_Change"] = { config_id = 8000001, name = "Gadget_State_Change", event= EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "gadget_state_change", trigger_count = 0 },
		["Random_Floor"] = { config_id = 8000002, name = "Random_Floor", event= EventType.EVENT_TIME_AXIS_PASS, source = "triggerElementFloor", condition = "", action = "action_timeaxis_randomfloor", trigger_count = 0 },
		["Challenge_Fail"] = { config_id = 8000003, name = "Challenge_Fail", event= EventType.EVENT_CHALLENGE_FAIL, source = "", condition = "", action = "action_challenge_fail", trigger_count = 0 },
		["ALL_PLAYER_DIE"] = { config_id = 8000004, name = "ALL_PLAYER_DIE", event= EventType.EVENT_DUNGEON_ALL_AVATAR_DIE, source = "", condition = "", action = "action_all_avatar_die", trigger_count = 0 },
		["Challenge_Success"] = { config_id = 8000005, name = "Challenge_Success", event= EventType.EVENT_CHALLENGE_SUCCESS, source = "", condition = "", action = "action_challenge_success", trigger_count = 0 },
	}
}

function DeduplicationRandom( context, configIDList, randomNum )
	math.randomseed(ScriptLib.GetServerTime(context))

	local TempList = {}

	local ReturnList = {}

	for i,v in ipairs(configIDList) do
		table.insert(TempList, v)
	end

	for i=1,randomNum do
		local TempNum = math.random(#TempList)

		table.insert(ReturnList, TempList[TempNum] )

		table.remove(TempList, TempNum)
	end


	return ReturnList
end




function gadget_state_change( context, evt )
	-- 监听玩法开始

	if evt.param2 ~= EnterConfigID then
		return 0
	end

	if evt.param1 == 202 then

		ScriptLib.PrintContextLog(context, "##EF LOG : Start Play")

		ScriptLib.InitTimeAxis(context, "triggerElementFloor", elemenFloorTimer, true)

		local CurList = DeduplicationRandom(context, floorList, 2)

		ScriptLib.SetGroupGadgetStateByConfigId(context, 0, CurList[1], 201)

		ScriptLib.SetGroupGadgetStateByConfigId(context, 0, CurList[2], 202)

	end

	

	return 0

end


function action_timeaxis_randomfloor( context, evt )

	ScriptLib.PrintContextLog(context, "##EF LOG : Random Floor")
	-- 每次随机一套地板
	for i,v in ipairs(floorList) do

		ScriptLib.SetGroupGadgetStateByConfigId(context, 0, v, 0)

	end

	local CurList = DeduplicationRandom(context, floorList, 2)

	ScriptLib.SetGroupGadgetStateByConfigId(context, 0, CurList[1], 201)

	ScriptLib.SetGroupGadgetStateByConfigId(context, 0, CurList[2], 202)

	return 0
end


function action_challenge_fail( context,evt )

	ScriptLib.PrintContextLog(context, "##EF LOG : End Play")

	ScriptLib.EndTimeAxis(context, "triggerElementFloor")

	for i,v in ipairs(floorList) do

		ScriptLib.SetGroupGadgetStateByConfigId(context, 0, v, 0)

	end

	return 0
end

function action_challenge_success( context,evt )

	ScriptLib.PrintContextLog(context, "##EF LOG : End Play")

	ScriptLib.EndTimeAxis(context, "triggerElementFloor")

	for i,v in ipairs(floorList) do

		ScriptLib.SetGroupGadgetStateByConfigId(context, 0, v, 0)

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

	ScriptLib.PrintContextLog(context, "##EF LOG : End Play")

	ScriptLib.EndTimeAxis(context, "triggerElementFloor")

	for i,v in ipairs(floorList) do

		ScriptLib.SetGroupGadgetStateByConfigId(context, 0, v, 0)
		
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