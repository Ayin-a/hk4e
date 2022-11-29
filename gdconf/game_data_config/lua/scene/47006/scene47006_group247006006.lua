-- 基础信息
local base_info = {
	group_id = 247006006
}

-- DEFS_MISCS
local GroupId = 247006006
local ChestConfigID = 6027
local RegionID = 6001
local ChestConfigIDList = {6027}

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
	{ config_id = 6003, gadget_id = 70310133, pos = { x = -7.771, y = 0.055, z = 82.788 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 6004, gadget_id = 70310132, pos = { x = -5.553, y = 0.050, z = 82.808 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 6005, gadget_id = 70310133, pos = { x = -4.352, y = 0.050, z = 81.495 }, rot = { x = 0.000, y = 91.801, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 6006, gadget_id = 70310132, pos = { x = -4.402, y = 0.059, z = 79.278 }, rot = { x = 0.000, y = 91.801, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 6007, gadget_id = 70310133, pos = { x = -9.046, y = 0.062, z = 81.495 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 6008, gadget_id = 70310132, pos = { x = -9.096, y = 0.051, z = 79.278 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 6009, gadget_id = 70310133, pos = { x = -7.838, y = 0.051, z = 77.925 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 6010, gadget_id = 70310132, pos = { x = -5.621, y = 0.056, z = 77.946 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 6011, gadget_id = 70310133, pos = { x = -1.525, y = 0.050, z = 82.788 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 6012, gadget_id = 70310132, pos = { x = 0.693, y = 0.050, z = 82.808 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 6013, gadget_id = 70310133, pos = { x = 1.893, y = 0.070, z = 81.495 }, rot = { x = 0.000, y = 91.801, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 6014, gadget_id = 70310132, pos = { x = 1.844, y = 0.051, z = 79.278 }, rot = { x = 0.000, y = 91.801, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 6015, gadget_id = 70310133, pos = { x = -2.800, y = 0.050, z = 81.495 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 6016, gadget_id = 70310132, pos = { x = -2.850, y = 0.052, z = 79.278 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 6017, gadget_id = 70310133, pos = { x = -1.592, y = 0.057, z = 77.925 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 6018, gadget_id = 70310132, pos = { x = 0.625, y = 0.053, z = 77.946 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 6019, gadget_id = 70310133, pos = { x = 4.995, y = 0.055, z = 82.788 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 6020, gadget_id = 70310132, pos = { x = 7.213, y = 0.060, z = 82.808 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 6021, gadget_id = 70310133, pos = { x = 8.414, y = 0.055, z = 81.495 }, rot = { x = 0.000, y = 91.801, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 6022, gadget_id = 70310132, pos = { x = 8.364, y = 0.052, z = 79.278 }, rot = { x = 0.000, y = 91.801, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 6023, gadget_id = 70310133, pos = { x = 3.720, y = 0.064, z = 81.495 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 6024, gadget_id = 70310132, pos = { x = 3.671, y = 0.052, z = 79.278 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 6025, gadget_id = 70310133, pos = { x = 4.928, y = 0.050, z = 77.925 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 6026, gadget_id = 70310132, pos = { x = 7.146, y = 0.051, z = 77.946 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 6027, gadget_id = 70211111, pos = { x = 6.525, y = 0.063, z = 81.448 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, chest_drop_id = 21600009, drop_count = 1, isOneoff = true, persistent = true },
	{ config_id = 6028, gadget_id = 70310129, pos = { x = -0.379, y = 0.050, z = 79.880 }, rot = { x = 0.000, y = 38.418, z = 0.000 }, level = 1 },
	{ config_id = 6029, gadget_id = 70310125, pos = { x = 0.003, y = 0.114, z = 60.040 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 6030, gadget_id = 70310125, pos = { x = -0.051, y = 0.114, z = 99.822 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 6031, gadget_id = 70310125, pos = { x = 20.140, y = 0.174, z = 79.985 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 6032, gadget_id = 70310125, pos = { x = -20.176, y = 0.174, z = 79.985 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 6033, gadget_id = 70310100, pos = { x = 0.969, y = 0.071, z = 81.571 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 6001, shape = RegionShape.CUBIC, size = { x = 40.000, y = 20.000, z = 40.000 }, pos = { x = 0.488, y = 0.050, z = 79.986 } },
	{ config_id = 6002, shape = RegionShape.CUBIC, size = { x = 40.000, y = 20.000, z = 40.000 }, pos = { x = -0.037, y = 0.000, z = 79.986 } },
	{ config_id = 6034, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1.938, y = 0.150, z = 83.340 } }
}

-- 触发器
triggers = {
	{ config_id = 1006001, name = "ENTER_REGION_6001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
	{ config_id = 1006002, name = "ENTER_REGION_6002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_6002", action = "" },
	{ config_id = 1006034, name = "ENTER_REGION_6034", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" }
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
		gadgets = { 6003, 6004, 6005, 6006, 6007, 6008, 6009, 6010, 6011, 6012, 6013, 6014, 6015, 6016, 6017, 6018, 6019, 6020, 6021, 6022, 6023, 6024, 6025, 6026, 6027, 6028, 6029, 6030, 6031, 6032, 6033 },
		regions = { 6001 },
		triggers = { "ENTER_REGION_6001" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_6002(context, evt)
	if evt.param1 ~= 6002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

require "V2_2/RogueDungeon_ChestRoom"