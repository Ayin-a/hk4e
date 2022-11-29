-- 基础信息
local base_info = {
	group_id = 133213222
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 222001, monster_id = 25070101, pos = { x = -3623.980, y = 200.621, z = -3358.193 }, rot = { x = 358.975, y = 304.919, z = 1.468 }, level = 25, drop_tag = "盗宝团", disableWander = true, area_id = 12 },
	{ config_id = 222005, monster_id = 25030301, pos = { x = -3654.077, y = 201.232, z = -3340.360 }, rot = { x = 358.210, y = 0.000, z = 0.000 }, level = 27, drop_tag = "盗宝团", disableWander = true, pose_id = 9003, area_id = 12 },
	{ config_id = 222006, monster_id = 25010501, pos = { x = -3634.831, y = 201.056, z = -3354.294 }, rot = { x = 358.223, y = 352.958, z = 0.219 }, level = 27, drop_tag = "盗宝团", disableWander = true, pose_id = 9003, area_id = 12 },
	{ config_id = 222007, monster_id = 25010601, pos = { x = -3647.742, y = 201.204, z = -3343.968 }, rot = { x = 358.210, y = 0.000, z = 0.000 }, level = 27, drop_tag = "盗宝团", area_id = 12 }
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
	{ config_id = 1222002, name = "MONSTER_BATTLE_222002", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_222002", action = "action_EVENT_MONSTER_BATTLE_222002" },
	{ config_id = 1222003, name = "MONSTER_BATTLE_222003", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_222003", action = "action_EVENT_MONSTER_BATTLE_222003" }
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
	end_suite = 2,
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
		monsters = { 222005, 222006 },
		gadgets = { },
		regions = { },
		triggers = { "MONSTER_BATTLE_222002", "MONSTER_BATTLE_222003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
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
function condition_EVENT_MONSTER_BATTLE_222002(context, evt)
	if 222006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_222002(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 222001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_222003(context, evt)
	if 222005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_222003(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 222007, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end