-- 基础信息
local base_info = {
	group_id = 133008208
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 208001, monster_id = 28020601, pos = { x = 994.803, y = 303.225, z = -463.753 }, rot = { x = 21.074, y = 0.000, z = 18.331 }, level = 30, drop_tag = "走兽", climate_area_id = 1, area_id = 10 },
	{ config_id = 208002, monster_id = 20010901, pos = { x = 994.735, y = 303.466, z = -463.986 }, rot = { x = 21.074, y = 0.000, z = 18.331 }, level = 30, drop_tag = "大史莱姆", climate_area_id = 1, area_id = 10 },
	{ config_id = 208003, monster_id = 28050103, pos = { x = 994.270, y = 303.745, z = -463.725 }, rot = { x = 21.074, y = 0.000, z = 18.331 }, level = 30, drop_tag = "魔法生物", climate_area_id = 1, area_id = 10 },
	{ config_id = 208004, monster_id = 28050103, pos = { x = 994.901, y = 304.027, z = -463.706 }, rot = { x = 21.074, y = 0.000, z = 18.331 }, level = 30, drop_tag = "魔法生物", climate_area_id = 1, area_id = 10 },
	{ config_id = 208005, monster_id = 26010101, pos = { x = 994.791, y = 304.270, z = -463.917 }, rot = { x = 21.074, y = 0.000, z = 18.331 }, level = 30, drop_tag = "骗骗花", climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 208006, gadget_id = 70360102, pos = { x = 994.726, y = 303.015, z = -463.946 }, rot = { x = 21.074, y = 0.000, z = 18.331 }, level = 30, area_id = 10 },
	{ config_id = 208007, gadget_id = 70210101, pos = { x = 994.744, y = 303.178, z = -464.102 }, rot = { x = 21.074, y = 0.000, z = 18.331 }, level = 26, drop_tag = "搜刮点解谜破损蒙德", isOneoff = true, persistent = true, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1208008, name = "ANY_GADGET_DIE_208008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_208008", action = "action_EVENT_ANY_GADGET_DIE_208008" },
	{ config_id = 1208009, name = "ANY_GADGET_DIE_208009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_208009", action = "action_EVENT_ANY_GADGET_DIE_208009" },
	{ config_id = 1208010, name = "ANY_GADGET_DIE_208010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_208010", action = "action_EVENT_ANY_GADGET_DIE_208010" },
	{ config_id = 1208011, name = "ANY_GADGET_DIE_208011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_208011", action = "action_EVENT_ANY_GADGET_DIE_208011" },
	{ config_id = 1208012, name = "ANY_GADGET_DIE_208012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_208012", action = "action_EVENT_ANY_GADGET_DIE_208012" }
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
		gadgets = { 208006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 208006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_208008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 208006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_208009" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 208006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_208010" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 208006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_208011" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 208006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_208012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_208008(context, evt)
	if 208006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_208008(context, evt)
	-- 创建id为208007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 208007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_208009(context, evt)
	if 208006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_208009(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 208001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_208010(context, evt)
	if 208006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_208010(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 208002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_208011(context, evt)
	if 208006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_208011(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 208003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 208004, delay_time = 0 }) then
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
function condition_EVENT_ANY_GADGET_DIE_208012(context, evt)
	if 208006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_208012(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 208005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end