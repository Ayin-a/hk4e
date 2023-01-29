-- 基础信息
local base_info = {
	group_id = 240001004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 13, monster_id = 21020101, pos = { x = 7.479, y = 42.016, z = 96.081 }, rot = { x = 0.000, y = 311.990, z = 0.000 }, level = 1 },
	{ config_id = 14, monster_id = 21010701, pos = { x = 59.788, y = 42.017, z = 123.708 }, rot = { x = 0.000, y = 261.560, z = 0.000 }, level = 1 },
	{ config_id = 15, monster_id = 21010701, pos = { x = 59.919, y = 42.017, z = 120.303 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 16, monster_id = 21010701, pos = { x = -3.741, y = 47.000, z = 61.402 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 17, monster_id = 21010701, pos = { x = 1.092, y = 47.000, z = 64.009 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1, gadget_id = 70211011, pos = { x = 15.814, y = 42.016, z = 94.759 }, rot = { x = 0.000, y = 268.400, z = 0.000 }, level = 1, drop_tag = "战斗中级蒙德", showcutscene = true, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000003, name = "SPECIFIC_MONSTER_HP_CHANGE_3", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "13", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_3", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_3" },
	{ config_id = 1000004, name = "ANY_MONSTER_DIE_4", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4", action = "action_EVENT_ANY_MONSTER_DIE_4" },
	{ config_id = 1000007, name = "DUNGEON_SETTLE_7", event = EventType.EVENT_DUNGEON_SETTLE, source = "", condition = "condition_EVENT_DUNGEON_SETTLE_7", action = "action_EVENT_DUNGEON_SETTLE_7" }
}

-- 变量
variables = {
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 0,
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
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 13 },
		gadgets = { },
		regions = { },
		triggers = { "SPECIFIC_MONSTER_HP_CHANGE_3", "ANY_MONSTER_DIE_4", "DUNGEON_SETTLE_7" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_3(context, evt)
	--[[判断指定configid的怪物的血量小于%80时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 80 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_3(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 14, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 15, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 16, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 17, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 18, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4(context, evt)
	--判断死亡怪物的configid是否为 13
	if evt.param1 ~= 13 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 240001004, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_DUNGEON_SETTLE_7(context, evt)
	-- 判断副本成功
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_DUNGEON_SETTLE_7(context, evt)
	-- 创建id为1的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end