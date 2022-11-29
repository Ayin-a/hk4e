-- 基础信息
local base_info = {
	group_id = 133008321
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
	{ config_id = 321001, gadget_id = 70220052, pos = { x = 1265.208, y = 342.814, z = -787.606 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 321002, gadget_id = 70220051, pos = { x = 1265.604, y = 342.815, z = -786.910 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 321003, gadget_id = 70211104, pos = { x = 1286.330, y = 341.090, z = -826.684 }, rot = { x = 359.288, y = 31.346, z = 1.603 }, level = 26, drop_tag = "雪山解谜低级蒙德", state = GadgetState.ChestFrozen, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 },
	{ config_id = 321004, gadget_id = 70220055, pos = { x = 1277.652, y = 341.302, z = -793.901 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 321005, gadget_id = 70220055, pos = { x = 1274.729, y = 341.390, z = -791.604 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 321006, gadget_id = 70220055, pos = { x = 1281.013, y = 342.227, z = -785.541 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 321007, gadget_id = 70220055, pos = { x = 1280.545, y = 341.516, z = -792.741 }, rot = { x = 0.000, y = 44.194, z = 0.000 }, level = 30, area_id = 10 }
}

-- 区域
regions = {
	{ config_id = 321008, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1277.803, y = 341.496, z = -791.755 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1321008, name = "ENTER_REGION_321008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_321008", action = "action_EVENT_ENTER_REGION_321008" }
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
		gadgets = { 321001, 321002, 321003, 321004, 321005, 321006, 321007 },
		regions = { 321008 },
		triggers = { "ENTER_REGION_321008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_321008(context, evt)
	if evt.param1 ~= 321008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_321008(context, evt)
	-- 将configid为 321004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 321004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 321005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 321005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 321007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 321007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end