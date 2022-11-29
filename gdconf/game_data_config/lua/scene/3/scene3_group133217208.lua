-- 基础信息
local base_info = {
	group_id = 133217208
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
	monsters = {
		{ config_id = 208001, monster_id = 23010301, pos = { x = -5064.958, y = 200.366, z = -3805.023 }, rot = { x = 0.000, y = 1.370, z = 0.000 }, level = 30, drop_tag = "先遣队", disableWander = true, pose_id = 9014, area_id = 14 },
		{ config_id = 208004, monster_id = 23010501, pos = { x = -5058.253, y = 200.169, z = -3797.651 }, rot = { x = 0.000, y = 255.365, z = 0.000 }, level = 30, drop_tag = "先遣队", disableWander = true, pose_id = 9014, area_id = 14 },
		{ config_id = 208005, monster_id = 23010101, pos = { x = -5063.706, y = 199.665, z = -3793.636 }, rot = { x = 0.000, y = 168.160, z = 0.000 }, level = 30, drop_tag = "先遣队", disableWander = true, pose_id = 9014, area_id = 14 },
		{ config_id = 208006, monster_id = 23010201, pos = { x = -5069.923, y = 199.991, z = -3800.213 }, rot = { x = 0.000, y = 87.930, z = 0.000 }, level = 30, drop_tag = "先遣队", disableWander = true, pose_id = 9014, area_id = 14 },
		{ config_id = 208007, monster_id = 25010201, pos = { x = -5062.633, y = 200.018, z = -3799.381 }, rot = { x = 0.000, y = 73.941, z = 0.000 }, level = 30, drop_tag = "盗宝团", disableWander = true, pose_id = 9004, area_id = 14 },
		{ config_id = 208008, monster_id = 25010201, pos = { x = -5063.473, y = 200.056, z = -3800.121 }, rot = { x = 0.000, y = 191.292, z = 0.000 }, level = 30, drop_tag = "盗宝团", disableWander = true, pose_id = 9004, area_id = 14 },
		{ config_id = 208009, monster_id = 25010201, pos = { x = -5063.646, y = 199.976, z = -3799.083 }, rot = { x = 0.000, y = 308.877, z = 0.000 }, level = 30, drop_tag = "盗宝团", disableWander = true, pose_id = 9004, area_id = 14 }
	},
	gadgets = {
		{ config_id = 208002, gadget_id = 70211002, pos = { x = -5068.315, y = 200.275, z = -3806.889 }, rot = { x = 2.683, y = 0.042, z = 1.790 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 },
		{ config_id = 208010, gadget_id = 70220048, pos = { x = -5061.419, y = 199.903, z = -3797.031 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 208011, gadget_id = 70220048, pos = { x = -5061.413, y = 200.324, z = -3801.418 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 208012, gadget_id = 70220048, pos = { x = -5065.514, y = 200.126, z = -3801.253 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 208013, gadget_id = 70220048, pos = { x = -5065.456, y = 199.839, z = -3797.373 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 }
	},
	triggers = {
		{ config_id = 1208003, name = "ANY_MONSTER_DIE_208003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_208003", action = "action_EVENT_ANY_MONSTER_DIE_208003" },
		{ config_id = 1208014, name = "GADGET_STATE_CHANGE_208014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_208014", action = "action_EVENT_GADGET_STATE_CHANGE_208014" },
		{ config_id = 1208015, name = "MONSTER_BATTLE_208015", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_208015" }
	}
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 3,
	end_suite = 1,
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