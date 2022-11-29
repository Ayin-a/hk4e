local play={
	group_bigworld = 133002418,
	group_quest = 133002415,
	PlayType = 3,
	PlayId = 3
}


local extraTriggers={
	{config_id = 8000001,name = "Any_IceSquare_Die", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_any_gadget_die", action = "action_any_gadget_die", trigger_count = 0 },
	{config_id = 8000002,name = "Any_Specialice_Die", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_any_specialice_die", action = "action_any_specialice_die", trigger_count = 0 },
	{config_id = 8000003,name = "Monster_Die_Before_Leave_Scene", event = EventType.EVENT_MONSTER_DIE_BEFORE_LEAVE_SCENE, source = "", condition = "condition_monster_die_before_leave_scene", action = "action_monster_die_before_leave_scene", trigger_count = 0 },
	{ config_id = 8000004,name = "Battle_State", event = EventType.EVENT_SCENE_MP_PLAY_BATTLE_STATE, source = "", condition = "condition_battle_state", action = "action_battle_state", trigger_count = 0 },
	{ config_id = 8000005,name = "Battle_Result", event = EventType.EVENT_SCENE_MP_PLAY_BATTLE_RESULT, source = "", condition = "", action = "action_battle_result", trigger_count = 0 },
	{ config_id = 8000006,name = "TIMER_EVENT_TRANSFORM", event = EventType.EVENT_TIMER_EVENT, source = "transform", condition = "", action = "action_TIMER_EVENT_TRANSFORM", trigger_count = 0 },
	{config_id = 8000007,name = "First_Monster_Die", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_first_monster_die", action = "action_first_monster_die", trigger_count = 1 },
	{config_id = 8000008,name = "Ice_Square_Create", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_ice_square_create", action = "action_ice_square_create", trigger_count = 0 },
	{ config_id = 8000009,name = "LEAVE_REGION", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION", action = "action_EVENT_LEAVE_REGION", forbid_guest = false, trigger_count = 0 },
	{config_id = 8000010,name = "Any_Player_Die", event = EventType.EVENT_SCENE_MP_PLAY_ALL_AVATAR_DIE, source = "", condition = "condition_EVENT_AVATAR_DIE", action = "action_EVENT_LEAVE_REGION", trigger_count = 0 },
	{config_id = 8000011,name = "Reset_Gadget_State", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "condition_Reset_Gadget_State", action = "action_Reset_Gadget_State", trigger_count = 0 },
	{config_id = 8000012,name = "Gadget_Create_Check", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "", action = "action_Gadget_Create_Log", trigger_count = 0 },
	{config_id = 8000013,name = "Gadget_Die_Check", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_Gadget_Die_Log", trigger_count = 0 },
	{config_id = 8000014,name = "Gadget_State_Change", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_Gadget_State_Log", trigger_count = 0 },
	{config_id = 8000015,name = "MP_PLAY_BATTLE_INTERRUPT", event = EventType.EVENT_SCENE_MP_PLAY_BATTLE_INTERRUPT, source = "", condition = "", action = "action_SCENE_MP_PLAY_BATTLE_INTERRUPT", trigger_count = 0 },
	{ config_id = 8000016,name = "TIMER_EVENT_PHASECHECKONE", event = EventType.EVENT_TIMER_EVENT, source = "phaseonecheck", condition = "", action = "action_PHASE_ONE_CHECK", trigger_count = 0 },
	{ config_id = 8000017,name = "TIMER_EVENT_PHASECHECKTWO", event = EventType.EVENT_TIMER_EVENT, source = "phasetwocheck", condition = "", action = "action_PHASE_TWO_CHECK", trigger_count = 0 },
	{ config_id = 8000019,name = "LEAVE_REGION2", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION2", action = "action_EVENT_LEAVE_REGION2", forbid_guest = false, trigger_count = 0 },
	{ config_id = 8000020,name = "ENTER_REGION", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION", action = "action_EVENT_ENTER_REGION", forbid_guest = false, trigger_count = 0 },
}


local repairTriggers={
	{ config_id = 8000018,name = "Boss_Refresh", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "", action = "action_BOSS_REFRESH", trigger_count = 0 },
}

function LF_Initialize_Group(triggers, suites)
	for i=1,#extraTriggers do
		table.insert(triggers, extraTriggers[i])
		table.insert(suites[init_config.suite].triggers,extraTriggers[i].name)
	end
	if defs.groupId==133002415 then
		for i=1,#extraTriggers do
			--table.insert(triggers, extraTriggers[i])
			table.insert(suites[1].triggers,extraTriggers[i].name)
		end
	end
	if defs.groupId==133002418 then
		table.insert(variables, {  config_id=50000001,name = "phaseOneIceRevert", value = 0})
		for i=1,#repairTriggers do
			table.insert(triggers, repairTriggers[i])
			--table.insert(triggers, extraTriggers[i])
			table.insert(suites[2].triggers,repairTriggers[i].name)
		end
	end

end

function action_BOSS_REFRESH(context, evt)
	if evt.param1==418001 then
		ScriptLib.FailScenePlayBattle(context, defs.groupId)
	end
	return 0
end

function action_PHASE_ONE_CHECK(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "phaseonecheckvalue") ~= 1 then
		ScriptLib.AddEntityGlobalFloatValueByConfigId(context, {defs.bossId}, "_SERVER_REGISVINE_ICE_ACTIVITY_FLAG_PHASE01", 1)
		ScriptLib.CreateGroupTimerEvent(context, defs.groupId, "phaseonecheck", 1)
	end
	return 0
end

function action_PHASE_TWO_CHECK(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "phasetwocheckvalue") ~= 1 then
		ScriptLib.AddEntityGlobalFloatValueByConfigId(context, {defs.bossId}, "_SERVER_REGISVINE_ICE_ACTIVITY_FLAG_PHASE02", 1)
		ScriptLib.CreateGroupTimerEvent(context, defs.groupId, "phasetwocheck", 1)
	end
	return 0
end

function action_SCENE_MP_PLAY_BATTLE_INTERRUPT(context, evt)
	ScriptLib.PrintContextLog(context, "MPPLAY INTERRUPT"..evt.param1.."->"..evt.param2.."->"..evt.param3)
	ScriptLib.SetGadgetStateByConfigId(context,defs.iceStormId,GadgetState.GearStop)
	if defs.inteeGadget ~= nil then
		ScriptLib.SetGadgetStateByConfigId(context,defs.inteeGadget,GadgetState.Default)
	end
	ScriptLib.RemoveEntityByConfigId(context, defs.groupId, EntityType.GADGET, defs.iceStormId)
	ScriptLib.RemoveEntityByConfigId(context, defs.groupId, EntityType.GADGET, defs.specialice1)
	ScriptLib.RemoveEntityByConfigId(context, defs.groupId, EntityType.GADGET, defs.specialice2)
	ScriptLib.RemoveEntityByConfigId(context, defs.groupId, EntityType.GADGET, defs.specialice3)
	if defs.inteeGadget ~= nil then
		ScriptLib.RemoveEntityByConfigId(context, defs.groupId, EntityType.GADGET, defs.inteeGadget)
	end
	ScriptLib.RefreshGroup(context,{group_id=defs.groupId,suite=1})
	return 0
end

function action_Gadget_Create_Log(context, evt)
	ScriptLib.PrintContextLog(context, "Gadget Created->"..evt.param1)
	return 0
end

function action_Gadget_Die_Log(context, evt)
	ScriptLib.PrintContextLog(context, "Gadget Dead->"..evt.param1)
	return 0
end

function action_Gadget_State_Log(context, evt)
	ScriptLib.PrintContextLog(context, "Gadget State Changed->"..evt.param2.." From "..evt.param3.." To "..evt.param1)
	return 0
end

function condition_Reset_Gadget_State(context, evt)
	if evt.param1 == 1 then 
		return true
	end
	return false
end

function action_Reset_Gadget_State(context, evt)
	ScriptLib.CancelGroupTimerEvent(context, defs.groupId, "phaseonecheck")
	ScriptLib.CancelGroupTimerEvent(context, defs.groupId, "phasetwocheck")
	if defs.inteeGadget ~= nil then
		ScriptLib.CreateGadget(context, { config_id = defs.inteeGadget })
	end
	ScriptLib.SetGadgetStateByConfigId(context,defs.specialice1,GadgetState.Default)
	ScriptLib.SetGadgetStateByConfigId(context,defs.specialice2,GadgetState.Default)
	ScriptLib.SetGadgetStateByConfigId(context,defs.specialice3,GadgetState.Default)
	if defs.inteeGadget ~= nil then
		ScriptLib.SetGadgetStateByConfigId(context,defs.inteeGadget,GadgetState.Default)
	end
	return 0
end

function condition_EVENT_LEAVE_REGION(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "isStarted") ~= 1 then
		return false
	end
	if evt.param1 ~= defs.region then
		return false
	end
	uidList=ScriptLib.GetSceneUidList(context)
	local count=0
	for i=1,#uidList do
		if ScriptLib.IsPlayerAllAvatarDie(context, uidList[i]) or (calculateXZDistanceOfTwoEntity(context,ScriptLib.GetAvatarEntityIdByUid(context, uidList[i]),ScriptLib.GetEntityIdByConfigId(context, defs.bossId))>=25) then
			count=count+1
		end
	end
	if count >= (#uidList) then
		return true
	end
	return false
end

function condition_EVENT_LEAVE_REGION2(context, evt)
	if evt.param1 ~= 418036 then
		return false
	end
	return true
end

function action_EVENT_LEAVE_REGION2(context, evt)
	if context.uid~=0 then
		ScriptLib.ClearPlayerEyePoint(context, 418067)
		ScriptLib.SetPlayerGroupVisionType(context, {context.uid}, {1})
	end
	return 0
end


function condition_EVENT_ENTER_REGION(context, evt)
	if evt.param1 ~= 418067 then
		return false
	end
	return true
end

function action_EVENT_ENTER_REGION(context, evt)
	if context.uid~=0 then
		local small_region={}
		local big_region={}
		for i=1,#regions do
			if regions[i].config_id==418067 then
				small_region=regions[i]
			end
			if regions[i].config_id==418036 then
				big_region=regions[i]
			end
		end
		TrySetPlayerEyePoint(context, small_region, big_region, 1, {0})
	end
	return 0
end

function condition_EVENT_AVATAR_DIE(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "isStarted") ~= 1 then
		return false
	end
	uidList=ScriptLib.GetSceneUidList(context)
	local count=0
	for i=1,#uidList do
		if ScriptLib.IsPlayerAllAvatarDie(context, uidList[i]) or (calculateXZDistanceOfTwoEntity(context,ScriptLib.GetAvatarEntityIdByUid(context, uidList[i]),ScriptLib.GetEntityIdByConfigId(context, defs.bossId))>=25) then
			count=count+1
		end
	end
	if count >= (#uidList) then
		return true
	end
	return false
end

function calculateXZDistanceOfTwoEntity(context,entity1,entity2)
	local pos1=ScriptLib.GetPosByEntityId(context, entity1)
	local pos2=ScriptLib.GetPosByEntityId(context, entity2)
	local distance=math.sqrt((pos1.x-pos2.x)*(pos1.x-pos2.x)+(pos1.z-pos2.z)*(pos1.z-pos2.z))
	return distance
end


function action_EVENT_LEAVE_REGION(context, evt)
	ScriptLib.FailScenePlayBattle(context, defs.groupId)
	return 0
end

function condition_ice_square_create(context, evt)
	if evt.param1 == defs.iceSquareId then 
		return true
	end
	return false
end

function action_ice_square_create(context, evt)
	ScriptLib.ShowReminderRadius(context, 400017, {x=1080,y=285,z=-439}, 25)
	return 0
end

function condition_first_monster_die(context, evt)
	if defs.groupId == 133002418 then 
		return true
	end
	return false
end

function action_first_monster_die(context, evt)
	ScriptLib.ShowReminderRadius(context, 400016, {x=1080,y=285,z=-439}, 25)
	return 0
end

function action_TIMER_EVENT_TRANSFORM(context, evt)
	ScriptLib.TransPlayerToPos(context, {uid_list =ScriptLib.GetSceneUidList(context), pos = {x=1121, y=286, z=-425}, radius = 2, rot = {x=0, y=180, z=0},is_skip_ui=true})
	return 0
end

function action_battle_result(context, evt)
	if evt.param3 == 1 then
		LF_Battle_Win(context, evt)
	elseif evt.param3 == 0 then
		LF_Battle_Lose(context, evt)
	--elseif evt.param3 == 2 then
		--LF_Battle_Stop(context, evt)
	end
	return 0
end

function condition_battle_state(context, evt)
	if defs.groupId == play.group_bigworld then
		ScriptLib.PrintContextLog(context, "## ICEFLOWERBOSS_LOG: battle_state : param1->"..evt.param1.." | param2->"..evt.param2.." | param3->"..evt.param3)
	end
	if evt.param1 == play.PlayType and evt.param2 == play.PlayId then 
		return true
	end
	return false
end

function action_battle_state(context, evt)
	--BATTLE_PREPARE
	if evt.param3 == 2 then
		LF_Battle_Prepare(context, evt)
	--BATTLE_READY
	elseif evt.param3 == 3 then
		LF_Battle_Ready(context, evt)
	--BATTLE_PRESTART
	elseif evt.param3 == 4 then
		LF_Battle_Prestart(context, evt)
	--BATTLE_START
	elseif evt.param3 == 5 then
		LF_Battle_Start(context, evt)
	--[[--BATTLE_STOP
	elseif evt.param3 == 6 then
		LF_Battle_Stop(context, evt)--]]
	elseif defs.groupId == play.group_bigworld then
		ScriptLib.PrintContextLog(context, "## ICEFLOWERBOSS_ERR : Invalid Battle State")
		return -1
	end
	return 0
end

--检测急冻树死亡
function condition_monster_die_before_leave_scene(context, evt)
	if evt.param1 == defs.bossId then
		return true
	end
	return false
end

function action_monster_die_before_leave_scene(context, evt)
	local uid=context.uid
	ScriptLib.PrintContextLog(context, "## ICEFLOWERBOSS_LOG : action_monster_die_before_leave_scene uid:"..uid)
	if uid~=0 and uid ~=nil then
		ScriptLib.SetScenePlayBattleUidValue(context, 0, uid, "AVATAR_BOSS_KILL", 1)
	end
	--增加玩法总进度
	ScriptLib.AddScenePlayBattleProgress(context, defs.groupId, 301)
	return 0
end

function condition_any_gadget_die(context, evt)
	if evt.param1 ~= defs.iceSquareId  then
		return false
	end
	return true
end
--冰立方死亡创建屏障
function action_any_gadget_die(context, evt)
	ScriptLib.PrintContextLog(context, "## ICEFLOWERBOSS_LOG : AVATAR_ICESHIELD_KILL UID:"..context.uid)
	ScriptLib.SetGroupVariableValue(context, "iceCubeAlive", 0)
	if ScriptLib.GetGroupVariableValue(context, "notCreateIceShieldActivated") ~= 1 then
		if context.uid ~= 0 then
			local uid = context.uid
			local oldCount = ScriptLib.GetScenePlayBattleUidValue(context, 0, uid, "AVATAR_ICESHIELD_KILL_COUNT")
			ScriptLib.SetScenePlayBattleUidValue(context, 0, uid, "AVATAR_ICESHIELD_KILL_COUNT", oldCount+1)
		end
		ScriptLib.KillEntityByConfigId(context, { config_id = defs.targetId })
		local idx=ScriptLib.GetGroupVariableValue(context, "positionIdx")
		ScriptLib.CreateGadgetByConfigIdByPos(context, defs.iceShieldId, gadgets[idx].pos,gadgets[idx].rot)
	end
	ScriptLib.SetGroupVariableValue(context, "notCreateIceShieldActivated", 0)
	return 0
end

--特殊冰死亡
function condition_any_specialice_die(context, evt)
	if evt.param1 == defs.specialice1 then
		return true
	end
	if evt.param1 == defs.specialice2 then
		return true
	end
	if evt.param1 == defs.specialice3 then
		return true
	end
	return false
end
--特殊冰死亡加uidvalue
function action_any_specialice_die(context, evt)
	local configId = evt.param1
	local uidValue = configId.."_Hit_Uid"
	local uid = ScriptLib.GetGroupVariableValue(context, uidValue)
	ScriptLib.PrintContextLog(context, "## ICEFLOWERBOSS_LOG : action_any_specialice_die uid:"..uid)
	if uid ~= 0 and uid ~=nil then
		local oldCount = ScriptLib.GetScenePlayBattleUidValue(context, 0, uid, "AVATAR_SPECIALICE_KILL_COUNT")
		ScriptLib.SetScenePlayBattleUidValue(context, 0, uid, "AVATAR_SPECIALICE_KILL_COUNT", oldCount+1)
    end
    if ScriptLib.GetGroupVariableValue(context, "phaseOneIceRevert") ~= 1 then
    	ScriptLib.CreateGadget(context, { config_id = evt.param1 })
    end
    return 0
end

--------------------------------------------
--------------------------------------------

function LF_Battle_Prepare(context, evt)
	ScriptLib.PrintContextLog(context, "## ICEFLOWERBOSS_LOG : LF_Battle_Prepare")
	--ScriptLib.PrintLog("================VERSION 76=========================")
	--关闭大陨石交互
	--ScriptLib.SetGadgetEnableInteract(context, defs.groupId, defs.inteeGadget, false)
	if defs.inteeGadget ~= nil then
		ScriptLib.KillGroupEntity(context,{group_id=defs.groupId,gadgets={defs.inteeGadget}})
	end
	--ScriptLib.SetGroupGadgetStateByConfigId(context, defs.groupId, defs.inteeGadget, GadgetState.GearStart)
	return 0
end

function LF_Battle_Ready(context, evt)
	--ScriptLib.PrintContextLog(context, "## ASTER_LOG : LF_Battle_Ready")
	--随机难度
	--[[
	local D_str = LF_Random_Play_Difficulty(context, evt)
	local D_num = 0
	if D_str == "normal" then
		D_num = 1
	elseif D_str == "hard" then
		D_num = 2
	elseif D_str == "nightmare" then
		D_num = 3
	elseif D_str == "easy" then
		D_num = 4
	end
	--启用playEntity
	LF_Attach_Ability(context, evt, D_num, D_str)
	]]--
	--开启主玩法
	ScriptLib.PrestartScenePlayBattle(context, {duration = 600,start_cd = 5,progress_stage = {0,100,200,300}, group_id = defs.groupId, mode = 200})
	ScriptLib.CreateGadget(context, { config_id = 418020 })
	ScriptLib.CreateGadget(context, { config_id = 418026 })
	ScriptLib.CreateGadget(context, { config_id = 418062 })
	--写入难度
	--LF_Set_Battle_Difficulty(context, evt, D_num)
	--生成Buff序列
	--LF_Init_Uid_Op_Buff(context, evt)--]]
	return 0
end

function LF_Battle_Prestart(context, evt)
	--3秒倒计时提醒
	ScriptLib.PrintContextLog(context, "## ICEFLOWERBOSS_LOG : LF_Battle_Prestart")
	ScriptLib.SetGroupVariableValue(context, "phaseOneIceRevert", 1)
	--[[--随机难度
	LF_Random_Play_Difficulty(context, evt)
	--生成Buff序列
	LF_Init_Uid_Op_Buff(context, evt)--]]
	return 0
end

function LF_Battle_Start(context, evt)
	ScriptLib.SetGroupVariableValue(context, "isStarted", 1)
	--正式开始
	if ScriptLib.GetScenePlayBattleType(context, defs.groupId) ==1 then
		ScriptLib.AutoMonsterTide(context, 1, defs.groupId, defs.monsterTideOne, 999, 3, 3)
	elseif ScriptLib.GetScenePlayBattleType(context, defs.groupId) ==2 then
		ScriptLib.AutoMonsterTide(context, 2, defs.groupId, defs.monsterTideTwo, 999, 3, 3)
	end
	
	--ScriptLib.AutoMonsterTide(context, 1, defs.groupId, {defs.monsterOne,defs.monsterTwo}, 999, 1, 1) 

	ScriptLib.SetGadgetStateByConfigId(context,defs.specialice1,GadgetState.GearStart)
	ScriptLib.SetGadgetStateByConfigId(context,defs.specialice2,GadgetState.GearStart)
	ScriptLib.SetGadgetStateByConfigId(context,defs.specialice3,GadgetState.GearStart)
	ScriptLib.AddExtraGroupSuite(context, defs.groupId, 2)
	ScriptLib.SetGroupVariableValue(context, "MonsterTideCheck", 0)
	--怪物转阶段
	ScriptLib.AddEntityGlobalFloatValueByConfigId(context, {418001}, "_SERVER_REGISVINE_ICE_ACTIVITY_FLAG_PHASE01", 1)
	ScriptLib.CreateGroupTimerEvent(context, defs.groupId, "phaseonecheck", 1)
	return 0
end

function LF_Battle_Win(context, evt)
	ScriptLib.PrintContextLog(context, "## ICEFLOWERBOSS_LOG : LF_Battle_Win")
	ScriptLib.SetGadgetStateByConfigId(context,defs.iceStormId,GadgetState.GearStop)
	if defs.inteeGadget ~= nil then
		ScriptLib.SetGadgetStateByConfigId(context,defs.inteeGadget,GadgetState.Default)
	end
	--ScriptLib.KillGroupEntity(context,{group_id=defs.groupId,monsters={defs.monsterOne,defs.monsterTwo,defs.monsterThree,defs.monsterFour},gadgets={defs.iceStormId,defs.specialice1,defs.specialice2,defs.specialice3,defs.inteeGadget}})
	ScriptLib.RemoveEntityByConfigId(context, defs.groupId, EntityType.GADGET, defs.iceStormId)
	ScriptLib.RemoveEntityByConfigId(context, defs.groupId, EntityType.GADGET, defs.specialice1)
	ScriptLib.RemoveEntityByConfigId(context, defs.groupId, EntityType.GADGET, defs.specialice2)
	ScriptLib.RemoveEntityByConfigId(context, defs.groupId, EntityType.GADGET, defs.specialice3)
	if defs.inteeGadget ~= nil then
		ScriptLib.RemoveEntityByConfigId(context, defs.groupId, EntityType.GADGET, defs.inteeGadget)
	end
	ScriptLib.RefreshGroup(context,{group_id=defs.groupId,suite=1})
	ScriptLib.CreateScenePlayGeneralRewardGadget(context, {group_id = defs.groupId, config_id = defs.rewardGadget})
	--ScriptLib.CreateGadget(context,{config_id=defs.rewardGadget})
	ScriptLib.CreateGroupTimerEvent(context, defs.groupId, "transform", 3)
	--ScriptLib.TransPlayerToPos(context, {uid_list =ScriptLib.GetSceneUidList(context), pos = {x=1121, y=286, z=-425}, radius = 2, rot = {x=0, y=180, z=0},is_skip_ui=true}) 
	--ScriptLib.SetGadgetEnableInteract(context, defs.groupId, defs.inteeGadget, true)
	return 0
end

function LF_Battle_Lose(context, evt)
	ScriptLib.PrintContextLog(context, "## ICEFLOWERBOSS_LOG : LF_Battle_Lose")
	ScriptLib.SetGadgetStateByConfigId(context,defs.iceStormId,GadgetState.GearStop)
	if defs.inteeGadget ~= nil then
		ScriptLib.SetGadgetStateByConfigId(context,defs.inteeGadget,GadgetState.Default)
	end
	--ScriptLib.KillGroupEntity(context,{group_id=defs.groupId,monsters={defs.monsterOne,defs.monsterTwo,defs.monsterThree,defs.monsterFour},gadgets={defs.iceStormId,defs.specialice1,defs.specialice2,defs.specialice3,defs.inteeGadget}})
	ScriptLib.RemoveEntityByConfigId(context, defs.groupId, EntityType.GADGET, defs.iceStormId)
	ScriptLib.RemoveEntityByConfigId(context, defs.groupId, EntityType.GADGET, defs.specialice1)
	ScriptLib.RemoveEntityByConfigId(context, defs.groupId, EntityType.GADGET, defs.specialice2)
	ScriptLib.RemoveEntityByConfigId(context, defs.groupId, EntityType.GADGET, defs.specialice3)
	if defs.inteeGadget ~= nil then
		ScriptLib.RemoveEntityByConfigId(context, defs.groupId, EntityType.GADGET, defs.inteeGadget)
	end
	--ScriptLib.RemoveEntityByConfigId(context, defs.groupId, EntityType.MONSTER, defs.bossId)
	ScriptLib.RefreshGroup(context,{group_id=defs.groupId,suite=1})
	ScriptLib.CreateGroupTimerEvent(context, defs.groupId, "transform", 3)
	--ScriptLib.TransPlayerToPos(context, {uid_list =ScriptLib.GetSceneUidList(context), pos = {x=1121, y=286, z=-425}, radius = 2, rot = {x=0, y=180, z=0},is_skip_ui=true}) 
	--ScriptLib.SetGadgetEnableInteract(context, defs.groupId, defs.inteeGadget, true)
	return 0
end

function LF_Battle_Stop(context, evt)
	ScriptLib.PrintContextLog(context, "## ICEFLOWERBOSS_LOG : LF_Battle_Stop")
	ScriptLib.SetGadgetStateByConfigId(context,defs.iceStormId,GadgetState.GearStop)
	if defs.inteeGadget ~= nil then
		ScriptLib.SetGadgetStateByConfigId(context,defs.inteeGadget,GadgetState.Default)
	end
	--ScriptLib.KillGroupEntity(context,{group_id=defs.groupId,monsters={defs.monsterOne,defs.monsterTwo,defs.monsterThree,defs.monsterFour},gadgets={defs.iceStormId,defs.specialice1,defs.specialice2,defs.specialice3,defs.inteeGadget}})
	ScriptLib.RemoveEntityByConfigId(context, defs.groupId, EntityType.GADGET, defs.iceStormId)
	ScriptLib.RemoveEntityByConfigId(context, defs.groupId, EntityType.GADGET, defs.specialice1)
	ScriptLib.RemoveEntityByConfigId(context, defs.groupId, EntityType.GADGET, defs.specialice2)
	ScriptLib.RemoveEntityByConfigId(context, defs.groupId, EntityType.GADGET, defs.specialice3)
	if defs.inteeGadget ~= nil then
		ScriptLib.RemoveEntityByConfigId(context, defs.groupId, EntityType.GADGET, defs.inteeGadget)
	end
	--ScriptLib.RemoveEntityByConfigId(context, defs.groupId, EntityType.MONSTER, defs.bossId)
	ScriptLib.RefreshGroup(context,{group_id=defs.groupId,suite=1})
	--ScriptLib.CreateGroupTimerEvent(context, defs.groupId, "transform", 3)
	ScriptLib.TransPlayerToPos(context, {uid_list =ScriptLib.GetSceneUidList(context), pos = {x=1121, y=286, z=-425}, radius = 2, rot = {x=0, y=180, z=0},is_skip_ui=false})
	--ScriptLib.TransPlayerToPos(context, {uid_list =ScriptLib.GetSceneUidList(context), pos = {x=1121, y=286, z=-425}, radius = 2, rot = {x=0, y=180, z=0},is_skip_ui=true}) 
	--ScriptLib.SetGadgetEnableInteract(context, defs.groupId, defs.inteeGadget, true)
	return 0
end

--创建冰立方时同时创建龙血结晶生成器
function CreateDulinsOreGenerators(context,idx)
	math.randomseed(ScriptLib.GetServerTime(context))
	local count=math.random(2,3)
	for i=1,count do
		ScriptLib.CreateGadget(context, { config_id = defs.bloodOrePositions[idx][i] })
	end
	return 0
end


--随机创建冰立方
function CreateIceShield(context)
	ScriptLib.SetGroupVariableValue(context, "notCreateIceShieldActivated", 0)
	alive=ScriptLib.GetGroupVariableValue(context, "iceCubeAlive")
	if alive ~=1 then
		local newIdx=1
		math.randomseed(ScriptLib.GetServerTime(context))
		newIdx=math.random(#defs.randomPositions)
		for i=1,#gadgets do
			if gadgets[i].config_id==defs.randomPositions[newIdx] then
				ScriptLib.CreateGadgetByConfigIdByPos(context, defs.iceSquareId, gadgets[i].pos,gadgets[i].rot)
				ScriptLib.CreateGadgetByConfigIdByPos(context, defs.targetId, gadgets[i].pos,gadgets[i].rot)
				ScriptLib.SetGroupVariableValue(context, "positionIdx", i)
				ScriptLib.SetGroupVariableValue(context, "iceCubeAlive", 1)
			end
		end
		local count=math.random(2,3)
		for j=1,count do
			ScriptLib.CreateGadget(context, { config_id = defs.bloodOrePositions[newIdx][j] })
		end
		--CreateDulinsOreGenerators(context,newIdx)
	end	
	return 0
end

--[[
--创建离BOSS正面最近的冰立方
function CreateNearestIceShield(context)
	alive=ScriptLib.GetGroupVariableValue(context, "iceCubeAlive")
	if alive ~=1 then
		local minOne={angle=180,idx=-1}
		local vector={}
		local monsterRotate=ScriptLib.GetRotationByEntityId(context, 24001).y
		local monsterForward=CalculateMonsterForward(monsterRotate)
		local monsterPosition=monsters[1].pos
		for i=1,#defs.randomPositions do
			for j=1,#gadgets do
				if gadgets[j].config_id==defs.randomPositions[i] then
					vector.x=gadgets[j].pos.z-monsterPosition.z
					vector.y=gadgets[j].pos.x-monsterPosition.x
					local angle=CalculateRotate(monsterForward.x,monsterForward.y,vector.x,vector.y)
					if angle<minOne.angle then
						minOne.angle=angle
						minOne.idx=j
					end
				end
			end
		end
		ScriptLib.CreateGadgetByConfigIdByPos(context, defs.iceSquareId, gadgets[minOne.idx].pos,gadgets[minOne.idx].rot)
		ScriptLib.CreateGadgetByConfigIdByPos(context, defs.targetId, gadgets[minOne.idx].pos,gadgets[minOne.idx].rot)
		ScriptLib.SetGroupVariableValue(context, "positionIdx", minOne.idx)
		ScriptLib.SetGroupVariableValue(context, "iceCubeAlive", 1)
		CreateDulinsOreGenerators(minOne.idx)
	end	
end

function CalculateMonsterForward(monsterRotate)
	local monsterForward={}
	monsterForward.x=math.cos(math.rad(monsterRotate))
	monsterForward.y=math.sin(math.rad(monsterRotate))
	return monsterForward
end
]]--

function CalculateRotate(x1,y1,x2,y2)
	local cos=(x1*x2+y1*y2)/(math.sqrt(x1*x1+y1*y1)*math.sqrt(x2*x2+y2*y2))
	local rotate=math.deg(math.acos(cos))
	return rotate
end

function DestoryIceShieldActivated(context)
	ScriptLib.KillEntityByConfigId(context, { config_id = defs.iceShieldId })
	return 0
end
--销毁冰立方，不触发屏障
function DistoryIceShield(context)
	ScriptLib.SetGroupVariableValue(context, "notCreateIceShieldActivated", 1)
	ScriptLib.KillEntityByConfigId(context, { config_id = defs.iceSquareId })
	ScriptLib.KillEntityByConfigId(context, { config_id = defs.targetId })
	return 0
end

function CreateIceStorm(context)
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.groupId, defs.iceStormId, GadgetState.Default)
	return 0
end
function DestoryIceStorm(context)
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.groupId, defs.iceStormId, GadgetState.GearStop)
	return 0
end

function MonsterPhaseOneCheck(context)
	ScriptLib.SetGroupVariableValue(context, "phaseonecheckvalue", 1)
	return 0
end

function MonsterPhaseTwoCheck(context)
	ScriptLib.SetGroupVariableValue(context, "phasetwocheckvalue", 1)
	return 0
end

function StartMonsterTide(context)
	if ScriptLib.GetGroupVariableValue(context, "MonsterTideCheck") ==0 then
		if ScriptLib.GetScenePlayBattleType(context, defs.groupId) ==1 then
			ScriptLib.KillMonsterTide(context, defs.groupId, 1)
			ScriptLib.AutoMonsterTide(context, 3, defs.groupId, defs.monsterTideOne, 999, 1, 1) 
		elseif ScriptLib.GetScenePlayBattleType(context, defs.groupId) ==2 then
			ScriptLib.KillMonsterTide(context, defs.groupId, 2)
			ScriptLib.AutoMonsterTide(context, 3, defs.groupId, defs.monsterTideTwo, 999, 1, 1) 
		elseif defs.groupId==133002415 then
			ScriptLib.AutoMonsterTide(context, 3, defs.groupId, defs.monsterTideOne, 999, 1, 1) 
		end
		ScriptLib.SetGroupVariableValue(context, "MonsterTideCheck", 1)
	else
		ScriptLib.ContinueAutoMonster(context, defs.groupId, 3)
	end
	return 0
end

function PauseMonsterTide(context)
	ScriptLib.PauseAutoMonsterTide(context, defs.groupId, 3)
	return 0
end

function KillAllMonsters(context)
	ScriptLib.PauseAutoMonsterTide(context, defs.groupId, 3)
	--[[for i=1,#monsters do
		if monsters[i].monster_id~=26020102 then
			ScriptLib.KillEntityByConfigId(context, { config_id = monsters[i].config_id })
		end
	end]]--
	ScriptLib.KillGroupEntity(context,{group_id=defs.groupId,monsters=defs.monsterTideOne})
	ScriptLib.KillGroupEntity(context,{group_id=defs.groupId,monsters=defs.monsterTideTwo})
	return 0
end

function UpdateDulinsBloodPickCount(context)
	if context.uid~=nil or context.uid~=0 then
		local uid = context.uid
		local oldCount = ScriptLib.GetScenePlayBattleUidValue(context, 0, uid, "AVATAR_OREDULINSBLOOD_PICK_COUNT")
		ScriptLib.SetScenePlayBattleUidValue(context, 0, uid, "AVATAR_OREDULINSBLOOD_PICK_COUNT", oldCount+1)
	end
	return 0
end

LF_Initialize_Group(triggers, suites)