-- 基础信息
local base_info = {
	group_id = 302001031
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 31001, monster_id = 23020101, pos = { x = 2085.115, y = 210.295, z = -1285.541 }, rot = { x = 0.000, y = 213.512, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4109, 4108, 4107 }, kill_score = 180, area_id = 1 },
	{ config_id = 31002, monster_id = 23020101, pos = { x = 2087.153, y = 211.522, z = -1304.132 }, rot = { x = 0.000, y = 303.508, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4109, 4108, 4107 }, kill_score = 180, area_id = 1 },
	{ config_id = 31003, monster_id = 23020101, pos = { x = 2067.002, y = 208.046, z = -1291.039 }, rot = { x = 0.000, y = 118.838, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4109, 4108, 4107 }, kill_score = 180, area_id = 1 },
	{ config_id = 31020, monster_id = 23020101, pos = { x = 2067.895, y = 208.702, z = -1312.973 }, rot = { x = 0.000, y = 29.191, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4109, 4108, 4107 }, kill_score = 180, area_id = 1 }
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
	{ config_id = 1031004, name = "ANY_MONSTER_DIE_31004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_31004", action = "action_EVENT_ANY_MONSTER_DIE_31004", trigger_count = 0 },
	{ config_id = 1031005, name = "ANY_MONSTER_DIE_31005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_31005", action = "action_EVENT_ANY_MONSTER_DIE_31005", trigger_count = 0 },
	{ config_id = 1031023, name = "ANY_MONSTER_DIE_31023", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_31023", action = "action_EVENT_ANY_MONSTER_DIE_31023", trigger_count = 0 },
	{ config_id = 1031032, name = "ANY_MONSTER_DIE_31032", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_31032", action = "action_EVENT_ANY_MONSTER_DIE_31032", trigger_count = 0 }
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
		-- description = ,
		monsters = { 31002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_31004", "ANY_MONSTER_DIE_31023" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 31003 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 31020 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_31005", "ANY_MONSTER_DIE_31032" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 31001 },
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
function condition_EVENT_ANY_MONSTER_DIE_31004(context, evt)
	if 31003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_31004(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 31002, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_31005(context, evt)
	if 31001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_31005(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 31020, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_31023(context, evt)
	if 31002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_31023(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 31003, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_31032(context, evt)
	if 31020 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_31032(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 31001, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end