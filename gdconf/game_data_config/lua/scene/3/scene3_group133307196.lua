-- 基础信息
local base_info = {
	group_id = 133307196
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
		{ config_id = 196001, monster_id = 28020604, pos = { x = -2032.121, y = 150.878, z = 5732.883 }, rot = { x = 0.000, y = 88.182, z = 0.000 }, level = 30, drop_tag = "走兽", area_id = 27 },
		{ config_id = 196002, monster_id = 26090901, pos = { x = -2032.125, y = 150.888, z = 5732.868 }, rot = { x = 0.000, y = 88.203, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 27 },
		{ config_id = 196003, monster_id = 28050106, pos = { x = -2032.128, y = 150.893, z = 5732.862 }, rot = { x = 0.000, y = 84.121, z = 0.000 }, level = 30, drop_tag = "魔法生物", area_id = 27 },
		{ config_id = 196004, monster_id = 28050106, pos = { x = -2032.119, y = 150.878, z = 5732.883 }, rot = { x = 0.000, y = 88.206, z = 0.000 }, level = 30, drop_tag = "魔法生物", area_id = 27 },
		{ config_id = 196005, monster_id = 28060401, pos = { x = -2032.123, y = 150.884, z = 5732.874 }, rot = { x = 0.000, y = 88.182, z = 0.000 }, level = 30, drop_tag = "走兽", pose_id = 1, area_id = 27 }
	},
	gadgets = {
		{ config_id = 196006, gadget_id = 70330266, pos = { x = -2032.447, y = 150.357, z = 5731.919 }, rot = { x = 358.156, y = 335.666, z = 355.930 }, level = 30, area_id = 27 },
		{ config_id = 196007, gadget_id = 70210101, pos = { x = -2032.126, y = 150.893, z = 5732.862 }, rot = { x = 34.585, y = 7.944, z = 358.635 }, level = 26, drop_tag = "搜刮点解谜破损须弥", persistent = true, area_id = 27 }
	},
	regions = {
		{ config_id = 196013, shape = RegionShape.SPHERE, radius = 2.35, pos = { x = -2032.117, y = 150.870, z = 5732.894 }, area_id = 27 }
	},
	triggers = {
		{ config_id = 1196008, name = "ANY_GADGET_DIE_196008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_196008", action = "action_EVENT_ANY_GADGET_DIE_196008" },
		{ config_id = 1196009, name = "ANY_GADGET_DIE_196009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_196009", action = "action_EVENT_ANY_GADGET_DIE_196009" },
		{ config_id = 1196010, name = "ANY_GADGET_DIE_196010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_196010", action = "action_EVENT_ANY_GADGET_DIE_196010" },
		{ config_id = 1196011, name = "ANY_GADGET_DIE_196011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_196011", action = "action_EVENT_ANY_GADGET_DIE_196011" },
		{ config_id = 1196012, name = "ANY_GADGET_DIE_196012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_196012", action = "action_EVENT_ANY_GADGET_DIE_196012" },
		{ config_id = 1196013, name = "ENTER_REGION_196013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_196013", action = "action_EVENT_ENTER_REGION_196013" }
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