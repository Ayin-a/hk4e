-- 基础信息
local base_info = {
	group_id = 133222009
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
		{ config_id = 9001, monster_id = 21010201, pos = { x = -4315.057, y = 227.841, z = -4168.546 }, rot = { x = 0.000, y = 214.902, z = 0.000 }, level = 32, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 14 },
		{ config_id = 9004, monster_id = 22010401, pos = { x = -4308.878, y = 226.528, z = -4161.058 }, rot = { x = 349.307, y = 249.310, z = 5.675 }, level = 30, drop_tag = "深渊法师", pose_id = 9013, area_id = 14 },
		{ config_id = 9005, monster_id = 21011601, pos = { x = -4305.154, y = 226.235, z = -4173.285 }, rot = { x = 16.001, y = 39.812, z = 348.423 }, level = 30, drop_tag = "丘丘人", pose_id = 9002, area_id = 14 },
		{ config_id = 9006, monster_id = 21030601, pos = { x = -4309.481, y = 226.734, z = -4167.660 }, rot = { x = 0.000, y = 192.668, z = 0.000 }, level = 30, drop_tag = "丘丘萨满", pose_id = 9012, area_id = 14 }
	},
	gadgets = {
		{ config_id = 9007, gadget_id = 70300089, pos = { x = -4315.406, y = 227.646, z = -4162.449 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 9008, gadget_id = 70300089, pos = { x = -4308.898, y = 226.541, z = -4165.837 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 9009, gadget_id = 70300089, pos = { x = -4308.182, y = 226.278, z = -4158.667 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 9010, gadget_id = 70310001, pos = { x = -4310.994, y = 226.910, z = -4161.883 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 9011, gadget_id = 70310006, pos = { x = -4306.625, y = 226.735, z = -4171.915 }, rot = { x = 3.459, y = 359.458, z = 342.205 }, level = 30, area_id = 14 },
		{ config_id = 9012, gadget_id = 70220013, pos = { x = -4300.495, y = 224.762, z = -4170.252 }, rot = { x = 356.638, y = 337.602, z = 344.851 }, level = 30, area_id = 14 },
		{ config_id = 9013, gadget_id = 70220013, pos = { x = -4301.199, y = 224.863, z = -4168.487 }, rot = { x = 0.380, y = 336.508, z = 342.240 }, level = 30, area_id = 14 }
	},
	triggers = {
		{ config_id = 1009003, name = "ANY_MONSTER_DIE_9003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_9003", action = "action_EVENT_ANY_MONSTER_DIE_9003" }
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