-- 基础信息
local base_info = {
	group_id = 201062007
}

-- DEFS_MISCS


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
	{ config_id = 7001, gadget_id = 70360280, pos = { x = -24.885, y = -13.255, z = -24.426 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7002, gadget_id = 70360280, pos = { x = -17.717, y = -13.255, z = -24.426 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7003, gadget_id = 70360291, pos = { x = -17.717, y = -13.255, z = -15.410 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 7004, gadget_id = 70360291, pos = { x = -24.885, y = -13.255, z = -15.410 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 7005, shape = RegionShape.CUBIC, size = { x = 2.000, y = 10.000, z = 10.000 }, pos = { x = -25.518, y = -12.389, z = -19.716 } },
	{ config_id = 7006, shape = RegionShape.CUBIC, size = { x = 2.000, y = 10.000, z = 10.000 }, pos = { x = -18.363, y = -12.389, z = -19.723 } }
}

-- 触发器
triggers = {
	{ config_id = 1007005, name = "ENTER_REGION_7005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_7005", action = "action_EVENT_ENTER_REGION_7005", trigger_count = 0 },
	{ config_id = 1007006, name = "ENTER_REGION_7006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_7006", action = "action_EVENT_ENTER_REGION_7006", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "trap", value = 0, no_refresh = false }
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
		gadgets = { 7001, 7002, 7003, 7004 },
		regions = { 7005, 7006 },
		triggers = { "ENTER_REGION_7005", "ENTER_REGION_7006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_7005(context, evt)
	if evt.param1 ~= 7005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"trap"为0
	if ScriptLib.GetGroupVariableValue(context, "trap") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_7005(context, evt)
	-- 将configid为 7001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 7001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_7006(context, evt)
	if evt.param1 ~= 7006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"trap"为0
	if ScriptLib.GetGroupVariableValue(context, "trap") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_7006(context, evt)
	-- 将configid为 7002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 7002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end