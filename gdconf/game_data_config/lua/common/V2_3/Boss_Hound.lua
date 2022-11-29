--- ServerUploadTool Save to [/root/env/data/lua/common/V2_3]  ---
--[[
	2.3兽境之王
	处理战斗触发和重置 天气开关 EyePoint圈

	--怪物脱战时，会在一系列表演之后发一个SLC_BossBattleReset，group重置
]]
--[[
local defs = {

	--开启怪物用的特效gadget
	gadget_starter = 275001,

	--开启怪物用的region
	start_region = 275003,
	--战斗开启后，加载哪些suit
	init_on_battle = {2},

	--场地范围半径
	battle_radius = 40,

	--场地范围Region/中心点
	battle_regionID = 275004,
	--优化圈
	optimize_regionID = 275005,

	--怪物configID
	monster_configID = 275002,

	--groupID
	group_id = 133225275,

	--战斗天气ID
	weather_ID = 3321,

}
]]

local extraTriggers={

  --{ config_id = 8000001,name = "Enter_StartRegion", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_Enter_StartRegion", trigger_count = 0 , forbid_guest = false },
  { config_id = 8000002,name = "Leave_BattleRegion", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_Leave_BattleRegion", trigger_count = 0, forbid_guest = false },
  { config_id = 8000003,name = "Enter_BattleRegion", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_Enter_BattleRegion", trigger_count = 0 , forbid_guest = false },
  { config_id = 8000004,name = "Boss_Die", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_Boss_Die", action = "action_Boss_Die", trigger_count = 0 },
  { config_id = 8000005,name = "Group_Will_Unload", event = EventType.EVENT_GROUP_WILL_UNLOAD, source = "", condition = "", action = "action_Group_Will_Unload", trigger_count = 0 },
  { config_id = 8000006,name = "Boss_In_Battle", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_Boss_In_Battle", trigger_count = 0 },
}

function LF_Initialize_Group(triggers, suites)
	for i=1,#extraTriggers do
		table.insert(triggers, extraTriggers[i])
		table.insert(suites[init_config.suite].triggers,extraTriggers[i].name)
	end
	--挑战状态标记
	table.insert(variables,{ config_id=50000001,name = "challenge_state", value = 0})
	table.insert(variables,{ config_id=50000002,name = "boss_exist", value = 1 })

end

function condition_Boss_Die(context, evt)
	if evt.param1 ~= defs.monster_configID then 
		return false
	end
	return true
end
function action_Group_Will_Unload(context, evt)
	ScriptLib.PrintContextLog(context, "[Boss_Hound] Group Will Unload in Battle. Reset Weather and Optimize Suite.")
	--ScriptLib.SetWeatherAreaState(context, defs.weather_ID, 0)
	if ScriptLib.GetGroupVariableValue(context, "challenge_state") == 1 then
		LF_ResetBattle(context)
	end
	return 0
end
function action_Boss_Die(context, evt)
	ScriptLib.SetGroupVariableValue(context, "challenge_state", 2)
	ScriptLib.SetWeatherAreaState(context, defs.weather_ID, 0)
	--移除优化圈
	for k,v in pairs(defs.init_on_battle) do
		ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, v)
	end
	ScriptLib.SetGroupVariableValue(context, "boss_exist", 0)
	return 0
end
--处理玩家出战斗圈
function action_Leave_BattleRegion(context, evt)

	if evt.param1 ~= defs.battle_regionID then
		return 0
	end
	ScriptLib.ClearPlayerEyePoint(context, defs.optimize_regionID)
	ScriptLib.PrintContextLog(context, "[Boss_Hound] Player leave region. uid@"..context.uid)

	if ScriptLib.GetGroupVariableValue(context, "challenge_state") == 1 then
		
		--local count = ScriptLib.GetRegionEntityCount(context, { region_eid = eid, entity_type = EntityType.AVATAR })
			--尝试转移config_id的authority, 当uid和config_id的authority不一致时尝试转移到region_config_id里的玩家。
	    local new_auth = ScriptLib.TryReallocateEntityAuthority(context, context.uid, defs.monster_configID, evt.param1)
	    --[[if count <= 0 then 
	    	ScriptLib.PrintContextLog(context, "[Boss_Hound] No Player in Region. Reset Battle.")
	    	LF_ResetBattle(context)
	    end]]
	end
	

	return 0
end

--战斗期间入圈，处理EyePoint
function action_Enter_BattleRegion(context, evt)
	if evt.param1 ~= defs.battle_regionID then
		return 0
	end
	ScriptLib.SetPlayerEyePoint(context, defs.optimize_regionID, defs.battle_regionID)
	return 0
end

--[[function action_Enter_StartRegion(context, evt)

	if ScriptLib.GetGroupVariableValue(context, "challenge_state") ~= 0 or 
		evt.param1 ~= defs.start_region then
		return 0
	end
	LF_StartBattle(context)
	return 0
end]]

--触发战斗
function action_Boss_In_Battle(context, evt)

	if evt.param1 ~= defs.monster_configID then 
		return 0
	end

	ScriptLib.PrintContextLog(context, "[Boss_Hound] Start Battle.")
	ScriptLib.SetGroupVariableValue(context, "challenge_state", 1)

	--ScriptLib.CreateMonster(context, { config_id = defs.monster_configID, delay_time = 0 })
	--ScriptLib.KillGroupEntity(context,{ group_id = defs.group_id, gadgets = {defs.gadget_starter}})
	ScriptLib.SetWeatherAreaState(context, defs.weather_ID, 1)
	for k,v in pairs(defs.init_on_battle) do
		ScriptLib.AddExtraGroupSuite(context, defs.group_id, v)
		ScriptLib.PrintContextLog(context, "[Boss_Hound] Add Suit @"..v)
	end
	return 0
end

function LF_ResetBattle(context)
	ScriptLib.PrintContextLog(context, "[Boss_Hound] Reset Battle.")
	ScriptLib.SetGroupVariableValue(context, "challenge_state", 0)
	ScriptLib.SetWeatherAreaState(context, defs.weather_ID, 0)
	--ScriptLib.RefreshGroup(context, {group_id = defs.group_id, suite = 1})
	for k,v in pairs(defs.init_on_battle) do
		ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, v)
	end
	--ScriptLib.CreateGadget(context, { config_id = defs.gadget_starter})
	--需要重新生成Boss
	ScriptLib.RemoveEntityByConfigId(context, defs.group_id, EntityType.MONSTER, defs.monster_configID)
	ScriptLib.CreateMonster(context, { config_id = defs.monster_configID, delay_time = 0 })
	return 0
end

--返回场内(battle_radius) 的一个活的玩家uid，没找到的话返回0
function LF_Get_BattleField_AlivePlayer(context)

	local uid_list = ScriptLib.GetSceneUidList(context)

	for i,v in ipairs(uid_list) do
		if LF_Get_Distance(context, v, defs.battle_regionID) < defs.battle_radius then 
			if ScriptLib.IsPlayerAllAvatarDie(context, v) == false then
				ScriptLib.PrintContextLog(context, "[Boss_Hound] Get_BattleField_AlivePlayer. UID@"..v)
				return v
			end
		end
	end

	return 0
end

function LF_Get_Distance(context, uid, config_id)
	local eid = ScriptLib.GetAvatarEntityIdByUid(context, uid)
	local pos1 = ScriptLib.GetPosByEntityId(context, eid)
	local pos2 = regions[config_id].pos
	local X = pos1.x - pos2.x
	local Y = pos1.y - pos2.y
	local Z = pos1.z - pos2.z
	return math.sqrt(X*X+Y*Y+Z*Z)
end

--Boss脱战时调用
function SLC_BossBattleReset(context)
--[[
	if ScriptLib.GetGroupVariableValue(context, "challenge_state") ~= 1 then
		ScriptLib.PrintContextLog(context, "[Boss_Hound] #WARN# Got SLC_BossBattleReset, while challenge_state is 0 (Not in Battle). Tell TD.")
		return 0
	end]]
	
	--planA: 接到直接重置
	LF_ResetBattle(context)
	
	--planB: 尝试找场内玩家转移auth。 找不到，就ResetBattle
	--[[local target_uid = LF_Get_BattleField_AlivePlayer(context)

	if target_uid ~= 0 then 

		ScriptLib.PrintContextLog(context, "[Boss_Hound] Got SLC_BossBattleReset, then found alive player@"..target_uid.." in field, trying Refresh Authority.")

		ScriptLib.ForceRefreshAuthorityByConfigId(context, defs.monster_configID, target_uid)

	else
		ScriptLib.PrintContextLog(context, "[Boss_Hound] No alive player in battle field. Reset Battle.")
		LF_ResetBattle(context)

	end]]

	return 0
end

LF_Initialize_Group(triggers, suites)