-- 基础信息
local base_info = {
	group_id = 133008436
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 436001, monster_id = 20010901, pos = { x = 1112.153, y = 276.099, z = -1120.723 }, rot = { x = 0.000, y = 153.332, z = 0.000 }, level = 30, drop_tag = "大史莱姆", climate_area_id = 1, area_id = 10 },
	{ config_id = 436007, monster_id = 20010901, pos = { x = 1124.518, y = 276.786, z = -1115.981 }, rot = { x = 0.000, y = 337.795, z = 0.000 }, level = 30, drop_tag = "大史莱姆", climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 436002, gadget_id = 70360102, pos = { x = 1111.517, y = 275.079, z = -1119.565 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 436003, gadget_id = 70360102, pos = { x = 1124.627, y = 275.450, z = -1115.729 }, rot = { x = 0.000, y = 226.903, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 436004, gadget_id = 70360102, pos = { x = 1109.248, y = 274.888, z = -1129.651 }, rot = { x = 0.000, y = 260.810, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 436005, gadget_id = 70360102, pos = { x = 1114.725, y = 274.993, z = -1121.498 }, rot = { x = 0.000, y = 242.812, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 436006, gadget_id = 70360102, pos = { x = 1116.863, y = 274.830, z = -1126.266 }, rot = { x = 0.000, y = 98.903, z = 0.000 }, level = 1, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1436008, name = "ANY_GADGET_DIE_436008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_436008", action = "action_EVENT_ANY_GADGET_DIE_436008" },
	{ config_id = 1436009, name = "ANY_GADGET_DIE_436009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_436009", action = "action_EVENT_ANY_GADGET_DIE_436009" }
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
		gadgets = { 436002, 436003, 436004, 436005, 436006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_436008", "ANY_GADGET_DIE_436009" },
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
function condition_EVENT_ANY_GADGET_DIE_436008(context, evt)
	if 436002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_436008(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 436001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_436009(context, evt)
	if 436003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_436009(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 436007, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end