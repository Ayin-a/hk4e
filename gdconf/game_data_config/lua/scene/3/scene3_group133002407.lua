-- 基础信息
local base_info = {
	group_id = 133002407
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 407001, monster_id = 28020601, pos = { x = 995.707, y = 343.427, z = -555.102 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "走兽", climate_area_id = 1, area_id = 10 },
	{ config_id = 407002, monster_id = 20010901, pos = { x = 995.639, y = 343.669, z = -555.335 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "大史莱姆", climate_area_id = 1, area_id = 10 },
	{ config_id = 407003, monster_id = 28050103, pos = { x = 995.174, y = 343.947, z = -555.074 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "魔法生物", climate_area_id = 1, area_id = 10 },
	{ config_id = 407004, monster_id = 28050103, pos = { x = 995.805, y = 344.230, z = -555.055 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "魔法生物", climate_area_id = 1, area_id = 10 },
	{ config_id = 407005, monster_id = 26010101, pos = { x = 995.695, y = 344.473, z = -555.266 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "骗骗花", climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 407006, gadget_id = 70360102, pos = { x = 995.630, y = 343.218, z = -555.295 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 10 },
	{ config_id = 407007, gadget_id = 70210101, pos = { x = 995.648, y = 343.381, z = -555.451 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损蒙德", isOneoff = true, persistent = true, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1407008, name = "ANY_GADGET_DIE_407008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_407008", action = "action_EVENT_ANY_GADGET_DIE_407008" },
	{ config_id = 1407009, name = "ANY_GADGET_DIE_407009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_407009", action = "action_EVENT_ANY_GADGET_DIE_407009" },
	{ config_id = 1407010, name = "ANY_GADGET_DIE_407010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_407010", action = "action_EVENT_ANY_GADGET_DIE_407010" },
	{ config_id = 1407011, name = "ANY_GADGET_DIE_407011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_407011", action = "action_EVENT_ANY_GADGET_DIE_407011" },
	{ config_id = 1407012, name = "ANY_GADGET_DIE_407012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_407012", action = "action_EVENT_ANY_GADGET_DIE_407012" }
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
		monsters = { },
		gadgets = { 407006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 407006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_407008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 407006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_407009" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 407006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_407010" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 407006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_407011" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 407006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_407012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_407008(context, evt)
	if 407006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_407008(context, evt)
	-- 创建id为407007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 407007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_407009(context, evt)
	if 407006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_407009(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 407001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_407010(context, evt)
	if 407006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_407010(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 407002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_407011(context, evt)
	if 407006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_407011(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 407003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 407004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_407012(context, evt)
	if 407006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_407012(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 407005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end