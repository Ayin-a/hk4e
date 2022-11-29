-- 基础信息
local base_info = {
	group_id = 199004195
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 195001, monster_id = 21030301, pos = { x = -313.733, y = 250.549, z = -679.648 }, rot = { x = 0.000, y = 228.243, z = 0.000 }, level = 20, drop_tag = "丘丘萨满", disableWander = true, area_id = 400 },
	{ config_id = 195010, monster_id = 21030401, pos = { x = -320.737, y = 250.993, z = -691.263 }, rot = { x = 0.000, y = 21.056, z = 0.000 }, level = 20, drop_tag = "丘丘萨满", disableWander = true, area_id = 400 },
	{ config_id = 195011, monster_id = 21020201, pos = { x = -320.902, y = 249.944, z = -690.206 }, rot = { x = 0.000, y = 18.343, z = 0.000 }, level = 20, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 400 },
	{ config_id = 195013, monster_id = 21020301, pos = { x = -314.087, y = 249.745, z = -681.579 }, rot = { x = 0.000, y = 204.940, z = 0.000 }, level = 20, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 400 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 195003, gadget_id = 70300100, pos = { x = -333.698, y = 247.494, z = -681.412 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 400 },
	{ config_id = 195015, gadget_id = 70300086, pos = { x = -323.137, y = 247.272, z = -682.998 }, rot = { x = 348.817, y = 353.203, z = -0.001 }, level = 1, area_id = 400 },
	{ config_id = 195016, gadget_id = 70300081, pos = { x = -320.059, y = 247.234, z = -669.988 }, rot = { x = 0.570, y = 294.776, z = 0.000 }, level = 1, area_id = 400 },
	{ config_id = 195017, gadget_id = 70300081, pos = { x = -334.166, y = 246.815, z = -675.932 }, rot = { x = 0.000, y = 202.199, z = 0.000 }, level = 1, area_id = 400 },
	{ config_id = 195018, gadget_id = 70210101, pos = { x = -323.495, y = 249.348, z = -683.452 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "搜刮点解谜人文群岛", area_id = 400 }
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
	monsters = {
		{ config_id = 195012, monster_id = 21020201, pos = { x = -313.925, y = 250.251, z = -689.273 }, rot = { x = 0.000, y = 295.712, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 401, area_id = 400 },
		{ config_id = 195014, monster_id = 21020301, pos = { x = -324.644, y = 248.978, z = -680.956 }, rot = { x = 0.000, y = 143.950, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 400 }
	},
	gadgets = {
		{ config_id = 195002, gadget_id = 70350082, pos = { x = -324.233, y = 248.547, z = -677.740 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, persistent = true, area_id = 400 },
		{ config_id = 195004, gadget_id = 70360001, pos = { x = -324.243, y = 249.016, z = -677.754 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 }
	},
	triggers = {
		{ config_id = 1195005, name = "GROUP_LOAD_195005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_195005", action = "action_EVENT_GROUP_LOAD_195005", trigger_count = 0 },
		{ config_id = 1195006, name = "CHALLENGE_SUCCESS_195006", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_195006", trigger_count = 0 },
		{ config_id = 1195007, name = "CHALLENGE_FAIL_195007", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_195007", trigger_count = 0 },
		{ config_id = 1195008, name = "GADGET_CREATE_195008", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_195008", action = "action_EVENT_GADGET_CREATE_195008", trigger_count = 0 },
		{ config_id = 1195009, name = "SELECT_OPTION_195009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_195009", action = "action_EVENT_SELECT_OPTION_195009", trigger_count = 0 }
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
		-- description = suite_1,
		monsters = { 195001, 195010, 195011, 195013 },
		gadgets = { 195003, 195015, 195016, 195017, 195018 },
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
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================