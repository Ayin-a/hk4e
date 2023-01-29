-- 基础信息
local base_info = {
	group_id = 220169001
}

-- DEFS_MISCS
local EnterConfigID = 1013

local thunderFloorTimer = {7}

local floorList = {1001,1002}

local randomNumMin = 2

local randomNumMax = 2

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
	{ config_id = 1001, gadget_id = 70360285, pos = { x = -65.514, y = 1.703, z = 52.016 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1002, gadget_id = 70360285, pos = { x = -62.853, y = 1.726, z = 52.016 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1003, gadget_id = 70360280, pos = { x = -57.518, y = 3.000, z = 48.070 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1004, gadget_id = 70360280, pos = { x = -53.267, y = 3.000, z = 48.070 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1007, gadget_id = 70220070, pos = { x = -59.501, y = 1.695, z = 50.903 }, rot = { x = 0.000, y = 115.000, z = 0.000 }, level = 1 },
	{ config_id = 1008, gadget_id = 70220071, pos = { x = -58.541, y = 1.695, z = 52.935 }, rot = { x = 0.000, y = 115.000, z = 0.000 }, level = 1 },
	{ config_id = 1009, gadget_id = 70360291, pos = { x = -57.518, y = 3.000, z = 56.879 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1010, gadget_id = 70360291, pos = { x = -53.267, y = 3.000, z = 56.717 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	-- 邪眼工厂切环境
	{ config_id = 1005, shape = RegionShape.CUBIC, size = { x = 15.000, y = 10.000, z = 15.000 }, pos = { x = -76.557, y = 4.722, z = 52.117 } },
	-- 雷电地板触发
	{ config_id = 1013, shape = RegionShape.CUBIC, size = { x = 10.000, y = 15.000, z = 15.000 }, pos = { x = -67.537, y = 6.000, z = 51.897 } },
	-- 雷矢触发
	{ config_id = 1014, shape = RegionShape.CUBIC, size = { x = 10.000, y = 15.000, z = 15.000 }, pos = { x = -55.613, y = 6.000, z = 51.897 } }
}

-- 触发器
triggers = {
	-- 邪眼工厂切环境
	{ config_id = 1001005, name = "ENTER_REGION_1005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1005", action = "action_EVENT_ENTER_REGION_1005" },
	-- 雷电地板触发
	{ config_id = 1001013, name = "ENTER_REGION_1013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1013", action = "" },
	-- 雷矢触发
	{ config_id = 1001014, name = "ENTER_REGION_1014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1014", action = "action_EVENT_ENTER_REGION_1014", trigger_count = 0 }
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
		gadgets = { 1001, 1002, 1003, 1004, 1007, 1008, 1009, 1010 },
		regions = { 1005, 1013, 1014 },
		triggers = { "ENTER_REGION_1005", "ENTER_REGION_1013", "ENTER_REGION_1014" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_1005(context, evt)
	if evt.param1 ~= 1005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1005(context, evt)
	
	ScriptLib.SetWeatherAreaState(context, 10150, 1)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1013(context, evt)
	if evt.param1 ~= 1013 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1014(context, evt)
	if evt.param1 ~= 1014 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1014(context, evt)
	-- 将configid为 1003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 1004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V2_0/ThunderFloor"