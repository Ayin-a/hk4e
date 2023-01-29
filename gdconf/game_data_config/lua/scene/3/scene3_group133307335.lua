-- 基础信息
local base_info = {
	group_id = 133307335
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
		{ config_id = 335001, monster_id = 28020604, pos = { x = -1306.171, y = 57.127, z = 5171.798 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "走兽", area_id = 32 },
		{ config_id = 335002, monster_id = 26090901, pos = { x = -1305.303, y = 56.670, z = 5171.991 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 102, area_id = 32 },
		{ config_id = 335003, monster_id = 28050106, pos = { x = -1305.220, y = 56.727, z = 5171.655 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "魔法生物", area_id = 32 },
		{ config_id = 335004, monster_id = 28060401, pos = { x = -1305.814, y = 56.319, z = 5171.632 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "走兽", pose_id = 1, area_id = 32 }
	},
	gadgets = {
		{ config_id = 335005, gadget_id = 70330266, pos = { x = -1305.091, y = 56.816, z = 5171.735 }, rot = { x = 2.265, y = 356.702, z = 34.445 }, level = 30, area_id = 32 },
		{ config_id = 335006, gadget_id = 70210101, pos = { x = -1305.040, y = 57.452, z = 5171.557 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损须弥", persistent = true, area_id = 32 }
	},
	regions = {
		{ config_id = 335012, shape = RegionShape.SPHERE, radius = 2.35, pos = { x = -1306.142, y = 56.553, z = 5171.691 }, area_id = 32 }
	},
	triggers = {
		{ config_id = 1335007, name = "ANY_GADGET_DIE_335007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_335007", action = "action_EVENT_ANY_GADGET_DIE_335007" },
		{ config_id = 1335008, name = "ANY_GADGET_DIE_335008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_335008", action = "action_EVENT_ANY_GADGET_DIE_335008" },
		{ config_id = 1335009, name = "ANY_GADGET_DIE_335009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_335009", action = "action_EVENT_ANY_GADGET_DIE_335009" },
		{ config_id = 1335010, name = "ANY_GADGET_DIE_335010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_335010", action = "action_EVENT_ANY_GADGET_DIE_335010" },
		{ config_id = 1335011, name = "ANY_GADGET_DIE_335011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_335011", action = "action_EVENT_ANY_GADGET_DIE_335011" },
		{ config_id = 1335012, name = "ENTER_REGION_335012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_335012", action = "action_EVENT_ENTER_REGION_335012" }
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