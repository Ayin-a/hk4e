-- 基础信息
local base_info = {
	group_id = 133309388
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 388001, monster_id = 25210303, pos = { x = -2932.350, y = 209.622, z = 5932.537 }, rot = { x = 0.000, y = 159.756, z = 0.000 }, level = 32, drop_tag = "镀金旅团", disableWander = true, pose_id = 9003, area_id = 27 },
	{ config_id = 388002, monster_id = 25210202, pos = { x = -2942.257, y = 206.890, z = 5924.270 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9006, area_id = 27 },
	{ config_id = 388003, monster_id = 25210503, pos = { x = -2936.356, y = 208.098, z = 5929.631 }, rot = { x = 0.000, y = 179.478, z = 0.000 }, level = 32, drop_tag = "镀金旅团", area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 替换成元能怪尸体
	{ config_id = 388004, gadget_id = 70310007, pos = { x = -2928.331, y = 207.154, z = 5917.582 }, rot = { x = 349.573, y = 275.879, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 388008, gadget_id = 70330342, pos = { x = -2893.980, y = 215.554, z = 5947.925 }, rot = { x = 0.000, y = 180.794, z = 0.000 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 变量
variables = {
	{ config_id = 1, name = "finished", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 388005, gadget_id = 70330416, pos = { x = -2902.920, y = 215.704, z = 5939.510 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 27 }
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
		monsters = { 388001, 388002, 388003 },
		gadgets = { 388004, 388008 },
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