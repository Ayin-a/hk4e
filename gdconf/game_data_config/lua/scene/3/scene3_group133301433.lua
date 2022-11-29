-- 基础信息
local base_info = {
	group_id = 133301433
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 433001, monster_id = 25210203, pos = { x = -670.254, y = 241.150, z = 3248.409 }, rot = { x = 0.000, y = 123.950, z = 0.000 }, level = 33, drop_tag = "镀金旅团", disableWander = true, pose_id = 9512, area_id = 22 },
	{ config_id = 433002, monster_id = 25210201, pos = { x = -668.287, y = 241.150, z = 3247.323 }, rot = { x = 0.000, y = 321.605, z = 0.000 }, level = 33, drop_tag = "镀金旅团", disableWander = true, pose_id = 9511, area_id = 22 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 433003, gadget_id = 70220128, pos = { x = -669.228, y = 241.028, z = 3247.929 }, rot = { x = 0.000, y = 24.661, z = 0.000 }, level = 33, area_id = 22 }
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
		{ config_id = 433005, monster_id = 26090401, pos = { x = -660.440, y = 230.149, z = 3237.337 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "蕈兽", pose_id = 101, area_id = 22 },
		{ config_id = 433006, monster_id = 26090401, pos = { x = -666.471, y = 231.933, z = 3239.951 }, rot = { x = 0.000, y = 28.066, z = 0.000 }, level = 33, drop_tag = "蕈兽", pose_id = 101, area_id = 22 },
		{ config_id = 433007, monster_id = 26090201, pos = { x = -660.396, y = 230.923, z = 3244.919 }, rot = { x = 0.000, y = 204.252, z = 0.000 }, level = 33, drop_tag = "蕈兽", pose_id = 101, area_id = 22 }
	},
	gadgets = {
		{ config_id = 433004, gadget_id = 70310001, pos = { x = -672.908, y = 233.872, z = 3242.230 }, rot = { x = 0.000, y = 315.141, z = 0.000 }, level = 33, area_id = 22 }
	},
	regions = {
		{ config_id = 433008, shape = RegionShape.SPHERE, radius = 5, pos = { x = -662.615, y = 230.301, z = 3240.424 }, area_id = 22 }
	},
	triggers = {
		{ config_id = 1433008, name = "ENTER_REGION_433008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_433008", action = "action_EVENT_ENTER_REGION_433008" }
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
		monsters = { 433001, 433002 },
		gadgets = { 433003 },
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
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================