-- 基础信息
local base_info = {
	group_id = 133008273
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 273001, gadget_id = 70220046, pos = { x = 1006.139, y = 205.254, z = -1450.783 }, rot = { x = 326.530, y = 30.297, z = 9.243 }, level = 30, area_id = 10 },
	{ config_id = 273002, gadget_id = 70211147, pos = { x = 1007.854, y = 204.348, z = -1451.138 }, rot = { x = 31.769, y = 256.214, z = 3.183 }, level = 26, drop_tag = "雪山玉髓超级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 10 },
	{ config_id = 273003, gadget_id = 70590025, pos = { x = 1031.266, y = 237.374, z = -1261.004 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 273005, gadget_id = 70310022, pos = { x = 1035.527, y = 237.139, z = -1261.377 }, rot = { x = 359.124, y = 0.052, z = 353.225 }, level = 30, area_id = 10 },
	{ config_id = 273006, gadget_id = 70590025, pos = { x = 1040.633, y = 199.761, z = -1335.634 }, rot = { x = 3.141, y = 359.698, z = 349.020 }, level = 30, area_id = 10 },
	{ config_id = 273007, gadget_id = 70590025, pos = { x = 1067.604, y = 273.234, z = -1412.567 }, rot = { x = 0.414, y = 338.004, z = 1.639 }, level = 30, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1273004, name = "ANY_GADGET_DIE_273004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_273004", action = "action_EVENT_ANY_GADGET_DIE_273004" }
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
		gadgets = { 273001, 273003, 273005, 273006, 273007 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_273004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_273004(context, evt)
	if 273001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_273004(context, evt)
	-- 创建id为273002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 273002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end