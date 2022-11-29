-- 基础信息
local base_info = {
	group_id = 133315294
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 294001, monster_id = 26090901, pos = { x = 90.005, y = 136.124, z = 3050.031 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", disableWander = true, pose_id = 102, area_id = 20 },
	{ config_id = 294002, monster_id = 26090901, pos = { x = 96.066, y = 135.583, z = 3041.434 }, rot = { x = 0.000, y = 221.356, z = 0.000 }, level = 27, drop_tag = "蕈兽", disableWander = true, pose_id = 102, area_id = 20 },
	{ config_id = 294003, monster_id = 26090901, pos = { x = 88.012, y = 135.613, z = 3050.080 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", disableWander = true, pose_id = 104, area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 294005, gadget_id = 70217020, pos = { x = 87.274, y = 135.550, z = 3054.487 }, rot = { x = 0.000, y = 336.712, z = 0.000 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 20 }
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
	regions = {
		{ config_id = 294004, shape = RegionShape.SPHERE, radius = 8, pos = { x = 87.859, y = 133.780, z = 3022.027 }, area_id = 20 }
	},
	triggers = {
		{ config_id = 1294004, name = "ENTER_REGION_294004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_294004", action = "action_EVENT_ENTER_REGION_294004" }
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
		monsters = { 294001, 294002, 294003 },
		gadgets = { 294005 },
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