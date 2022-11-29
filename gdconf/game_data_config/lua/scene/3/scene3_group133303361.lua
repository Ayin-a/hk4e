-- 基础信息
local base_info = {
	group_id = 133303361
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 361001, monster_id = 25210101, pos = { x = -2008.147, y = 289.827, z = 3389.044 }, rot = { x = 0.000, y = 89.573, z = 0.000 }, level = 30, drop_tag = "镀金旅团", affix = { 4180 }, pose_id = 9002, area_id = 23 },
	{ config_id = 361002, monster_id = 25210101, pos = { x = -1990.620, y = 288.307, z = 3370.473 }, rot = { x = 0.000, y = 116.976, z = 0.000 }, level = 30, drop_tag = "镀金旅团", affix = { 4180 }, pose_id = 9505, area_id = 23 },
	{ config_id = 361003, monster_id = 25210301, pos = { x = -2000.104, y = 289.802, z = 3394.399 }, rot = { x = 0.000, y = 22.112, z = 0.000 }, level = 30, drop_tag = "镀金旅团", affix = { 4180 }, pose_id = 9003, area_id = 23 },
	{ config_id = 361004, monster_id = 25210302, pos = { x = -1990.817, y = 289.539, z = 3394.928 }, rot = { x = 0.000, y = 187.658, z = 0.000 }, level = 30, drop_tag = "镀金旅团", affix = { 4180 }, pose_id = 9008, area_id = 23 },
	{ config_id = 361005, monster_id = 25210501, pos = { x = -1983.825, y = 288.354, z = 3365.735 }, rot = { x = 0.000, y = 81.410, z = 0.000 }, level = 30, drop_tag = "镀金旅团", affix = { 4180 }, pose_id = 9504, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 361006, gadget_id = 70310479, pos = { x = -2012.354, y = 284.210, z = 3392.255 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 23 },
	{ config_id = 361007, gadget_id = 70310479, pos = { x = -2012.246, y = 284.210, z = 3387.489 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 23 },
	{ config_id = 361008, gadget_id = 70310479, pos = { x = -1998.608, y = 283.155, z = 3372.714 }, rot = { x = 356.442, y = 0.232, z = 355.527 }, level = 30, state = GadgetState.GearStart, area_id = 23 },
	{ config_id = 361009, gadget_id = 70310479, pos = { x = -1999.102, y = 283.020, z = 3367.879 }, rot = { x = 1.414, y = 28.216, z = 353.767 }, level = 30, state = GadgetState.GearStart, area_id = 23 }
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
		{ config_id = 1361010, name = "GROUP_LOAD_361010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_361010", action = "action_EVENT_GROUP_LOAD_361010" }
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
		monsters = { 361001, 361002, 361003, 361004, 361005 },
		gadgets = { 361006, 361007, 361008, 361009 },
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