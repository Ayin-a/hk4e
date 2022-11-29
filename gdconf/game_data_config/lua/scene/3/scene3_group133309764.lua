-- 基础信息
local base_info = {
	group_id = 133309764
}

-- DEFS_MISCS
--第一次交互的option，之后切为2
local optionID = {437}

--常用ID：
--{431,432} 开/关门
--{433} 启动电梯
--{438,439} 开/关风扇（权限等级3）
--{440} 权限操作台解除物件锁定

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
		{ config_id = 764001, gadget_id = 70330282, pos = { x = -2560.198, y = 56.012, z = 5297.803 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, persistent = true, server_global_value_config = {SGV_ChiWangLevelRequire = 5}, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 27 },
		{ config_id = 764002, gadget_id = 70330283, pos = { x = -2557.207, y = 55.592, z = 5301.126 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, persistent = true, server_global_value_config = {SGV_CHAINTYPE = 100004, SGV_CHAINLEVEL = 5}, area_id = 27 }
	},
	triggers = {
		{ config_id = 1764003, name = "SELECT_OPTION_764003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_764003", action = "action_EVENT_SELECT_OPTION_764003", trigger_count = 0 },
		{ config_id = 1764004, name = "GADGET_STATE_CHANGE_764004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_764004", action = "action_EVENT_GADGET_STATE_CHANGE_764004", trigger_count = 0 },
		{ config_id = 1764005, name = "GROUP_LOAD_764005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_764005", action = "action_EVENT_GROUP_LOAD_764005", trigger_count = 0 }
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