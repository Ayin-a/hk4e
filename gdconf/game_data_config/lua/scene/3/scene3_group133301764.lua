-- 基础信息
local base_info = {
	group_id = 133301764
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
	{ config_id = 764010, gadget_id = 70290009, pos = { x = -584.853, y = 42.554, z = 3916.976 }, rot = { x = 355.768, y = 187.081, z = 337.342 }, level = 33, area_id = 25 },
	{ config_id = 764011, gadget_id = 70500000, pos = { x = -584.853, y = 42.554, z = 3916.976 }, rot = { x = 355.768, y = 187.081, z = 337.342 }, level = 33, point_type = 3005, owner = 764010, area_id = 25 },
	{ config_id = 764012, gadget_id = 70290009, pos = { x = -598.723, y = 39.450, z = 3904.029 }, rot = { x = 352.826, y = 51.572, z = 345.578 }, level = 33, area_id = 25 },
	{ config_id = 764013, gadget_id = 70500000, pos = { x = -598.723, y = 39.450, z = 3904.029 }, rot = { x = 352.826, y = 51.571, z = 345.578 }, level = 33, point_type = 3005, owner = 764012, area_id = 25 }
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
		{ config_id = 764001, monster_id = 26090701, pos = { x = -574.021, y = 41.349, z = 3883.439 }, rot = { x = 0.000, y = 27.367, z = 0.000 }, level = 33, drop_tag = "蕈兽", disableWander = true, pose_id = 102, area_id = 25 },
		{ config_id = 764002, monster_id = 26090701, pos = { x = -572.078, y = 41.592, z = 3882.051 }, rot = { x = 0.000, y = 12.368, z = 0.000 }, level = 33, drop_tag = "蕈兽", disableWander = true, pose_id = 102, area_id = 25 },
		{ config_id = 764003, monster_id = 26090701, pos = { x = -569.732, y = 41.970, z = 3881.996 }, rot = { x = 0.000, y = 356.243, z = 0.000 }, level = 33, drop_tag = "蕈兽", disableWander = true, pose_id = 102, area_id = 25 },
		{ config_id = 764004, monster_id = 20011201, pos = { x = -595.817, y = 39.177, z = 3900.144 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "史莱姆", area_id = 25 },
		{ config_id = 764005, monster_id = 20011202, pos = { x = -597.301, y = 40.883, z = 3908.664 }, rot = { x = 0.000, y = 85.864, z = 0.000 }, level = 33, drop_tag = "史莱姆", area_id = 25 },
		{ config_id = 764006, monster_id = 20011301, pos = { x = -598.672, y = 39.096, z = 3902.069 }, rot = { x = 0.000, y = 348.021, z = 0.000 }, level = 33, drop_tag = "大史莱姆", disableWander = true, area_id = 25 },
		{ config_id = 764007, monster_id = 20011202, pos = { x = -598.539, y = 39.825, z = 3905.366 }, rot = { x = 0.000, y = 185.951, z = 0.000 }, level = 33, drop_tag = "史莱姆", disableWander = true, area_id = 25 }
	},
	gadgets = {
		{ config_id = 764008, gadget_id = 70310007, pos = { x = -570.795, y = 42.336, z = 3886.149 }, rot = { x = 15.287, y = 181.331, z = 347.018 }, level = 33, area_id = 25 },
		{ config_id = 764009, gadget_id = 70310007, pos = { x = -625.699, y = 49.404, z = 3966.832 }, rot = { x = 15.150, y = 189.336, z = 2.062 }, level = 33, area_id = 25 }
	},
	regions = {
		{ config_id = 764014, shape = RegionShape.SPHERE, radius = 5, pos = { x = -595.679, y = 41.262, z = 3904.153 }, area_id = 25 }
	},
	triggers = {
		{ config_id = 1764014, name = "ENTER_REGION_764014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_764014", action = "action_EVENT_ENTER_REGION_764014" }
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
		gadgets = { 764010, 764011, 764012, 764013 },
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

require "V3_0/DeathFieldStandard"