-- 基础信息
local base_info = {
	group_id = 133008382
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 382002, monster_id = 24010301, pos = { x = 1177.985, y = 267.551, z = -533.586 }, rot = { x = 0.000, y = 212.698, z = 0.000 }, level = 10, drop_tag = "遗迹重机", affix = { 5009 }, pose_id = 101, climate_area_id = 1, area_id = 10 },
	{ config_id = 382003, monster_id = 24010301, pos = { x = 1153.030, y = 268.350, z = -540.872 }, rot = { x = 0.000, y = 85.791, z = 0.000 }, level = 10, drop_tag = "遗迹重机", affix = { 5009 }, pose_id = 101, climate_area_id = 1, area_id = 10 },
	{ config_id = 382006, monster_id = 24010301, pos = { x = 1177.985, y = 267.551, z = -533.586 }, rot = { x = 0.000, y = 212.698, z = 0.000 }, level = 10, drop_tag = "遗迹重机", pose_id = 100, climate_area_id = 1, area_id = 10 },
	{ config_id = 382007, monster_id = 24010301, pos = { x = 1153.030, y = 268.350, z = -540.872 }, rot = { x = 0.000, y = 85.791, z = 0.000 }, level = 10, drop_tag = "遗迹重机", pose_id = 100, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1382010, name = "QUEST_FINISH_382010", event = EventType.EVENT_QUEST_FINISH, source = "7014120", condition = "", action = "action_EVENT_QUEST_FINISH_382010" },
	{ config_id = 1382013, name = "ANY_MONSTER_LIVE_382013", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_382013", action = "action_EVENT_ANY_MONSTER_LIVE_382013" },
	{ config_id = 1382014, name = "ANY_MONSTER_LIVE_382014", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_382014", action = "action_EVENT_ANY_MONSTER_LIVE_382014" },
	{ config_id = 1382017, name = "ANY_MONSTER_LIVE_382017", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_382017", action = "action_EVENT_ANY_MONSTER_LIVE_382017", trigger_count = 0 },
	{ config_id = 1382018, name = "ANY_MONSTER_LIVE_382018", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_382018", action = "action_EVENT_ANY_MONSTER_LIVE_382018", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "isFinishPuzzle", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 2,
	end_suite = 1,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suites = {
	{
		-- suite_id = 1,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_382013", "ANY_MONSTER_LIVE_382014", "ANY_MONSTER_LIVE_382017", "ANY_MONSTER_LIVE_382018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 382002, 382003 },
		gadgets = { },
		regions = { },
		triggers = { "QUEST_FINISH_382010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_382010(context, evt)
		-- 改变指定monster的globalvalue
	  ScriptLib.AddEntityGlobalFloatValueByConfigId(context, {382002}, "_MONSTERAFFIX_AIHITFEELING_LEVELTRIGGER", 1)
	
	-- 通知groupid为133008382中,configid为：382002的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 382002, 133008382) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
		-- 改变指定monster的globalvalue
	  ScriptLib.AddEntityGlobalFloatValueByConfigId(context, {382003}, "_MONSTERAFFIX_AIHITFEELING_LEVELTRIGGER", 1)
	
	-- 通知groupid为133008382中,configid为：382003的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 382003, 133008382) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	-- 将group 133008382 中config id为 382002 的怪物血量设为 10 %（血量百分比不能填0，如果掉血，则走通用的掉血流程，如果加血，直接设置新的血量）。
	if 0 ~= ScriptLib.SetMonsterHp(context, 133008382, 382002, 10) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_hp_by_group")
			return -1
		end
	
	-- 将group 133008382 中config id为 382003 的怪物血量设为 10 %（血量百分比不能填0，如果掉血，则走通用的掉血流程，如果加血，直接设置新的血量）。
	if 0 ~= ScriptLib.SetMonsterHp(context, 133008382, 382003, 10) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_hp_by_group")
			return -1
		end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133008382, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_382013(context, evt)
	if 382003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_382013(context, evt)
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133008382, EntityType.MONSTER, 382003)
	
		
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 382007, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 将group 133008382 中config id为 382007 的怪物血量设为 20 %（血量百分比不能填0，如果掉血，则走通用的掉血流程，如果加血，直接设置新的血量）。
	if 0 ~= ScriptLib.SetMonsterHp(context, 133008382, 382007, 20) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_hp_by_group")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_382014(context, evt)
	if 382005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_382014(context, evt)
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133008382, EntityType.MONSTER, 382005)
	
		
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 382008, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 将group 133008382 中config id为 382008 的怪物血量设为 20 %（血量百分比不能填0，如果掉血，则走通用的掉血流程，如果加血，直接设置新的血量）。
	if 0 ~= ScriptLib.SetMonsterHp(context, 133008382, 382008, 20) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_hp_by_group")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_382017(context, evt)
	if 382007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_382017(context, evt)
	-- 将group 133008382 中config id为 382007 的怪物血量设为 10 %（血量百分比不能填0，如果掉血，则走通用的掉血流程，如果加血，直接设置新的血量）。
	if 0 ~= ScriptLib.SetMonsterHp(context, 133008382, 382007, 10) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_hp_by_group")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_382018(context, evt)
	if 382008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_382018(context, evt)
	-- 将group 133008382 中config id为 382008 的怪物血量设为 10 %（血量百分比不能填0，如果掉血，则走通用的掉血流程，如果加血，直接设置新的血量）。
	if 0 ~= ScriptLib.SetMonsterHp(context, 133008382, 382008, 10) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_hp_by_group")
			return -1
		end
	
	return 0
end