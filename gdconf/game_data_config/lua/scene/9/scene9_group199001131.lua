-- 基础信息
local base_info = {
	group_id = 199001131
}

-- Trigger变量
local defs = {
	CollectSuit = 0
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
		{ config_id = 131001, gadget_id = 70350083, pos = { x = 185.123, y = 147.980, z = 457.105 }, rot = { x = 9.895, y = 53.974, z = 352.877 }, level = 20, area_id = 402 },
		{ config_id = 131002, gadget_id = 70360001, pos = { x = 185.123, y = 147.980, z = 457.105 }, rot = { x = 9.895, y = 53.974, z = 352.877 }, level = 20, area_id = 402 },
		{ config_id = 131003, gadget_id = 70211111, pos = { x = 185.924, y = 146.453, z = 464.251 }, rot = { x = 357.650, y = 59.519, z = 4.560 }, level = 16, drop_tag = "解谜中级群岛", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 402 },
		{ config_id = 131004, gadget_id = 70360094, pos = { x = 195.050, y = 165.629, z = 469.939 }, rot = { x = 280.601, y = 22.267, z = 326.805 }, level = 20, area_id = 402 },
		{ config_id = 131005, gadget_id = 70360094, pos = { x = 195.218, y = 167.996, z = 470.349 }, rot = { x = 280.601, y = 22.267, z = 326.805 }, level = 20, area_id = 402 },
		{ config_id = 131006, gadget_id = 70360094, pos = { x = 195.364, y = 170.050, z = 470.705 }, rot = { x = 280.601, y = 22.267, z = 326.805 }, level = 20, area_id = 402 },
		{ config_id = 131007, gadget_id = 70360094, pos = { x = 195.552, y = 172.698, z = 471.164 }, rot = { x = 280.601, y = 22.267, z = 326.805 }, level = 20, area_id = 402 },
		{ config_id = 131008, gadget_id = 70360094, pos = { x = 193.801, y = 164.761, z = 470.169 }, rot = { x = 280.601, y = 22.267, z = 326.805 }, level = 20, area_id = 402 },
		{ config_id = 131009, gadget_id = 70360094, pos = { x = 193.414, y = 172.028, z = 472.170 }, rot = { x = 280.601, y = 22.267, z = 326.805 }, level = 20, area_id = 402 },
		{ config_id = 131016, gadget_id = 70360094, pos = { x = 191.984, y = 171.908, z = 473.443 }, rot = { x = 280.601, y = 22.267, z = 326.805 }, level = 20, area_id = 402 },
		{ config_id = 131017, gadget_id = 70360094, pos = { x = 190.849, y = 171.725, z = 474.969 }, rot = { x = 280.601, y = 22.267, z = 326.805 }, level = 20, area_id = 402 },
		{ config_id = 131018, gadget_id = 70360094, pos = { x = 190.670, y = 169.206, z = 474.533 }, rot = { x = 280.601, y = 22.267, z = 326.805 }, level = 20, area_id = 402 },
		{ config_id = 131019, gadget_id = 70360094, pos = { x = 190.505, y = 166.874, z = 474.129 }, rot = { x = 280.601, y = 22.267, z = 326.805 }, level = 20, area_id = 402 },
		{ config_id = 131020, gadget_id = 70360094, pos = { x = 190.369, y = 164.956, z = 473.796 }, rot = { x = 280.601, y = 22.267, z = 326.805 }, level = 20, area_id = 402 },
		{ config_id = 131021, gadget_id = 70360094, pos = { x = 189.563, y = 164.771, z = 475.190 }, rot = { x = 280.601, y = 22.267, z = 326.805 }, level = 20, area_id = 402 }
	},
	triggers = {
		{ config_id = 1131010, name = "CHALLENGE_SUCCESS_131010", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_131010" },
		{ config_id = 1131011, name = "CHALLENGE_FAIL_131011", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_131011", trigger_count = 0 },
		{ config_id = 1131012, name = "GADGET_STATE_CHANGE_131012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_131012", action = "action_EVENT_GADGET_STATE_CHANGE_131012", trigger_count = 0 },
		{ config_id = 1131013, name = "ANY_GADGET_DIE_131013", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
		{ config_id = 1131014, name = "GADGET_CREATE_131014", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_131014", action = "action_EVENT_GADGET_CREATE_131014", trigger_count = 0 },
		{ config_id = 1131015, name = "SELECT_OPTION_131015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_131015", action = "action_EVENT_SELECT_OPTION_131015", trigger_count = 0 }
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
		-- description = [风之微粒布设],
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