-- 基础信息
local base_info = {
	group_id = 133102371
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 371007, monster_id = 20011401, pos = { x = 1316.081, y = 201.756, z = 281.887 }, rot = { x = 0.000, y = 197.419, z = 0.000 }, level = 16, drop_tag = "史莱姆", isOneoff = true, area_id = 5 },
	{ config_id = 371008, monster_id = 20011401, pos = { x = 1312.865, y = 201.537, z = 277.955 }, rot = { x = 0.000, y = 27.500, z = 0.000 }, level = 16, drop_tag = "史莱姆", isOneoff = true, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 371001, gadget_id = 70220013, pos = { x = 1322.267, y = 200.503, z = 280.230 }, rot = { x = 0.442, y = 212.252, z = 7.643 }, level = 1, isOneoff = true, persistent = true, area_id = 5 },
	{ config_id = 371002, gadget_id = 70220013, pos = { x = 1318.822, y = 201.038, z = 279.803 }, rot = { x = 0.000, y = 60.814, z = 0.000 }, level = 16, isOneoff = true, persistent = true, area_id = 5 },
	{ config_id = 371003, gadget_id = 70220013, pos = { x = 1316.044, y = 201.781, z = 281.987 }, rot = { x = 0.000, y = 60.814, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 5 },
	{ config_id = 371004, gadget_id = 70220013, pos = { x = 1312.791, y = 201.192, z = 277.772 }, rot = { x = 0.000, y = 60.814, z = 0.000 }, level = 16, isOneoff = true, persistent = true, area_id = 5 },
	{ config_id = 371005, gadget_id = 70211001, pos = { x = 1322.078, y = 200.567, z = 280.190 }, rot = { x = 4.541, y = 122.111, z = 2.844 }, level = 16, drop_tag = "战斗低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 371011, gadget_id = 70220005, pos = { x = 1316.178, y = 201.205, z = 279.008 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, isOneoff = true, area_id = 5 },
	{ config_id = 371012, gadget_id = 70220005, pos = { x = 1314.446, y = 201.126, z = 277.530 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, isOneoff = true, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1371006, name = "ANY_GADGET_DIE_371006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_371006", action = "action_EVENT_ANY_GADGET_DIE_371006" },
	{ config_id = 1371009, name = "ANY_GADGET_DIE_371009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_371009", action = "action_EVENT_ANY_GADGET_DIE_371009" },
	{ config_id = 1371010, name = "ANY_GADGET_DIE_371010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_371010", action = "action_EVENT_ANY_GADGET_DIE_371010" }
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
		gadgets = { 371001, 371002, 371003, 371004, 371011, 371012 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_371006", "ANY_GADGET_DIE_371009", "ANY_GADGET_DIE_371010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_371006(context, evt)
	if 371001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_371006(context, evt)
	-- 创建id为371005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 371005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_371009(context, evt)
	if 371003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_371009(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 371007, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_371010(context, evt)
	if 371004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_371010(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 371008, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end