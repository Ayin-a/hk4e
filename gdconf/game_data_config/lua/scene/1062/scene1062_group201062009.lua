-- 基础信息
local base_info = {
	group_id = 201062009
}

-- DEFS_MISCS
local EnterConfigID = 9010

local thunderFloorTimer = {5}

local floorList = {9001,9002,9003,9007,9008,9009}

local randomNumMin = 2

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
	{ config_id = 9001, gadget_id = 70360285, pos = { x = 106.175, y = -13.029, z = -19.924 }, rot = { x = 0.000, y = 0.000, z = 9.730 }, level = 1 },
	{ config_id = 9002, gadget_id = 70360285, pos = { x = 102.322, y = -13.618, z = -18.640 }, rot = { x = 351.534, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 9003, gadget_id = 70360285, pos = { x = 102.322, y = -13.618, z = -21.230 }, rot = { x = 351.534, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 9004, gadget_id = 70360285, pos = { x = 113.929, y = -11.917, z = -18.640 }, rot = { x = 351.534, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 9005, gadget_id = 70360285, pos = { x = 113.929, y = -11.895, z = -21.230 }, rot = { x = 351.534, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 9006, gadget_id = 70360285, pos = { x = 117.782, y = -11.302, z = -19.924 }, rot = { x = 0.000, y = 0.000, z = 10.800 }, level = 1 },
	{ config_id = 9007, gadget_id = 70360285, pos = { x = 126.035, y = -10.067, z = -18.640 }, rot = { x = 351.534, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 9008, gadget_id = 70360285, pos = { x = 126.035, y = -10.067, z = -21.230 }, rot = { x = 351.534, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 9009, gadget_id = 70360285, pos = { x = 129.888, y = -9.490, z = -19.907 }, rot = { x = 0.000, y = 0.000, z = 10.290 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 9010, shape = RegionShape.CUBIC, size = { x = 2.000, y = 15.000, z = 20.000 }, pos = { x = 97.116, y = -11.805, z = -19.955 } }
}

-- 触发器
triggers = {
	{ config_id = 1009010, name = "ENTER_REGION_9010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_9010", action = "" }
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
		gadgets = { 9001, 9002, 9003, 9007, 9008, 9009 },
		regions = { 9010 },
		triggers = { "ENTER_REGION_9010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_9010(context, evt)
	if evt.param1 ~= 9010 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

require "V2_0/ThunderFloor"