-- 基础信息
local base_info = {
	group_id = 133307403
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
		{ config_id = 403001, monster_id = 28020604, pos = { x = -1342.503, y = 43.599, z = 5278.083 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "走兽", area_id = 32 },
		{ config_id = 403002, monster_id = 26090901, pos = { x = -1342.503, y = 43.598, z = 5278.090 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 32 },
		{ config_id = 403003, monster_id = 28050106, pos = { x = -1342.503, y = 43.598, z = 5278.088 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "魔法生物", area_id = 32 },
		{ config_id = 403004, monster_id = 28060401, pos = { x = -1342.503, y = 43.598, z = 5278.090 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "走兽", pose_id = 1, area_id = 32 }
	},
	gadgets = {
		{ config_id = 403005, gadget_id = 70330266, pos = { x = -1342.943, y = 43.681, z = 5277.278 }, rot = { x = 7.367, y = 103.016, z = 0.881 }, level = 30, area_id = 32 },
		{ config_id = 403006, gadget_id = 70210101, pos = { x = -1342.503, y = 43.598, z = 5278.088 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损须弥", persistent = true, area_id = 32 }
	},
	regions = {
		{ config_id = 403012, shape = RegionShape.SPHERE, radius = 2.35, pos = { x = -1342.457, y = 44.672, z = 5278.136 }, area_id = 32 }
	},
	triggers = {
		{ config_id = 1403007, name = "ANY_GADGET_DIE_403007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_403007", action = "action_EVENT_ANY_GADGET_DIE_403007" },
		{ config_id = 1403008, name = "ANY_GADGET_DIE_403008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_403008", action = "action_EVENT_ANY_GADGET_DIE_403008" },
		{ config_id = 1403009, name = "ANY_GADGET_DIE_403009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_403009", action = "action_EVENT_ANY_GADGET_DIE_403009" },
		{ config_id = 1403010, name = "ANY_GADGET_DIE_403010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_403010", action = "action_EVENT_ANY_GADGET_DIE_403010" },
		{ config_id = 1403011, name = "ANY_GADGET_DIE_403011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_403011", action = "action_EVENT_ANY_GADGET_DIE_403011" },
		{ config_id = 1403012, name = "ENTER_REGION_403012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_403012", action = "action_EVENT_ENTER_REGION_403012" }
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