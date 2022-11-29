-- 基础信息
local base_info = {
	group_id = 201062008
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
	{ config_id = 8001, gadget_id = 70360280, pos = { x = 25.292, y = -13.574, z = -16.127 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 8002, gadget_id = 70360291, pos = { x = 25.292, y = -13.574, z = -23.589 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8003, gadget_id = 70211011, pos = { x = 38.613, y = -14.990, z = -23.911 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 11, drop_tag = "战斗中级稻妻", isOneoff = true, persistent = true },
	{ config_id = 8005, gadget_id = 70360283, pos = { x = 38.585, y = -10.484, z = -19.957 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 8007, shape = RegionShape.CUBIC, size = { x = 6.500, y = 10.000, z = 6.500 }, pos = { x = 38.585, y = -10.225, z = -19.957 } },
	{ config_id = 8008, shape = RegionShape.CUBIC, size = { x = 2.000, y = 10.000, z = 10.000 }, pos = { x = 24.561, y = -12.696, z = -20.639 } }
}

-- 触发器
triggers = {
	{ config_id = 1008007, name = "ENTER_REGION_8007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_8007", action = "action_EVENT_ENTER_REGION_8007" },
	{ config_id = 1008008, name = "ENTER_REGION_8008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_8008", action = "action_EVENT_ENTER_REGION_8008", trigger_count = 0 }
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
		gadgets = { 8001, 8002, 8003, 8005 },
		regions = { 8007, 8008 },
		triggers = { "ENTER_REGION_8007", "ENTER_REGION_8008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_8007(context, evt)
	if evt.param1 ~= 8007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_8007(context, evt)
	-- 将configid为 8005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_8008(context, evt)
	if evt.param1 ~= 8008 then return false end
	
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
function action_EVENT_ENTER_REGION_8008(context, evt)
	-- 将configid为 8001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end