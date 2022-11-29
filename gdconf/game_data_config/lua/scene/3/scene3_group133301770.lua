-- 基础信息
local base_info = {
	group_id = 133301770
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
	{ config_id = 770011, gadget_id = 70290010, pos = { x = -683.965, y = 228.460, z = 3350.381 }, rot = { x = 7.969, y = 108.131, z = 21.412 }, level = 33, area_id = 23 },
	{ config_id = 770012, gadget_id = 70500000, pos = { x = -683.965, y = 228.460, z = 3350.381 }, rot = { x = 7.975, y = 108.133, z = 21.411 }, level = 33, point_type = 3006, owner = 770011, area_id = 23 },
	{ config_id = 770013, gadget_id = 70290010, pos = { x = -673.065, y = 228.892, z = 3324.572 }, rot = { x = 356.063, y = 291.127, z = 355.148 }, level = 33, area_id = 22 },
	{ config_id = 770014, gadget_id = 70500000, pos = { x = -673.065, y = 228.892, z = 3324.572 }, rot = { x = 356.062, y = 291.127, z = 355.150 }, level = 33, point_type = 3006, owner = 770013, area_id = 22 },
	{ config_id = 770015, gadget_id = 70290010, pos = { x = -685.714, y = 231.171, z = 3340.998 }, rot = { x = 8.963, y = 357.224, z = 342.710 }, level = 33, area_id = 23 },
	{ config_id = 770016, gadget_id = 70500000, pos = { x = -685.714, y = 231.171, z = 3340.998 }, rot = { x = 8.963, y = 357.224, z = 342.710 }, level = 33, point_type = 3006, owner = 770015, area_id = 23 }
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
		{ config_id = 770001, monster_id = 24030201, pos = { x = -670.020, y = 226.409, z = 3345.095 }, rot = { x = 0.000, y = 6.602, z = 0.000 }, level = 33, drop_tag = "遗迹龙兽", disableWander = true, pose_id = 102, area_id = 22 },
		{ config_id = 770002, monster_id = 26090401, pos = { x = -666.946, y = 225.593, z = 3346.249 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "蕈兽", disableWander = true, pose_id = 102, area_id = 22 },
		{ config_id = 770003, monster_id = 26090401, pos = { x = -672.650, y = 227.106, z = 3343.626 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "蕈兽", disableWander = true, pose_id = 104, area_id = 22 },
		{ config_id = 770004, monster_id = 26090401, pos = { x = -670.981, y = 228.762, z = 3324.729 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "蕈兽", pose_id = 104, area_id = 22 }
	},
	gadgets = {
		{ config_id = 770005, gadget_id = 70290010, pos = { x = -683.623, y = 228.267, z = 3350.413 }, rot = { x = 20.759, y = 14.864, z = 344.998 }, level = 33, area_id = 22 },
		{ config_id = 770006, gadget_id = 70500000, pos = { x = -683.623, y = 228.267, z = 3350.413 }, rot = { x = 20.758, y = 14.863, z = 344.995 }, level = 33, point_type = 3006, owner = 770005, area_id = 22 },
		{ config_id = 770007, gadget_id = 70290010, pos = { x = -685.646, y = 231.245, z = 3340.648 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23 },
		{ config_id = 770008, gadget_id = 70500000, pos = { x = -685.646, y = 231.245, z = 3340.648 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, point_type = 3006, owner = 770007, area_id = 23 },
		{ config_id = 770009, gadget_id = 70290010, pos = { x = -672.922, y = 228.856, z = 3324.632 }, rot = { x = 0.000, y = 293.082, z = 0.000 }, level = 33, area_id = 22 },
		{ config_id = 770010, gadget_id = 70500000, pos = { x = -672.922, y = 228.856, z = 3324.632 }, rot = { x = 0.000, y = 293.082, z = 0.000 }, level = 33, point_type = 3006, owner = 770009, area_id = 22 }
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
		gadgets = { 770011, 770012, 770013, 770014, 770015, 770016 },
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