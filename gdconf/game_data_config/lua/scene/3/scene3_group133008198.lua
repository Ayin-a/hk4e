-- 基础信息
local base_info = {
	group_id = 133008198
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 198001, monster_id = 28020601, pos = { x = 914.513, y = 356.652, z = -661.037 }, rot = { x = 24.861, y = 317.807, z = 348.401 }, level = 30, drop_tag = "走兽", climate_area_id = 1, area_id = 10 },
	{ config_id = 198002, monster_id = 20010901, pos = { x = 914.445, y = 356.894, z = -661.270 }, rot = { x = 24.861, y = 317.807, z = 348.401 }, level = 30, drop_tag = "大史莱姆", climate_area_id = 1, area_id = 10 },
	{ config_id = 198003, monster_id = 28050103, pos = { x = 913.980, y = 357.172, z = -661.009 }, rot = { x = 24.861, y = 317.807, z = 348.401 }, level = 30, drop_tag = "魔法生物", climate_area_id = 1, area_id = 10 },
	{ config_id = 198004, monster_id = 28050103, pos = { x = 914.610, y = 357.455, z = -660.990 }, rot = { x = 24.861, y = 317.807, z = 348.401 }, level = 30, drop_tag = "魔法生物", climate_area_id = 1, area_id = 10 },
	{ config_id = 198005, monster_id = 26010101, pos = { x = 914.500, y = 357.698, z = -661.201 }, rot = { x = 24.861, y = 317.807, z = 348.401 }, level = 30, drop_tag = "骗骗花", climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 198006, gadget_id = 70360102, pos = { x = 914.435, y = 356.443, z = -661.230 }, rot = { x = 24.861, y = 317.807, z = 348.401 }, level = 30, area_id = 10 },
	{ config_id = 198007, gadget_id = 70210101, pos = { x = 914.454, y = 356.606, z = -661.386 }, rot = { x = 24.861, y = 317.807, z = 348.401 }, level = 26, drop_tag = "搜刮点解谜破损蒙德", isOneoff = true, persistent = true, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1198008, name = "ANY_GADGET_DIE_198008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_198008", action = "action_EVENT_ANY_GADGET_DIE_198008" },
	{ config_id = 1198009, name = "ANY_GADGET_DIE_198009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_198009", action = "action_EVENT_ANY_GADGET_DIE_198009" },
	{ config_id = 1198010, name = "ANY_GADGET_DIE_198010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_198010", action = "action_EVENT_ANY_GADGET_DIE_198010" },
	{ config_id = 1198011, name = "ANY_GADGET_DIE_198011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_198011", action = "action_EVENT_ANY_GADGET_DIE_198011" },
	{ config_id = 1198012, name = "ANY_GADGET_DIE_198012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_198012", action = "action_EVENT_ANY_GADGET_DIE_198012" }
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
		gadgets = { 198006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 198006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_198008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 198006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_198009" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 198006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_198010" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 198006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_198011" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 198006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_198012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_198008(context, evt)
	if 198006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_198008(context, evt)
	-- 创建id为198007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 198007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_198009(context, evt)
	if 198006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_198009(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 198001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_198010(context, evt)
	if 198006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_198010(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 198002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_198011(context, evt)
	if 198006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_198011(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 198003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 198004, delay_time = 0 }) then
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
function condition_EVENT_ANY_GADGET_DIE_198012(context, evt)
	if 198006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_198012(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 198005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end