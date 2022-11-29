-- 基础信息
local base_info = {
	group_id = 133008197
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 197001, monster_id = 28020601, pos = { x = 919.314, y = 338.844, z = -624.291 }, rot = { x = 11.300, y = 335.367, z = 16.575 }, level = 30, drop_tag = "走兽", climate_area_id = 1, area_id = 10 },
	{ config_id = 197002, monster_id = 20010901, pos = { x = 919.246, y = 339.085, z = -624.523 }, rot = { x = 11.300, y = 335.367, z = 16.575 }, level = 30, drop_tag = "大史莱姆", climate_area_id = 1, area_id = 10 },
	{ config_id = 197003, monster_id = 28050103, pos = { x = 918.781, y = 339.364, z = -624.262 }, rot = { x = 11.300, y = 335.367, z = 16.575 }, level = 30, drop_tag = "魔法生物", climate_area_id = 1, area_id = 10 },
	{ config_id = 197004, monster_id = 28050103, pos = { x = 919.412, y = 339.646, z = -624.244 }, rot = { x = 11.300, y = 335.367, z = 16.575 }, level = 30, drop_tag = "魔法生物", climate_area_id = 1, area_id = 10 },
	{ config_id = 197005, monster_id = 26010101, pos = { x = 919.302, y = 339.889, z = -624.455 }, rot = { x = 11.300, y = 335.367, z = 16.575 }, level = 30, drop_tag = "骗骗花", climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 197006, gadget_id = 70360102, pos = { x = 919.237, y = 338.634, z = -624.483 }, rot = { x = 11.300, y = 335.367, z = 16.575 }, level = 30, area_id = 10 },
	{ config_id = 197007, gadget_id = 70210101, pos = { x = 919.255, y = 338.797, z = -624.640 }, rot = { x = 11.300, y = 335.367, z = 16.575 }, level = 26, drop_tag = "搜刮点解谜破损蒙德", isOneoff = true, persistent = true, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1197008, name = "ANY_GADGET_DIE_197008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_197008", action = "action_EVENT_ANY_GADGET_DIE_197008" },
	{ config_id = 1197009, name = "ANY_GADGET_DIE_197009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_197009", action = "action_EVENT_ANY_GADGET_DIE_197009" },
	{ config_id = 1197010, name = "ANY_GADGET_DIE_197010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_197010", action = "action_EVENT_ANY_GADGET_DIE_197010" },
	{ config_id = 1197011, name = "ANY_GADGET_DIE_197011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_197011", action = "action_EVENT_ANY_GADGET_DIE_197011" },
	{ config_id = 1197012, name = "ANY_GADGET_DIE_197012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_197012", action = "action_EVENT_ANY_GADGET_DIE_197012" }
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
		gadgets = { 197006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 197006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_197008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 197006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_197009" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 197006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_197010" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 197006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_197011" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 197006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_197012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_197008(context, evt)
	if 197006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_197008(context, evt)
	-- 创建id为197007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 197007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_197009(context, evt)
	if 197006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_197009(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 197001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_197010(context, evt)
	if 197006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_197010(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 197002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_197011(context, evt)
	if 197006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_197011(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 197003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 197004, delay_time = 0 }) then
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
function condition_EVENT_ANY_GADGET_DIE_197012(context, evt)
	if 197006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_197012(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 197005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end