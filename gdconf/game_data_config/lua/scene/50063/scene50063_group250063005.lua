-- 基础信息
local base_info = {
	group_id = 250063005
}

-- DEFS_MISCS
local EnterConfigID = 5008

local thunderFloorTimer = {7}

local floorList = {5001,5002,5003,5004,5005,5006,5007}

local randomNumMin = 7

local randomNumMax = 7

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
	{ config_id = 5001, gadget_id = 70360285, pos = { x = 31.897, y = 14.190, z = 267.718 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5002, gadget_id = 70360285, pos = { x = 34.901, y = 14.190, z = 273.475 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5003, gadget_id = 70360285, pos = { x = 35.832, y = 14.190, z = 262.782 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5004, gadget_id = 70360285, pos = { x = 28.024, y = 14.190, z = 262.577 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5005, gadget_id = 70360285, pos = { x = 28.769, y = 14.190, z = 273.475 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5006, gadget_id = 70360285, pos = { x = 38.306, y = 14.190, z = 268.090 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5007, gadget_id = 70360285, pos = { x = 25.892, y = 14.190, z = 267.889 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5009, gadget_id = 70320001, pos = { x = 16.678, y = 14.190, z = 266.238 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 5010, gadget_id = 70320001, pos = { x = 46.797, y = 14.190, z = 266.238 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 5011, gadget_id = 70350170, pos = { x = 43.040, y = 21.571, z = 253.373 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 5012, gadget_id = 70350170, pos = { x = 43.040, y = 21.571, z = 263.103 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 5013, gadget_id = 70350170, pos = { x = 43.040, y = 21.571, z = 273.034 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 5014, gadget_id = 70350170, pos = { x = 21.878, y = 21.571, z = 253.294 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 5015, gadget_id = 70350170, pos = { x = 21.878, y = 21.571, z = 263.023 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 5016, gadget_id = 70350170, pos = { x = 21.878, y = 21.571, z = 272.954 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 5017, gadget_id = 70350170, pos = { x = 28.922, y = 16.580, z = 267.997 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 5018, gadget_id = 70350170, pos = { x = 34.768, y = 16.580, z = 267.997 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart }
}

-- 区域
regions = {
	{ config_id = 5008, shape = RegionShape.SPHERE, radius = 20, pos = { x = -64.892, y = 15.720, z = 161.832 } }
}

-- 触发器
triggers = {
	{ config_id = 1005008, name = "ENTER_REGION_5008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5008", action = "" }
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
		gadgets = { 5001, 5002, 5003, 5004, 5005, 5006, 5007, 5009, 5010, 5011, 5012, 5013, 5014, 5015, 5016, 5017, 5018 },
		regions = { 5008 },
		triggers = { "ENTER_REGION_5008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_5008(context, evt)
	if evt.param1 ~= 5008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

require "V2_0/ThunderFloor"