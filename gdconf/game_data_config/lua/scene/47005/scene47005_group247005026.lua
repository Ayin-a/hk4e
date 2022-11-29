-- 基础信息
local base_info = {
	group_id = 247005026
}

-- DEFS_MISCS
local GroupId = 247005026
local ChestConfigID = 26001
local RegionID = 26004
local ChestConfigIDList = {26001 , 26036}

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
	{ config_id = 26001, gadget_id = 70211111, pos = { x = 160.564, y = -0.698, z = 160.273 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, chest_drop_id = 21600009, drop_count = 1, isOneoff = true, persistent = true },
	{ config_id = 26002, gadget_id = 70310125, pos = { x = 180.000, y = 0.114, z = 160.000 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 26003, gadget_id = 70310125, pos = { x = 160.000, y = 0.114, z = 140.000 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 26005, gadget_id = 70310132, pos = { x = 158.823, y = -0.700, z = 163.033 }, rot = { x = 0.000, y = 340.000, z = 0.000 }, level = 1 },
	{ config_id = 26006, gadget_id = 70310133, pos = { x = 162.552, y = -0.700, z = 159.139 }, rot = { x = 0.000, y = 110.000, z = 0.000 }, level = 1 },
	{ config_id = 26007, gadget_id = 70310132, pos = { x = 158.798, y = -0.700, z = 157.607 }, rot = { x = 0.000, y = 200.000, z = 0.000 }, level = 1 },
	{ config_id = 26008, gadget_id = 70310133, pos = { x = 157.297, y = -0.700, z = 161.383 }, rot = { x = 0.000, y = 290.000, z = 0.000 }, level = 1 },
	{ config_id = 26009, gadget_id = 70310132, pos = { x = 159.034, y = -0.700, z = 168.410 }, rot = { x = 0.000, y = 340.000, z = 0.000 }, level = 1 },
	{ config_id = 26010, gadget_id = 70310133, pos = { x = 161.296, y = -0.700, z = 168.387 }, rot = { x = 0.000, y = 20.000, z = 0.000 }, level = 1 },
	{ config_id = 26011, gadget_id = 70310132, pos = { x = 158.798, y = -0.700, z = 164.999 }, rot = { x = 0.000, y = 200.000, z = 0.000 }, level = 1 },
	{ config_id = 26012, gadget_id = 70310133, pos = { x = 161.070, y = -0.700, z = 164.989 }, rot = { x = 0.000, y = 160.000, z = 0.000 }, level = 1 },
	{ config_id = 26013, gadget_id = 70310132, pos = { x = 158.837, y = -0.700, z = 155.363 }, rot = { x = 0.000, y = 340.000, z = 0.000 }, level = 1 },
	{ config_id = 26014, gadget_id = 70310133, pos = { x = 161.134, y = -0.700, z = 155.353 }, rot = { x = 0.000, y = 20.000, z = 0.000 }, level = 1 },
	{ config_id = 26015, gadget_id = 70310132, pos = { x = 161.098, y = -0.700, z = 151.703 }, rot = { x = 0.000, y = 160.000, z = 0.000 }, level = 1 },
	{ config_id = 26016, gadget_id = 70310133, pos = { x = 158.899, y = -0.700, z = 151.713 }, rot = { x = 0.000, y = 200.000, z = 0.000 }, level = 1 },
	{ config_id = 26019, gadget_id = 70310154, pos = { x = 145.356, y = 0.597, z = 166.449 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 26020, gadget_id = 70360291, pos = { x = 174.281, y = 0.597, z = 166.449 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 26021, gadget_id = 70310154, pos = { x = 145.356, y = 0.597, z = 153.623 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 26022, gadget_id = 70360291, pos = { x = 174.281, y = 0.597, z = 153.623 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 26023, gadget_id = 70310146, pos = { x = 160.050, y = -0.659, z = 153.508 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, chest_drop_id = 21600007, drop_count = 1, isOneoff = true, persistent = true },
	{ config_id = 26024, gadget_id = 70310146, pos = { x = 160.050, y = -0.659, z = 166.677 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, chest_drop_id = 21600007, drop_count = 1, isOneoff = true, persistent = true },
	{ config_id = 26025, gadget_id = 70310125, pos = { x = 140.000, y = 0.114, z = 160.000 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 26026, gadget_id = 70310125, pos = { x = 160.000, y = 0.114, z = 180.000 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 26027, gadget_id = 70310132, pos = { x = 161.039, y = -0.688, z = 163.033 }, rot = { x = 0.000, y = 20.000, z = 0.000 }, level = 1 },
	{ config_id = 26028, gadget_id = 70310133, pos = { x = 162.580, y = -0.700, z = 161.423 }, rot = { x = 0.000, y = 70.000, z = 0.000 }, level = 1 },
	{ config_id = 26029, gadget_id = 70310132, pos = { x = 161.012, y = -0.700, z = 157.592 }, rot = { x = 0.000, y = 160.000, z = 0.000 }, level = 1 },
	{ config_id = 26030, gadget_id = 70310133, pos = { x = 157.288, y = -0.678, z = 159.185 }, rot = { x = 0.000, y = 250.000, z = 0.000 }, level = 1 },
	{ config_id = 26032, gadget_id = 70310154, pos = { x = 153.164, y = 8.603, z = 160.060 }, rot = { x = 56.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 26033, gadget_id = 70310154, pos = { x = 153.164, y = 8.603, z = 160.899 }, rot = { x = 52.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 26034, gadget_id = 70310154, pos = { x = 153.164, y = 8.603, z = 159.182 }, rot = { x = 52.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 26035, gadget_id = 70360291, pos = { x = 160.714, y = -1.900, z = 160.000 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 26036, gadget_id = 70211111, pos = { x = 159.449, y = -0.677, z = 160.273 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, chest_drop_id = 21600009, drop_count = 1, isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 26004, shape = RegionShape.CUBIC, size = { x = 40.000, y = 25.000, z = 40.000 }, pos = { x = 160.000, y = -0.700, z = 160.000 } },
	{ config_id = 26017, shape = RegionShape.SPHERE, radius = 2, pos = { x = 160.032, y = -0.700, z = 153.569 } },
	{ config_id = 26018, shape = RegionShape.SPHERE, radius = 2, pos = { x = 160.032, y = -0.700, z = 166.683 } },
	{ config_id = 26031, shape = RegionShape.SPHERE, radius = 2, pos = { x = 159.822, y = -0.673, z = 160.332 } }
}

-- 触发器
triggers = {
	{ config_id = 1026004, name = "ENTER_REGION_26004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
	{ config_id = 1026017, name = "ENTER_REGION_26017", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_26017", action = "action_EVENT_ENTER_REGION_26017", trigger_count = 0 },
	{ config_id = 1026018, name = "ENTER_REGION_26018", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_26018", action = "action_EVENT_ENTER_REGION_26018", trigger_count = 0 },
	{ config_id = 1026031, name = "ENTER_REGION_26031", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_26031", action = "action_EVENT_ENTER_REGION_26031", trigger_count = 0 }
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
		gadgets = { 26001, 26002, 26003, 26005, 26006, 26007, 26008, 26009, 26010, 26011, 26012, 26013, 26014, 26015, 26016, 26019, 26020, 26021, 26022, 26023, 26024, 26025, 26026, 26027, 26028, 26029, 26030, 26032, 26033, 26034, 26035, 26036 },
		regions = { 26004, 26017, 26018, 26031 },
		triggers = { "ENTER_REGION_26004", "ENTER_REGION_26017", "ENTER_REGION_26018", "ENTER_REGION_26031" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_26017(context, evt)
	if evt.param1 ~= 26017 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_26017(context, evt)
	-- 将configid为 26021 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 26021, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_26018(context, evt)
	if evt.param1 ~= 26018 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_26018(context, evt)
	-- 将configid为 26019 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 26019, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_26031(context, evt)
	if evt.param1 ~= 26031 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_26031(context, evt)
	-- 将configid为 26032 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 26032, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 26033 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 26033, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 26034 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 26034, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V2_2/RogueDungeon_ChestRoom"