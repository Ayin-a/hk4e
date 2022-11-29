-- 基础信息
local base_info = {
	group_id = 133008507
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 507001, monster_id = 24010301, pos = { x = 912.723, y = 411.263, z = -830.794 }, rot = { x = 0.512, y = 257.770, z = 2.324 }, level = 40, drop_tag = "遗迹重机", affix = { 5009 }, pose_id = 101, climate_area_id = 1, area_id = 10 },
	{ config_id = 507008, monster_id = 24010301, pos = { x = 912.723, y = 411.263, z = -830.794 }, rot = { x = 0.512, y = 257.770, z = 2.324 }, level = 40, drop_tag = "遗迹重机", pose_id = 100, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 507003, gadget_id = 70211021, pos = { x = 906.137, y = 411.302, z = -826.637 }, rot = { x = 0.000, y = 90.088, z = 0.000 }, level = 26, drop_tag = "雪山战斗高级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 },
	{ config_id = 507004, gadget_id = 70211021, pos = { x = 906.162, y = 411.359, z = -830.781 }, rot = { x = 0.000, y = 90.246, z = 0.000 }, level = 26, drop_tag = "雪山战斗高级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 },
	{ config_id = 507005, gadget_id = 70211021, pos = { x = 906.175, y = 411.525, z = -834.901 }, rot = { x = 0.000, y = 91.262, z = 0.000 }, level = 26, drop_tag = "雪山战斗高级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1507002, name = "VARIABLE_CHANGE_507002", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_507002", action = "action_EVENT_VARIABLE_CHANGE_507002", trigger_count = 0 },
	{ config_id = 1507006, name = "ANY_MONSTER_DIE_507006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_507006", action = "action_EVENT_ANY_MONSTER_DIE_507006", trigger_count = 0 },
	{ config_id = 1507007, name = "ANY_MONSTER_LIVE_507007", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_507007", action = "action_EVENT_ANY_MONSTER_LIVE_507007" }
}

-- 变量
variables = {
	{ config_id = 1, name = "is_active", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 3,
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
		monsters = { 507001 },
		gadgets = { },
		regions = { },
		triggers = { "VARIABLE_CHANGE_507002", "ANY_MONSTER_DIE_507006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_507006", "ANY_MONSTER_LIVE_507007" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_507002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"is_active"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "is_active", 133008507) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_507002(context, evt)
		-- 改变指定monster的globalvalue
	  ScriptLib.AddEntityGlobalFloatValueByConfigId(context, {507001}, "_MONSTERAFFIX_AIHITFEELING_LEVELTRIGGER", 1)
	
	-- 通知groupid为133008507中,configid为：507001的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 507001, 133008507) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133008507, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_507006(context, evt)
	--判断死亡怪物的configid是否为 507001或507008
	if evt.param1 ~= 507001 and evt.param1 ~= 507008 then
	    return false
	end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_507006(context, evt)
	-- 创建id为507003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 507003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为507004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 507004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为507005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 507005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133008507, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_507007(context, evt)
	if 507001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_507007(context, evt)
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133008507, EntityType.MONSTER, 507001)
	
		
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 507008, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end