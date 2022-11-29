-- 基础信息
local base_info = {
	group_id = 133310164
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
	{ config_id = 164001, gadget_id = 70220103, pos = { x = -2515.290, y = 144.728, z = 4906.165 }, rot = { x = 0.000, y = 9.951, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 164002, gadget_id = 70690001, pos = { x = -2520.751, y = 144.916, z = 4842.562 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 164003, gadget_id = 70220103, pos = { x = -2604.832, y = 175.110, z = 4895.426 }, rot = { x = 0.000, y = 9.951, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 164005, gadget_id = 70220103, pos = { x = -2537.340, y = 170.557, z = 4870.279 }, rot = { x = 0.000, y = 9.951, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 164006, gadget_id = 70330434, pos = { x = -2520.751, y = 123.462, z = 4842.562 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 164007, gadget_id = 70220103, pos = { x = -2510.010, y = 124.310, z = 4785.466 }, rot = { x = 0.000, y = 9.951, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 164008, gadget_id = 70690001, pos = { x = -2520.751, y = 152.724, z = 4842.562 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 }
}

-- 区域
regions = {
	{ config_id = 164009, shape = RegionShape.CYLINDER, radius = 5, pos = { x = -2520.751, y = 149.813, z = 4842.562 }, height = 30.000, area_id = 27 },
	{ config_id = 164010, shape = RegionShape.CYLINDER, radius = 5, pos = { x = -2520.751, y = 149.813, z = 4842.562 }, height = 30.000, area_id = 27 }
}

-- 触发器
triggers = {
	{ config_id = 1164009, name = "ENTER_REGION_164009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_164009", trigger_count = 0 },
	{ config_id = 1164010, name = "LEAVE_REGION_164010", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_EVENT_LEAVE_REGION_164010", trigger_count = 0 }
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
		gadgets = { 164001, 164003, 164005, 164006, 164007 },
		regions = { 164009, 164010 },
		triggers = { "ENTER_REGION_164009", "LEAVE_REGION_164010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ENTER_REGION_164009(context, evt)
	-- 创建id为164002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 164002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为164008的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 164008 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_LEAVE_REGION_164010(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 164002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 164008 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end