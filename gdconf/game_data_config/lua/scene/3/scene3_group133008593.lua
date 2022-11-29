-- 基础信息
local base_info = {
	group_id = 133008593
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 593001, monster_id = 26010101, pos = { x = 986.846, y = 344.922, z = -546.586 }, rot = { x = 0.000, y = 153.332, z = 0.000 }, level = 30, drop_tag = "骗骗花", climate_area_id = 1, area_id = 10 },
	{ config_id = 593002, monster_id = 26010101, pos = { x = 991.789, y = 344.400, z = -558.317 }, rot = { x = 0.000, y = 337.795, z = 0.000 }, level = 30, drop_tag = "骗骗花", climate_area_id = 1, area_id = 10 },
	{ config_id = 593013, monster_id = 26010101, pos = { x = 995.190, y = 345.277, z = -548.517 }, rot = { x = 0.000, y = 337.795, z = 0.000 }, level = 30, drop_tag = "骗骗花", climate_area_id = 1, area_id = 10 },
	{ config_id = 593014, monster_id = 26010101, pos = { x = 1002.499, y = 345.562, z = -563.397 }, rot = { x = 0.000, y = 337.795, z = 0.000 }, level = 30, drop_tag = "骗骗花", climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 593003, gadget_id = 70360102, pos = { x = 987.242, y = 343.661, z = -546.036 }, rot = { x = 352.882, y = 359.833, z = 2.684 }, level = 1, area_id = 10 },
	{ config_id = 593004, gadget_id = 70360102, pos = { x = 995.721, y = 344.215, z = -548.619 }, rot = { x = 11.174, y = 227.703, z = 348.854 }, level = 1, area_id = 10 },
	{ config_id = 593005, gadget_id = 70360102, pos = { x = 997.962, y = 341.717, z = -576.394 }, rot = { x = 20.445, y = 259.532, z = 352.926 }, level = 1, area_id = 10 },
	{ config_id = 593006, gadget_id = 70360102, pos = { x = 992.310, y = 343.090, z = -558.406 }, rot = { x = 3.997, y = 242.810, z = 359.957 }, level = 1, area_id = 10 },
	{ config_id = 593007, gadget_id = 70360102, pos = { x = 1003.263, y = 344.896, z = -563.674 }, rot = { x = 338.462, y = 101.455, z = 346.639 }, level = 1, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1593008, name = "ANY_GADGET_DIE_593008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_593008", action = "action_EVENT_ANY_GADGET_DIE_593008" },
	{ config_id = 1593009, name = "ANY_GADGET_DIE_593009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_593009", action = "action_EVENT_ANY_GADGET_DIE_593009" },
	{ config_id = 1593010, name = "ANY_GADGET_DIE_593010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_593010", action = "action_EVENT_ANY_GADGET_DIE_593010" },
	{ config_id = 1593011, name = "ANY_GADGET_DIE_593011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_593011", action = "action_EVENT_ANY_GADGET_DIE_593011" }
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
		gadgets = { 593003, 593004, 593005, 593006, 593007 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_593008", "ANY_GADGET_DIE_593009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 593003, 593004, 593005, 593006, 593007 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_593008", "ANY_GADGET_DIE_593010" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 593003, 593004, 593005, 593006, 593007 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_593009", "ANY_GADGET_DIE_593011" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 593003, 593004, 593005, 593006, 593007 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_593010", "ANY_GADGET_DIE_593011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_593008(context, evt)
	if 593003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_593008(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 593001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_593009(context, evt)
	if 593006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_593009(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 593002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_593010(context, evt)
	if 593004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_593010(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 593013, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_593011(context, evt)
	if 593007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_593011(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 593014, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end