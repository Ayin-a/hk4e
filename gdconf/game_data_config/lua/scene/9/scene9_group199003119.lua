-- 基础信息
local base_info = {
	group_id = 199003119
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
		{ config_id = 119001, monster_id = 21010401, pos = { x = -513.509, y = 123.778, z = 388.214 }, rot = { x = 0.000, y = 179.848, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", pose_id = 402, area_id = 403 },
		{ config_id = 119002, monster_id = 21010401, pos = { x = -511.865, y = 123.693, z = 389.981 }, rot = { x = 0.000, y = 65.255, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", pose_id = 402, area_id = 403 },
		{ config_id = 119003, monster_id = 21010401, pos = { x = -512.826, y = 123.767, z = 419.772 }, rot = { x = 0.000, y = 189.156, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", pose_id = 402, area_id = 403 },
		{ config_id = 119004, monster_id = 21010401, pos = { x = -511.701, y = 123.702, z = 422.854 }, rot = { x = 0.000, y = 57.328, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", pose_id = 402, area_id = 403 },
		{ config_id = 119005, monster_id = 21010401, pos = { x = -537.006, y = 123.753, z = 405.307 }, rot = { x = 0.000, y = 65.255, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", pose_id = 9002, area_id = 403 },
		{ config_id = 119006, monster_id = 21010401, pos = { x = -536.514, y = 123.668, z = 407.431 }, rot = { x = 0.000, y = 65.255, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", pose_id = 9002, area_id = 403 },
		{ config_id = 119007, monster_id = 21030301, pos = { x = -518.215, y = 126.080, z = 404.681 }, rot = { x = 0.000, y = 65.255, z = 0.000 }, level = 20, drop_tag = "丘丘萨满", disableWander = true, area_id = 403 },
		{ config_id = 119008, monster_id = 21010601, pos = { x = -523.053, y = 126.008, z = 403.387 }, rot = { x = 0.000, y = 119.466, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, area_id = 403 },
		{ config_id = 119009, monster_id = 21010601, pos = { x = -521.750, y = 126.003, z = 408.519 }, rot = { x = 0.000, y = 65.255, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, area_id = 403 }
	},
	gadgets = {
		{ config_id = 119010, gadget_id = 70950092, pos = { x = -537.631, y = 120.000, z = 406.545 }, rot = { x = 0.000, y = 65.255, z = 0.000 }, level = 20, area_id = 403 },
		{ config_id = 119011, gadget_id = 70950092, pos = { x = -513.404, y = 120.000, z = 388.953 }, rot = { x = 0.000, y = 65.255, z = 0.000 }, level = 20, area_id = 403 },
		{ config_id = 119012, gadget_id = 70950092, pos = { x = -512.972, y = 120.000, z = 421.286 }, rot = { x = 0.000, y = 65.255, z = 0.000 }, level = 20, area_id = 403 },
		{ config_id = 119013, gadget_id = 70290059, pos = { x = -519.890, y = 120.000, z = 404.859 }, rot = { x = 0.000, y = 65.255, z = 0.000 }, level = 20, area_id = 403 },
		{ config_id = 119014, gadget_id = 70290057, pos = { x = -529.087, y = 119.382, z = 384.583 }, rot = { x = 0.000, y = 24.072, z = 0.000 }, level = 20, area_id = 403 },
		{ config_id = 119015, gadget_id = 70290057, pos = { x = -528.479, y = 119.332, z = 426.931 }, rot = { x = 0.000, y = 166.683, z = 0.000 }, level = 20, area_id = 403 },
		{ config_id = 119016, gadget_id = 70950087, pos = { x = -510.513, y = 120.000, z = 420.276 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
		{ config_id = 119017, gadget_id = 70950087, pos = { x = -509.724, y = 120.000, z = 421.993 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
		{ config_id = 119018, gadget_id = 70950087, pos = { x = -513.354, y = 120.000, z = 424.537 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
		{ config_id = 119019, gadget_id = 70950087, pos = { x = -515.102, y = 120.000, z = 423.118 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
		{ config_id = 119020, gadget_id = 70950087, pos = { x = -510.919, y = 120.000, z = 388.523 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
		{ config_id = 119021, gadget_id = 70950087, pos = { x = -510.089, y = 120.000, z = 390.250 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
		{ config_id = 119022, gadget_id = 70950087, pos = { x = -515.737, y = 120.000, z = 389.705 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
		{ config_id = 119023, gadget_id = 70950087, pos = { x = -540.909, y = 120.000, z = 406.319 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
		{ config_id = 119024, gadget_id = 70950087, pos = { x = -539.588, y = 120.000, z = 408.597 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
		{ config_id = 119025, gadget_id = 70950087, pos = { x = -535.054, y = 120.000, z = 405.582 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 }
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