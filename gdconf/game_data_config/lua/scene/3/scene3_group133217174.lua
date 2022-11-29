-- 基础信息
local base_info = {
	group_id = 133217174
}

-- Trigger变量
local defs = {
	duration = 15,
	group_id = 133217174
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
		{ config_id = 174001, gadget_id = 70211111, pos = { x = -5040.934, y = 212.629, z = -3818.957 }, rot = { x = 31.461, y = 58.140, z = 17.504 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 },
		{ config_id = 174002, gadget_id = 70350083, pos = { x = -5050.619, y = 196.345, z = -3791.614 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 14 },
		{ config_id = 174003, gadget_id = 70360001, pos = { x = -5050.619, y = 197.345, z = -3791.614 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 14 },
		{ config_id = 174004, gadget_id = 70330100, pos = { x = -5040.351, y = 193.606, z = -3783.008 }, rot = { x = 0.000, y = 280.282, z = 0.000 }, level = 2, area_id = 14 },
		{ config_id = 174011, gadget_id = 70330093, pos = { x = -5036.364, y = 193.606, z = -3788.404 }, rot = { x = 0.000, y = 280.282, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 174012, gadget_id = 70900380, pos = { x = -5037.452, y = 203.048, z = -3796.128 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 174013, gadget_id = 70900380, pos = { x = -5029.537, y = 206.025, z = -3798.758 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 174014, gadget_id = 70900380, pos = { x = -5026.083, y = 208.585, z = -3809.760 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 174015, gadget_id = 70900380, pos = { x = -5031.367, y = 211.017, z = -3813.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 174016, gadget_id = 70900380, pos = { x = -5036.998, y = 213.528, z = -3817.548 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 174017, gadget_id = 70330093, pos = { x = -5015.438, y = 208.941, z = -3819.031 }, rot = { x = 0.000, y = 280.282, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 174018, gadget_id = 70330093, pos = { x = -5011.630, y = 208.941, z = -3824.677 }, rot = { x = 0.000, y = 280.282, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 174019, gadget_id = 70330100, pos = { x = -5007.785, y = 208.941, z = -3830.330 }, rot = { x = 0.000, y = 280.282, z = 0.000 }, level = 30, area_id = 14 }
	},
	triggers = {
		{ config_id = 1174005, name = "CHALLENGE_SUCCESS_174005", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_174005", trigger_count = 0 },
		{ config_id = 1174006, name = "CHALLENGE_FAIL_174006", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_174006", trigger_count = 0 },
		{ config_id = 1174007, name = "GADGET_STATE_CHANGE_174007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_174007", action = "action_EVENT_GADGET_STATE_CHANGE_174007", trigger_count = 0 },
		{ config_id = 1174008, name = "GADGET_STATE_CHANGE_174008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_174008", action = "", tag = "202" },
		{ config_id = 1174009, name = "GADGET_CREATE_174009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_174009", action = "action_EVENT_GADGET_CREATE_174009", trigger_count = 0 },
		{ config_id = 1174010, name = "SELECT_OPTION_174010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_174010", action = "action_EVENT_SELECT_OPTION_174010", trigger_count = 0 },
		{ config_id = 1174020, name = "GROUP_LOAD_174020", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_174020", trigger_count = 0 }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
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