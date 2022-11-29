-- 基础信息
local base_info = {
	group_id = 133310090
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 90001, monster_id = 20010401, pos = { x = -2351.518, y = 327.912, z = 4184.240 }, rot = { x = 0.000, y = 101.065, z = 0.000 }, level = 32, drop_tag = "大史莱姆", disableWander = true, area_id = 26 },
	{ config_id = 90002, monster_id = 20010301, pos = { x = -2355.775, y = 327.685, z = 4180.862 }, rot = { x = 0.000, y = 51.879, z = 0.000 }, level = 32, drop_tag = "史莱姆", disableWander = true, area_id = 26 },
	{ config_id = 90003, monster_id = 20010301, pos = { x = -2351.685, y = 327.882, z = 4188.539 }, rot = { x = 0.000, y = 171.653, z = 0.000 }, level = 32, drop_tag = "史莱姆", disableWander = true, area_id = 26 },
	{ config_id = 90004, monster_id = 20010301, pos = { x = -2356.613, y = 327.764, z = 4186.932 }, rot = { x = 0.000, y = 110.634, z = 0.000 }, level = 32, drop_tag = "史莱姆", disableWander = true, area_id = 26 },
	{ config_id = 90005, monster_id = 20010301, pos = { x = -2346.774, y = 327.903, z = 4184.801 }, rot = { x = 0.000, y = 278.510, z = 0.000 }, level = 32, drop_tag = "史莱姆", disableWander = true, area_id = 26 },
	{ config_id = 90006, monster_id = 20010301, pos = { x = -2349.961, y = 327.711, z = 4179.098 }, rot = { x = 0.000, y = 351.621, z = 0.000 }, level = 32, drop_tag = "史莱姆", disableWander = true, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 90008, gadget_id = 70211001, pos = { x = -2356.781, y = 327.503, z = 4183.955 }, rot = { x = 343.869, y = 85.299, z = 349.759 }, level = 26, drop_tag = "战斗低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1090007, name = "ANY_MONSTER_DIE_90007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_90007", action = "action_EVENT_ANY_MONSTER_DIE_90007" },
	{ config_id = 1090009, name = "MONSTER_BATTLE_90009", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_90009", action = "action_EVENT_MONSTER_BATTLE_90009" }
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
		monsters = { 90001 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_90007", "MONSTER_BATTLE_90009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 90002, 90003, 90004, 90005, 90006 },
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
function condition_EVENT_ANY_MONSTER_DIE_90007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_90007(context, evt)
	-- 创建id为90008的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 90008 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_90009(context, evt)
	if 90001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_90009(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133310090, 2)
	
	return 0
end