-- 基础信息
local base_info = {
	group_id = 133315074
}

-- Trigger变量
local defs = {
	gadget_id = 74004
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
	{ config_id = 1, name = "start", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 74001, gadget_id = 70310200, pos = { x = 108.439, y = 136.764, z = 3051.394 }, rot = { x = 0.000, y = 40.329, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
		{ config_id = 74002, gadget_id = 70310200, pos = { x = 93.833, y = 141.289, z = 3038.478 }, rot = { x = 0.000, y = 32.288, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
		{ config_id = 74003, gadget_id = 70310200, pos = { x = 129.780, y = 131.201, z = 3042.830 }, rot = { x = 0.000, y = 115.034, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
		{ config_id = 74004, gadget_id = 70211101, pos = { x = 142.707, y = 126.035, z = 3035.436 }, rot = { x = -0.005, y = 300.871, z = 12.165 }, level = 26, drop_tag = "解谜低级须弥", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 20 },
		{ config_id = 74005, gadget_id = 70330255, pos = { x = 93.866, y = 142.045, z = 3038.661 }, rot = { x = 11.456, y = 44.851, z = 7.788 }, level = 27, area_id = 20 },
		{ config_id = 74006, gadget_id = 70330255, pos = { x = 108.439, y = 137.369, z = 3051.394 }, rot = { x = 12.703, y = 113.802, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 74007, gadget_id = 70330255, pos = { x = 108.439, y = 137.369, z = 3051.394 }, rot = { x = 345.491, y = 224.696, z = -0.001 }, level = 27, area_id = 20 },
		{ config_id = 74008, gadget_id = 70330255, pos = { x = 129.937, y = 131.862, z = 3042.763 }, rot = { x = 345.497, y = 293.178, z = -0.001 }, level = 27, area_id = 20 }
	},
	triggers = {
		{ config_id = 1074009, name = "GADGET_STATE_CHANGE_74009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_74009", action = "action_EVENT_GADGET_STATE_CHANGE_74009", trigger_count = 0 },
		{ config_id = 1074010, name = "GADGET_STATE_CHANGE_74010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_74010" },
		{ config_id = 1074011, name = "GADGET_CREATE_74011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_74011", action = "action_EVENT_GADGET_CREATE_74011" },
		{ config_id = 1074012, name = "GADGET_STATE_CHANGE_74012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_74012", action = "action_EVENT_GADGET_STATE_CHANGE_74012" },
		{ config_id = 1074013, name = "GADGET_STATE_CHANGE_74013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_74013", action = "action_EVENT_GADGET_STATE_CHANGE_74013" },
		{ config_id = 1074014, name = "GADGET_STATE_CHANGE_74014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_74014", action = "action_EVENT_GADGET_STATE_CHANGE_74014" },
		{ config_id = 1074015, name = "GADGET_STATE_CHANGE_74015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_74015", action = "action_EVENT_GADGET_STATE_CHANGE_74015" }
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