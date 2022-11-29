-- 基础信息
local base_info = {
	group_id = 220111011
}

-- DEFS_MISCS
local EnterConfigID = 11007

local thunderFloorTimer = {7}

local floorList = {11001,11002,11003,11004,11005,11006,11008,11009}

local randomNumMin = 3

local randomNumMax = 6

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
	{ config_id = 11001, gadget_id = 70360285, pos = { x = 55.773, y = 15.533, z = 103.275 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 11002, gadget_id = 70360285, pos = { x = 58.359, y = 15.553, z = 103.312 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 11003, gadget_id = 70360285, pos = { x = 57.054, y = 15.550, z = 99.360 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 11004, gadget_id = 70360285, pos = { x = 55.773, y = 15.533, z = 93.892 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 11005, gadget_id = 70360285, pos = { x = 58.359, y = 15.553, z = 93.929 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 11006, gadget_id = 70360285, pos = { x = 57.054, y = 15.550, z = 89.976 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 11008, gadget_id = 70360285, pos = { x = 57.054, y = 15.550, z = 85.829 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 11009, gadget_id = 70360285, pos = { x = 57.054, y = 15.550, z = 83.191 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 11007, shape = RegionShape.CUBIC, size = { x = 10.000, y = 15.000, z = 10.000 }, pos = { x = 59.185, y = 22.973, z = 111.410 } }
}

-- 触发器
triggers = {
	{ config_id = 1011007, name = "ENTER_REGION_11007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_11007", action = "" }
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
		gadgets = { 11001, 11002, 11003, 11004, 11005, 11006, 11008, 11009 },
		regions = { 11007 },
		triggers = { "ENTER_REGION_11007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_11007(context, evt)
	if evt.param1 ~= 11007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

require "V2_0/ThunderFloor"