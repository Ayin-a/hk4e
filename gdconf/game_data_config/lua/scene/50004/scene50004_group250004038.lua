-- 基础信息
local base_info = {
	group_id = 250004038
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
	{ config_id = 370, gadget_id = 70900206, pos = { x = -212.291, y = -11.000, z = -295.818 }, rot = { x = 0.000, y = 89.723, z = 0.000 }, level = 1 },
	{ config_id = 371, gadget_id = 71000004, pos = { x = -211.750, y = -11.000, z = -266.130 }, rot = { x = 0.000, y = 325.383, z = 0.000 }, level = 1 },
	{ config_id = 372, gadget_id = 71000004, pos = { x = -205.026, y = -11.000, z = -265.167 }, rot = { x = 0.000, y = 78.150, z = 0.000 }, level = 1 },
	{ config_id = 373, gadget_id = 71000004, pos = { x = -220.084, y = -11.000, z = -266.585 }, rot = { x = 0.000, y = 275.211, z = 0.000 }, level = 1 },
	{ config_id = 374, gadget_id = 71000004, pos = { x = -211.949, y = -11.000, z = -288.235 }, rot = { x = 0.000, y = 325.383, z = 0.000 }, level = 1 },
	{ config_id = 375, gadget_id = 71000004, pos = { x = -205.225, y = -11.000, z = -287.272 }, rot = { x = 0.000, y = 78.150, z = 0.000 }, level = 1 },
	{ config_id = 376, gadget_id = 71000004, pos = { x = -220.282, y = -11.000, z = -288.690 }, rot = { x = 0.000, y = 275.211, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 71, shape = RegionShape.SPHERE, radius = 5, pos = { x = -212.327, y = -10.730, z = -278.455 } },
	{ config_id = 72, shape = RegionShape.SPHERE, radius = 5, pos = { x = -212.246, y = -10.350, z = -296.363 } }
}

-- 触发器
triggers = {
	{ config_id = 1000071, name = "ENTER_REGION_71", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_71", action = "action_EVENT_ENTER_REGION_71", forbid_guest = false },
	{ config_id = 1000072, name = "ENTER_REGION_72", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_72", action = "action_EVENT_ENTER_REGION_72", forbid_guest = false }
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
		gadgets = { 370, 371, 372, 373, 374, 375, 376 },
		regions = { 71, 72 },
		triggers = { "ENTER_REGION_71", "ENTER_REGION_72" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_71(context, evt)
	if evt.param1 ~= 71 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_71(context, evt)
	-- 将configid为 370 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 370, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_72(context, evt)
	if evt.param1 ~= 72 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_72(context, evt)
	-- 将configid为 370 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 370, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end