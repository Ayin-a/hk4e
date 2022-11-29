-- 基础信息
local base_info = {
	group_id = 250062005
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
	{ config_id = 5001, gadget_id = 70360285, pos = { x = -52.248, y = 30.720, z = 135.083 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5002, gadget_id = 70360285, pos = { x = -27.960, y = 20.720, z = 141.387 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 5003, gadget_id = 70360285, pos = { x = -33.159, y = 20.720, z = 141.323 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 5004, gadget_id = 70360285, pos = { x = -17.272, y = 20.720, z = 160.209 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5005, gadget_id = 70360285, pos = { x = -4.359, y = 20.720, z = 160.113 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5006, gadget_id = 70360285, pos = { x = -8.461, y = 15.720, z = 151.259 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 5007, gadget_id = 70360285, pos = { x = 15.576, y = 20.720, z = 145.120 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
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
		gadgets = { 5001, 5002, 5003, 5004, 5005, 5006, 5007 },
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