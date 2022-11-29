-- 基础信息
local base_info = {
	group_id = 133008237
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 237001, monster_id = 28020601, pos = { x = 1159.018, y = 399.108, z = -714.401 }, rot = { x = 336.030, y = 296.657, z = -0.002 }, level = 30, drop_tag = "走兽", climate_area_id = 1, area_id = 10 },
	{ config_id = 237002, monster_id = 20010901, pos = { x = 1158.950, y = 399.349, z = -714.634 }, rot = { x = 336.030, y = 296.657, z = -0.002 }, level = 30, drop_tag = "大史莱姆", climate_area_id = 1, area_id = 10 },
	{ config_id = 237003, monster_id = 28050103, pos = { x = 1158.485, y = 399.628, z = -714.373 }, rot = { x = 336.030, y = 296.657, z = -0.002 }, level = 30, drop_tag = "魔法生物", climate_area_id = 1, area_id = 10 },
	{ config_id = 237004, monster_id = 28050103, pos = { x = 1159.116, y = 399.910, z = -714.354 }, rot = { x = 336.030, y = 296.657, z = -0.002 }, level = 30, drop_tag = "魔法生物", climate_area_id = 1, area_id = 10 },
	{ config_id = 237005, monster_id = 26010101, pos = { x = 1159.006, y = 400.153, z = -714.565 }, rot = { x = 336.030, y = 296.657, z = -0.002 }, level = 30, drop_tag = "骗骗花", climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 237006, gadget_id = 70360102, pos = { x = 1158.941, y = 398.898, z = -714.594 }, rot = { x = 336.030, y = 296.657, z = -0.002 }, level = 30, area_id = 10 },
	{ config_id = 237007, gadget_id = 70210101, pos = { x = 1158.959, y = 399.061, z = -714.750 }, rot = { x = 336.030, y = 296.657, z = -0.002 }, level = 26, drop_tag = "搜刮点解谜破损蒙德", isOneoff = true, persistent = true, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1237008, name = "ANY_GADGET_DIE_237008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_237008", action = "action_EVENT_ANY_GADGET_DIE_237008" },
	{ config_id = 1237009, name = "ANY_GADGET_DIE_237009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_237009", action = "action_EVENT_ANY_GADGET_DIE_237009" },
	{ config_id = 1237010, name = "ANY_GADGET_DIE_237010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_237010", action = "action_EVENT_ANY_GADGET_DIE_237010" },
	{ config_id = 1237011, name = "ANY_GADGET_DIE_237011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_237011", action = "action_EVENT_ANY_GADGET_DIE_237011" },
	{ config_id = 1237012, name = "ANY_GADGET_DIE_237012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_237012", action = "action_EVENT_ANY_GADGET_DIE_237012" }
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
		gadgets = { 237006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 237006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_237008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 237006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_237009" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 237006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_237010" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 237006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_237011" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 237006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_237012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_237008(context, evt)
	if 237006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_237008(context, evt)
	-- 创建id为237007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 237007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_237009(context, evt)
	if 237006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_237009(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 237001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_237010(context, evt)
	if 237006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_237010(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 237002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_237011(context, evt)
	if 237006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_237011(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 237003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 237004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 6014, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_237012(context, evt)
	if 237006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_237012(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 237005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end