-- 基础信息
local base_info = {
	group_id = 133108047
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 47001, monster_id = 20010501, pos = { x = -243.775, y = 200.381, z = -1008.170 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "史莱姆", area_id = 7 },
	{ config_id = 47002, monster_id = 20010501, pos = { x = -241.123, y = 200.828, z = -1008.064 }, rot = { x = 0.000, y = 324.965, z = 0.000 }, level = 32, drop_tag = "史莱姆", area_id = 7 },
	{ config_id = 47004, monster_id = 20010601, pos = { x = -241.940, y = 200.833, z = -1006.107 }, rot = { x = 0.000, y = 285.391, z = 0.000 }, level = 32, drop_tag = "大史莱姆", area_id = 7 }
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
	{ config_id = 1047003, name = "MONSTER_BATTLE_47003", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_47003", action = "action_EVENT_MONSTER_BATTLE_47003" }
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
		monsters = { 47001, 47002 },
		gadgets = { },
		regions = { },
		triggers = { "MONSTER_BATTLE_47003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_47003(context, evt)
	if 47001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_47003(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 47004, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end