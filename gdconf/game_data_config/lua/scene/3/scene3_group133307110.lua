-- 基础信息
local base_info = {
	group_id = 133307110
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
		{ config_id = 110001, monster_id = 28020604, pos = { x = -2160.829, y = 157.844, z = 5942.025 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "走兽", area_id = 27 },
		{ config_id = 110002, monster_id = 26090901, pos = { x = -2160.897, y = 157.268, z = 5941.792 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 27 },
		{ config_id = 110003, monster_id = 28050106, pos = { x = -2161.068, y = 158.116, z = 5941.774 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "魔法生物", area_id = 27 },
		{ config_id = 110004, monster_id = 28050106, pos = { x = -2160.590, y = 158.148, z = 5941.903 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "魔法生物", area_id = 27 },
		{ config_id = 110005, monster_id = 28060401, pos = { x = -2160.842, y = 157.257, z = 5941.861 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 27 }
	},
	gadgets = {
		{ config_id = 110006, gadget_id = 70330266, pos = { x = -2160.881, y = 157.637, z = 5941.857 }, rot = { x = 354.514, y = 281.693, z = 8.807 }, level = 32, area_id = 27 },
		{ config_id = 110007, gadget_id = 70210101, pos = { x = -2160.888, y = 158.034, z = 5941.676 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损须弥", persistent = true, area_id = 27 }
	},
	regions = {
		{ config_id = 110013, shape = RegionShape.SPHERE, radius = 2.35, pos = { x = -2160.615, y = 157.978, z = 5942.107 }, area_id = 27 }
	},
	triggers = {
		{ config_id = 1110008, name = "ANY_GADGET_DIE_110008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_110008", action = "action_EVENT_ANY_GADGET_DIE_110008" },
		{ config_id = 1110009, name = "ANY_GADGET_DIE_110009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_110009", action = "action_EVENT_ANY_GADGET_DIE_110009" },
		{ config_id = 1110010, name = "ANY_GADGET_DIE_110010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_110010", action = "action_EVENT_ANY_GADGET_DIE_110010" },
		{ config_id = 1110011, name = "ANY_GADGET_DIE_110011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_110011", action = "action_EVENT_ANY_GADGET_DIE_110011" },
		{ config_id = 1110012, name = "ANY_GADGET_DIE_110012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_110012", action = "action_EVENT_ANY_GADGET_DIE_110012" },
		{ config_id = 1110013, name = "ENTER_REGION_110013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_110013", action = "action_EVENT_ENTER_REGION_110013" }
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
	rand_suite = true
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
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
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