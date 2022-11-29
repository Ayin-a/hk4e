-- 基础信息
local base_info = {
	group_id = 133222123
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
		{ config_id = 123001, monster_id = 21020301, pos = { x = -4754.085, y = 200.551, z = -4869.235 }, rot = { x = 0.000, y = 39.153, z = 0.000 }, level = 31, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 14 },
		{ config_id = 123004, monster_id = 21030101, pos = { x = -4751.564, y = 200.914, z = -4870.531 }, rot = { x = 0.000, y = 314.892, z = 0.000 }, level = 30, drop_tag = "丘丘萨满", area_id = 14 },
		{ config_id = 123005, monster_id = 21010701, pos = { x = -4745.976, y = 200.523, z = -4865.976 }, rot = { x = 0.000, y = 249.757, z = 0.000 }, level = 30, drop_tag = "丘丘人", pose_id = 9013, area_id = 14 },
		{ config_id = 123006, monster_id = 21010401, pos = { x = -4748.640, y = 200.427, z = -4862.735 }, rot = { x = 0.000, y = 219.107, z = 0.000 }, level = 30, drop_tag = "远程丘丘人", pose_id = 9013, area_id = 14 },
		{ config_id = 123007, monster_id = 21010901, pos = { x = -4753.000, y = 200.296, z = -4860.674 }, rot = { x = 0.000, y = 178.039, z = 0.000 }, level = 30, drop_tag = "远程丘丘人", pose_id = 9013, area_id = 14 },
		{ config_id = 123009, monster_id = 21030501, pos = { x = -4758.338, y = 201.466, z = -4871.996 }, rot = { x = 0.000, y = 27.120, z = 0.000 }, level = 30, drop_tag = "丘丘萨满", area_id = 14 },
		{ config_id = 123011, monster_id = 21020801, pos = { x = -4740.480, y = 200.646, z = -4859.347 }, rot = { x = 0.000, y = 213.387, z = 0.000 }, level = 32, drop_tag = "丘丘岩盔王", area_id = 14 }
	},
	gadgets = {
		{ config_id = 123002, gadget_id = 70211022, pos = { x = -4759.165, y = 200.450, z = -4865.104 }, rot = { x = 6.837, y = 42.373, z = 357.801 }, level = 26, drop_tag = "战斗高级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 },
		{ config_id = 123012, gadget_id = 70220013, pos = { x = -4753.739, y = 201.382, z = -4872.880 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 123013, gadget_id = 70220014, pos = { x = -4758.455, y = 200.905, z = -4868.648 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 123014, gadget_id = 70300086, pos = { x = -4748.244, y = 201.000, z = -4870.787 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 123015, gadget_id = 70300086, pos = { x = -4757.959, y = 200.230, z = -4862.097 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 123016, gadget_id = 70300088, pos = { x = -4756.133, y = 201.845, z = -4874.315 }, rot = { x = 0.000, y = 284.491, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 123017, gadget_id = 70300088, pos = { x = -4761.709, y = 201.134, z = -4870.843 }, rot = { x = 0.000, y = 327.132, z = 0.000 }, level = 30, area_id = 14 }
	},
	triggers = {
		{ config_id = 1123003, name = "ANY_MONSTER_DIE_123003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_123003", action = "action_EVENT_ANY_MONSTER_DIE_123003" },
		{ config_id = 1123008, name = "MONSTER_BATTLE_123008", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_123008" },
		{ config_id = 1123010, name = "SPECIFIC_MONSTER_HP_CHANGE_123010", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "123001", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_123010", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_123010" }
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