-- 基础信息
local base_info = {
	group_id = 133106552
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
	{ config_id = 552001, gadget_id = 70220013, pos = { x = -674.939, y = 116.960, z = 1793.962 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 552002, gadget_id = 70220026, pos = { x = -673.000, y = 117.035, z = 1787.903 }, rot = { x = 0.345, y = 22.527, z = 359.796 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 552003, gadget_id = 70220013, pos = { x = -672.876, y = 116.982, z = 1789.745 }, rot = { x = 0.000, y = 298.448, z = 0.000 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 552004, gadget_id = 70220013, pos = { x = -671.156, y = 116.965, z = 1788.002 }, rot = { x = 0.000, y = 329.090, z = 0.000 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 552005, gadget_id = 70220013, pos = { x = -678.084, y = 116.961, z = 1791.882 }, rot = { x = 0.000, y = 40.257, z = 0.000 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 552006, gadget_id = 70211101, pos = { x = -674.752, y = 116.973, z = 1794.221 }, rot = { x = 0.000, y = 174.748, z = 0.000 }, level = 26, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 },
	{ config_id = 552007, gadget_id = 70220014, pos = { x = -673.631, y = 116.974, z = 1792.672 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, area_id = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1552008, name = "ANY_GADGET_DIE_552008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_552008", action = "action_EVENT_ANY_GADGET_DIE_552008", trigger_count = 0 }
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
		gadgets = { 552001, 552002, 552003, 552004, 552005, 552007 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_552008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_552008(context, evt)
	if 552001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_552008(context, evt)
	-- 创建id为552006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 552006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end