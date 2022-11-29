-- 基础信息
local base_info = {
	group_id = 133301711
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 711001, monster_id = 24020201, pos = { x = -819.804, y = 136.512, z = 3389.365 }, rot = { x = 0.000, y = 13.558, z = 0.000 }, level = 30, drop_tag = "拟生机关", pose_id = 101, area_id = 23 },
	{ config_id = 711002, monster_id = 24020101, pos = { x = -820.526, y = 137.921, z = 3367.695 }, rot = { x = 0.000, y = 31.269, z = 0.000 }, level = 30, drop_tag = "拟生机关", pose_id = 100, area_id = 23 }
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
	{ config_id = 1711003, name = "MONSTER_BATTLE_711003", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_711003", action = "action_EVENT_MONSTER_BATTLE_711003" }
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
		monsters = { 711001 },
		gadgets = { },
		regions = { },
		triggers = { "MONSTER_BATTLE_711003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_711003(context, evt)
	if 711001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_711003(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 711002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end