-- 基础信息
local base_info = {
	group_id = 133303622
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 622001, monster_id = 24030201, pos = { x = -1844.915, y = 93.131, z = 3448.937 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "遗迹龙兽", pose_id = 102, area_id = 23 },
	{ config_id = 622002, monster_id = 24020101, pos = { x = -1840.081, y = 92.447, z = 3450.188 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "拟生机关", pose_id = 100, area_id = 23 },
	{ config_id = 622003, monster_id = 24020201, pos = { x = -1849.738, y = 92.296, z = 3451.924 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "拟生机关", pose_id = 100, area_id = 23 }
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
	{ config_id = 1622004, name = "MONSTER_BATTLE_622004", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_622004", action = "action_EVENT_MONSTER_BATTLE_622004" }
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
		monsters = { 622001 },
		gadgets = { },
		regions = { },
		triggers = { "MONSTER_BATTLE_622004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_622004(context, evt)
	if 622001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_622004(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 622002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 622003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end