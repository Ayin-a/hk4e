-- 基础信息
local base_info = {
	group_id = 220113005
}

-- DEFS_MISCS
local EnterConfigID = 5007

local thunderFloorTimer = {7}

local floorList = {5001,5002,5003,5004,5005,5006,5008,5009}

local randomNumMin = 5

local randomNumMax = 5

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
	{ config_id = 5001, gadget_id = 70360285, pos = { x = 2.588, y = -8.542, z = 56.231 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 5002, gadget_id = 70360285, pos = { x = 2.594, y = -8.932, z = 53.565 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 5003, gadget_id = 70360285, pos = { x = -2.599, y = -8.932, z = 48.264 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 5004, gadget_id = 70360285, pos = { x = -2.599, y = -8.932, z = 50.931 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 5005, gadget_id = 70360285, pos = { x = 2.612, y = -8.932, z = 48.264 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 5006, gadget_id = 70360285, pos = { x = 2.612, y = -8.932, z = 50.931 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 5008, gadget_id = 70360285, pos = { x = -2.645, y = -8.932, z = 53.618 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 5009, gadget_id = 70360285, pos = { x = -2.661, y = -8.542, z = 56.238 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 5007, shape = RegionShape.CUBIC, size = { x = 4.000, y = 40.000, z = 15.000 }, pos = { x = -16.092, y = -0.505, z = 51.910 } }
}

-- 触发器
triggers = {
	{ config_id = 1005007, name = "ENTER_REGION_5007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5007", action = "" }
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
		gadgets = { 5001, 5002, 5003, 5004, 5005, 5006, 5008, 5009 },
		regions = { 5007 },
		triggers = { "ENTER_REGION_5007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_5007(context, evt)
	if evt.param1 ~= 5007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

require "V2_0/ThunderFloor"