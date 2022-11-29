-- 基础信息
local base_info = {
	group_id = 220000041
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 80, monster_id = 21010101, pos = { x = 170.217, y = 0.641, z = 55.260 }, rot = { x = 0.000, y = 171.667, z = 0.000 }, level = 1 },
	{ config_id = 81, monster_id = 21010101, pos = { x = 165.065, y = 0.641, z = 47.342 }, rot = { x = 0.000, y = 83.349, z = 0.000 }, level = 1 },
	{ config_id = 82, monster_id = 21010101, pos = { x = 168.503, y = 0.641, z = 40.644 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 83, monster_id = 21010101, pos = { x = 173.238, y = 0.641, z = 44.244 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 84, monster_id = 21010101, pos = { x = 173.005, y = 0.641, z = 51.435 }, rot = { x = 0.000, y = 225.641, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 128, gadget_id = 70900207, pos = { x = 166.232, y = 0.713, z = 53.049 }, rot = { x = 0.000, y = 37.925, z = 0.000 }, level = 1 },
	{ config_id = 129, gadget_id = 70900207, pos = { x = 170.234, y = 0.470, z = 53.083 }, rot = { x = 0.000, y = 8.730, z = 0.000 }, level = 1 },
	{ config_id = 130, gadget_id = 70900207, pos = { x = 170.440, y = 0.439, z = 49.129 }, rot = { x = 0.000, y = 129.902, z = 0.000 }, level = 1 },
	{ config_id = 131, gadget_id = 70900207, pos = { x = 166.350, y = 0.609, z = 49.180 }, rot = { x = 0.000, y = 293.309, z = 0.000 }, level = 1 },
	{ config_id = 140, gadget_id = 70510008, pos = { x = 167.918, y = 0.948, z = 51.039 }, rot = { x = 0.000, y = 112.604, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000075, name = "ANY_MONSTER_DIE_75", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_75", action = "action_EVENT_ANY_MONSTER_DIE_75", trigger_count = 0 }
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
	rand_suite = true
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
		monsters = { 80, 81, 82, 83, 84 },
		gadgets = { 128, 129, 130, 140 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_75" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_75(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 220000041) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_75(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 80, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 81, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 82, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 83, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 84, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end