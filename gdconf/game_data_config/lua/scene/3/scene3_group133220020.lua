-- 基础信息
local base_info = {
	group_id = 133220020
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
	gadgets = {
		{ config_id = 20001, gadget_id = 70310001, pos = { x = -2168.015, y = 161.977, z = -4483.810 }, rot = { x = 0.000, y = 336.136, z = 0.000 }, level = 27, persistent = true, area_id = 11 },
		{ config_id = 20002, gadget_id = 70310001, pos = { x = -2170.568, y = 161.977, z = -4478.161 }, rot = { x = 0.000, y = 336.136, z = 0.000 }, level = 27, persistent = true, area_id = 11 },
		{ config_id = 20003, gadget_id = 70310001, pos = { x = -2173.234, y = 161.977, z = -4472.363 }, rot = { x = 0.000, y = 336.136, z = 0.000 }, level = 27, persistent = true, area_id = 11 },
		{ config_id = 20004, gadget_id = 70310001, pos = { x = -2178.962, y = 161.977, z = -4475.087 }, rot = { x = 0.000, y = 336.136, z = 0.000 }, level = 27, persistent = true, area_id = 11 },
		{ config_id = 20005, gadget_id = 70310001, pos = { x = -2184.695, y = 161.977, z = -4477.680 }, rot = { x = 0.000, y = 336.136, z = 0.000 }, level = 27, persistent = true, area_id = 11 },
		{ config_id = 20006, gadget_id = 70310001, pos = { x = -2182.076, y = 161.977, z = -4483.402 }, rot = { x = 0.000, y = 336.136, z = 0.000 }, level = 27, persistent = true, area_id = 11 },
		{ config_id = 20007, gadget_id = 70310001, pos = { x = -2179.421, y = 161.977, z = -4489.173 }, rot = { x = 0.000, y = 336.136, z = 0.000 }, level = 27, persistent = true, area_id = 11 }
	},
	regions = {
		{ config_id = 20008, shape = RegionShape.SPHERE, radius = 2, pos = { x = -2173.843, y = 162.558, z = -4486.518 }, area_id = 11 }
	},
	triggers = {
		{ config_id = 1020008, name = "ENTER_REGION_20008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_20008", action = "action_EVENT_ENTER_REGION_20008" }
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