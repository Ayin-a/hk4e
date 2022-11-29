-- 基础信息
local base_info = {
	group_id = 133309518
}

-- Trigger变量
local defs = {
	gadget_1 = 518001,
	gadget_2 = 518002,
	gadget_3 = 518003
}

-- DEFS_MISCS
local HourGlass_ConfigIDList = {defs.gadget_1,defs.gadget_2,defs.gadget_3}

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
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 518001, gadget_id = 70330228, pos = { x = -2218.465, y = -21.021, z = 5573.616 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
		{ config_id = 518002, gadget_id = 70330228, pos = { x = -2244.194, y = -41.601, z = 5610.666 }, rot = { x = 0.000, y = 95.777, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
		{ config_id = 518003, gadget_id = 70330228, pos = { x = -2198.992, y = -23.038, z = 5632.689 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
		{ config_id = 518004, gadget_id = 70211101, pos = { x = -2197.710, y = -34.207, z = 5597.938 }, rot = { x = 16.383, y = 274.512, z = 356.314 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 },
		{ config_id = 518005, gadget_id = 70220103, pos = { x = -2201.297, y = -22.100, z = 5576.285 }, rot = { x = 0.000, y = 188.381, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
		{ config_id = 518006, gadget_id = 70220103, pos = { x = -2200.716, y = -32.748, z = 5600.048 }, rot = { x = 0.000, y = 188.381, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
		{ config_id = 518007, gadget_id = 70220103, pos = { x = -2236.367, y = -40.196, z = 5606.476 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
		{ config_id = 518008, gadget_id = 70220103, pos = { x = -2199.261, y = -24.906, z = 5628.902 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 }
	},
	regions = {
		{ config_id = 518013, shape = RegionShape.SPHERE, radius = 5, pos = { x = -2218.465, y = -21.021, z = 5573.616 }, area_id = 27 },
		{ config_id = 518014, shape = RegionShape.SPHERE, radius = 5, pos = { x = -2244.194, y = -41.601, z = 5610.666 }, area_id = 27 },
		{ config_id = 518015, shape = RegionShape.SPHERE, radius = 5, pos = { x = -2198.992, y = -23.038, z = 5632.689 }, area_id = 27 }
	},
	triggers = {
		{ config_id = 1518009, name = "VARIABLE_CHANGE_518009", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_518009", action = "action_EVENT_VARIABLE_CHANGE_518009" },
		{ config_id = 1518010, name = "VARIABLE_CHANGE_518010", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_518010", action = "action_EVENT_VARIABLE_CHANGE_518010", trigger_count = 0 },
		{ config_id = 1518011, name = "VARIABLE_CHANGE_518011", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_518011", action = "action_EVENT_VARIABLE_CHANGE_518011", trigger_count = 0 },
		{ config_id = 1518012, name = "GROUP_LOAD_518012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_518012", action = "action_EVENT_GROUP_LOAD_518012", trigger_count = 0 },
		{ config_id = 1518013, name = "ENTER_REGION_518013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_518013", action = "action_EVENT_ENTER_REGION_518013" },
		{ config_id = 1518014, name = "ENTER_REGION_518014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_518014", action = "action_EVENT_ENTER_REGION_518014" },
		{ config_id = 1518015, name = "ENTER_REGION_518015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_518015", action = "action_EVENT_ENTER_REGION_518015" }
	}
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 3,
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
		gadgets = { },
		regions = { },
		triggers = { },
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
	},
	{
		-- suite_id = 3,
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

require "V3_1/Desert_HourGlass"