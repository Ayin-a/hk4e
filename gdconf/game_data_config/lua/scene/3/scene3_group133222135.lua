-- 基础信息
local base_info = {
	group_id = 133222135
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
		{ config_id = 135001, monster_id = 21010401, pos = { x = -4973.057, y = 209.800, z = -4569.122 }, rot = { x = 0.000, y = 225.985, z = 0.000 }, level = 30, drop_tag = "远程丘丘人", area_id = 14 },
		{ config_id = 135002, monster_id = 21010201, pos = { x = -4977.199, y = 206.868, z = -4561.696 }, rot = { x = 0.000, y = 51.249, z = 0.000 }, level = 30, drop_tag = "丘丘人", pose_id = 9003, area_id = 14 },
		{ config_id = 135003, monster_id = 21010601, pos = { x = -4964.661, y = 196.478, z = -4515.397 }, rot = { x = 0.000, y = 244.824, z = 0.000 }, level = 30, drop_tag = "丘丘人", area_id = 14 },
		{ config_id = 135004, monster_id = 21020701, pos = { x = -4965.596, y = 193.555, z = -4519.721 }, rot = { x = 2.555, y = 284.604, z = 343.570 }, level = 30, drop_tag = "丘丘暴徒", area_id = 14 }
	},
	gadgets = {
		{ config_id = 135006, gadget_id = 70220014, pos = { x = -4910.271, y = 217.840, z = -4672.761 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 135007, gadget_id = 70220014, pos = { x = -4915.872, y = 214.415, z = -4682.305 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 }
	},
	regions = {
		{ config_id = 135005, shape = RegionShape.SPHERE, radius = 5, pos = { x = -4965.125, y = 193.300, z = -4519.378 }, area_id = 14 }
	},
	triggers = {
		{ config_id = 1135005, name = "ENTER_REGION_135005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0 }
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