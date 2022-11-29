-- 基础信息
local base_info = {
	group_id = 155005333
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 333001, monster_id = 21010201, pos = { x = 353.582, y = 175.562, z = 163.822 }, rot = { x = 0.000, y = 308.307, z = 0.000 }, level = 36, drop_tag = "丘丘人", disableWander = true, pose_id = 9002, area_id = 200 },
	{ config_id = 333007, monster_id = 21010101, pos = { x = 355.742, y = 174.638, z = 160.136 }, rot = { x = 0.000, y = 223.939, z = 0.000 }, level = 36, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 333004, gadget_id = 70310004, pos = { x = 351.796, y = 175.612, z = 162.604 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 200 },
	{ config_id = 333005, gadget_id = 70310001, pos = { x = 349.544, y = 175.325, z = 159.608 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 200 },
	{ config_id = 333006, gadget_id = 70310006, pos = { x = 350.623, y = 176.003, z = 165.596 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 200 }
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
		{ config_id = 333002, gadget_id = 70211002, pos = { x = 354.415, y = 174.671, z = 158.328 }, rot = { x = 2.001, y = 31.242, z = 349.945 }, level = 16, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 }
	},
	triggers = {
		{ config_id = 1333003, name = "ANY_MONSTER_DIE_333003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_333003", action = "action_EVENT_ANY_MONSTER_DIE_333003" }
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
		monsters = { 333001, 333007 },
		gadgets = { 333004, 333005, 333006 },
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