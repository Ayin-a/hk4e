-- 基础信息
local base_info = {
	group_id = 133008511
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
	{ config_id = 511001, gadget_id = 70310025, pos = { x = 1067.733, y = 435.232, z = -903.987 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 511002, gadget_id = 70310025, pos = { x = 1062.593, y = 436.902, z = -899.417 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 10 }
}

-- 区域
regions = {
	{ config_id = 511003, shape = RegionShape.SPHERE, radius = 2, pos = { x = 1067.885, y = 426.076, z = -904.187 }, area_id = 10 },
	{ config_id = 511004, shape = RegionShape.SPHERE, radius = 2, pos = { x = 1062.840, y = 428.175, z = -899.220 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1511003, name = "ENTER_REGION_511003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_511003", action = "action_EVENT_ENTER_REGION_511003" },
	{ config_id = 1511004, name = "ENTER_REGION_511004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_511004", action = "action_EVENT_ENTER_REGION_511004" }
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
		gadgets = { 511001, 511002 },
		regions = { 511003, 511004 },
		triggers = { "ENTER_REGION_511003", "ENTER_REGION_511004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_511003(context, evt)
	if evt.param1 ~= 511003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_511003(context, evt)
	-- 将configid为 511001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 511001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_511004(context, evt)
	if evt.param1 ~= 511004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_511004(context, evt)
	-- 将configid为 511002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 511002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end