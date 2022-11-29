-- 基础信息
local base_info = {
	group_id = 133301297
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 297001, monster_id = 21011001, pos = { x = -413.905, y = 257.998, z = 3322.519 }, rot = { x = 0.000, y = 111.372, z = 0.000 }, level = 27, drop_tag = "远程丘丘人", disableWander = true, area_id = 22 },
	{ config_id = 297002, monster_id = 21010201, pos = { x = -418.479, y = 243.920, z = 3273.041 }, rot = { x = 0.000, y = 38.847, z = 0.000 }, level = 27, drop_tag = "丘丘人", pose_id = 9016, area_id = 22 },
	{ config_id = 297004, monster_id = 21011001, pos = { x = -410.132, y = 259.188, z = 3284.822 }, rot = { x = 0.000, y = 111.372, z = 0.000 }, level = 27, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9002, area_id = 22 },
	{ config_id = 297006, monster_id = 21010201, pos = { x = -426.403, y = 244.255, z = 3277.418 }, rot = { x = 0.000, y = 38.847, z = 0.000 }, level = 27, drop_tag = "丘丘人", area_id = 22 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 297003, gadget_id = 70220103, pos = { x = -409.478, y = 261.688, z = 3285.470 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22 },
	{ config_id = 297007, gadget_id = 70220103, pos = { x = -413.904, y = 260.498, z = 3322.081 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22 },
	{ config_id = 297008, gadget_id = 70220103, pos = { x = -384.597, y = 266.467, z = 3327.318 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22 },
	{ config_id = 297009, gadget_id = 70220103, pos = { x = -460.918, y = 247.293, z = 3268.440 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22 },
	{ config_id = 297010, gadget_id = 70220103, pos = { x = -565.811, y = 231.333, z = 3275.225 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 22 },
	{ config_id = 297011, gadget_id = 70220103, pos = { x = -517.534, y = 235.171, z = 3287.163 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 22 }
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
	triggers = {
		{ config_id = 1297005, name = "ANY_MONSTER_DIE_297005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_297005", action = "action_EVENT_ANY_MONSTER_DIE_297005", trigger_count = 0 }
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
		monsters = { 297001, 297002, 297004, 297006 },
		gadgets = { 297003, 297007, 297008, 297009, 297010, 297011 },
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