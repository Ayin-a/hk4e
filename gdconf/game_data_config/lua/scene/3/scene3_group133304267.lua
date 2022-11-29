-- 基础信息
local base_info = {
	group_id = 133304267
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
	{ config_id = 267001, gadget_id = 70350438, pos = { x = -1548.778, y = 250.070, z = 2347.286 }, rot = { x = 18.443, y = 66.591, z = 239.100 }, level = 30, area_id = 21 },
	{ config_id = 267002, gadget_id = 70350438, pos = { x = -1537.432, y = 245.505, z = 2341.755 }, rot = { x = 350.560, y = 341.283, z = 314.513 }, level = 30, area_id = 21 },
	{ config_id = 267003, gadget_id = 70350438, pos = { x = -1553.667, y = 251.030, z = 2335.135 }, rot = { x = 350.169, y = 340.076, z = 285.764 }, level = 30, area_id = 21 },
	{ config_id = 267004, gadget_id = 70350438, pos = { x = -1542.869, y = 246.885, z = 2329.879 }, rot = { x = 18.118, y = 71.327, z = 77.436 }, level = 30, area_id = 21 },
	{ config_id = 267005, gadget_id = 70350437, pos = { x = -1551.710, y = 258.019, z = 2309.121 }, rot = { x = 339.333, y = 297.504, z = 347.086 }, level = 30, area_id = 21 },
	{ config_id = 267006, gadget_id = 70350437, pos = { x = -1567.561, y = 265.440, z = 2353.381 }, rot = { x = 5.828, y = 24.748, z = 332.886 }, level = 30, area_id = 21 },
	{ config_id = 267007, gadget_id = 70350437, pos = { x = -1532.990, y = 254.021, z = 2367.188 }, rot = { x = 341.189, y = 294.318, z = 313.407 }, level = 30, area_id = 21 },
	{ config_id = 267008, gadget_id = 70350437, pos = { x = -1518.685, y = 247.205, z = 2322.476 }, rot = { x = 4.375, y = 19.995, z = 300.673 }, level = 30, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1267009, name = "QUEST_START_267009", event = EventType.EVENT_QUEST_START, source = "7302615", condition = "", action = "action_EVENT_QUEST_START_267009", trigger_count = 0 }
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
	io_type = 1,
	suite = 1,
	end_suite = 2,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suite_disk = {
	[1] = {
		gadgets = {
			{ config_id = 267001, state = 0 },
			{ config_id = 267002, state = 0 },
			{ config_id = 267003, state = 0 },
			{ config_id = 267004, state = 0 },
			{ config_id = 267005, state = 0 },
			{ config_id = 267006, state = 0 },
			{ config_id = 267007, state = 0 },
			{ config_id = 267008, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "QUEST_START_267009" },
		npcs = { },
		variables = {
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 267001, state = 201 },
			{ config_id = 267002, state = 201 },
			{ config_id = 267003, state = 201 },
			{ config_id = 267004, state = 201 },
			{ config_id = 267005, state = 201 },
			{ config_id = 267006, state = 201 },
			{ config_id = 267007, state = 201 },
			{ config_id = 267008, state = 201 }
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_START_267009(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133304267, 2)
	
	return 0
end