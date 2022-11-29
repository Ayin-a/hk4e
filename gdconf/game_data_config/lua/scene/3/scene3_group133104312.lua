-- 基础信息
local base_info = {
	group_id = 133104312
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 312001, monster_id = 21010401, pos = { x = 95.468, y = 248.846, z = 150.594 }, rot = { x = 0.000, y = 24.173, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 7 },
	{ config_id = 312002, monster_id = 21010401, pos = { x = 96.816, y = 254.668, z = 153.869 }, rot = { x = 0.000, y = 139.347, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 7 },
	{ config_id = 312003, monster_id = 21010401, pos = { x = 97.354, y = 248.941, z = 153.308 }, rot = { x = 0.000, y = 217.947, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 312004, gadget_id = 70310006, pos = { x = 95.658, y = 248.846, z = 152.121 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 7 },
	{ config_id = 312005, gadget_id = 70220014, pos = { x = 96.595, y = 248.846, z = 155.641 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 7 },
	{ config_id = 312006, gadget_id = 70220014, pos = { x = 92.104, y = 253.957, z = 155.688 }, rot = { x = 9.536, y = 0.409, z = 4.904 }, level = 19, area_id = 7 },
	{ config_id = 312007, gadget_id = 70220005, pos = { x = 94.002, y = 254.576, z = 152.985 }, rot = { x = 9.536, y = 0.409, z = 4.904 }, level = 19, area_id = 7 },
	{ config_id = 312008, gadget_id = 70211001, pos = { x = 92.094, y = 254.710, z = 151.220 }, rot = { x = 0.748, y = 59.072, z = 10.687 }, level = 16, drop_tag = "战斗低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 },
	{ config_id = 312009, gadget_id = 70220013, pos = { x = 91.748, y = 245.079, z = 151.293 }, rot = { x = 9.536, y = 0.409, z = 4.904 }, level = 19, area_id = 7 },
	{ config_id = 312010, gadget_id = 70220013, pos = { x = 93.423, y = 244.727, z = 154.185 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 7 },
	{ config_id = 312011, gadget_id = 70220013, pos = { x = 91.617, y = 244.732, z = 153.412 }, rot = { x = 4.431, y = 0.000, z = 0.000 }, level = 19, area_id = 7 },
	{ config_id = 312012, gadget_id = 70220013, pos = { x = 94.316, y = 245.041, z = 152.477 }, rot = { x = 9.536, y = 0.409, z = 4.904 }, level = 19, area_id = 7 },
	{ config_id = 312013, gadget_id = 70220005, pos = { x = 92.733, y = 248.846, z = 150.753 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 7 },
	{ config_id = 312014, gadget_id = 70211001, pos = { x = 95.528, y = 244.890, z = 154.334 }, rot = { x = 358.783, y = 236.583, z = 349.356 }, level = 16, drop_tag = "战斗低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 }
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
		monsters = { 312001, 312002, 312003 },
		gadgets = { 312004, 312005, 312006, 312007, 312008, 312009, 312010, 312011, 312012, 312013, 312014 },
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