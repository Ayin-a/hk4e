-- 基础信息
local base_info = {
	group_id = 133008377
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
	{ config_id = 377001, gadget_id = 70310025, pos = { x = 1103.603, y = 210.616, z = -1147.822 }, rot = { x = 0.000, y = 56.972, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 377002, gadget_id = 70310025, pos = { x = 1110.539, y = 215.555, z = -1145.732 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 377003, gadget_id = 70310025, pos = { x = 1098.879, y = 210.619, z = -1151.549 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 10 }
}

-- 区域
regions = {
	{ config_id = 377004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1113.444, y = 200.137, z = -1150.831 }, area_id = 10 },
	{ config_id = 377005, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1107.531, y = 200.137, z = -1147.104 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1377004, name = "ENTER_REGION_377004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_377004", action = "action_EVENT_ENTER_REGION_377004" },
	{ config_id = 1377005, name = "ENTER_REGION_377005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_377005", action = "action_EVENT_ENTER_REGION_377005" }
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
		gadgets = { 377001, 377002, 377003 },
		regions = { 377004, 377005 },
		triggers = { "ENTER_REGION_377004", "ENTER_REGION_377005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_377004(context, evt)
	if evt.param1 ~= 377004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_377004(context, evt)
	-- 将configid为 377002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 377002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_377005(context, evt)
	if evt.param1 ~= 377005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_377005(context, evt)
	-- 将configid为 377001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 377001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 377003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 377003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end