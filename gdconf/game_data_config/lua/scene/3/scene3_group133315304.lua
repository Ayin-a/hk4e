-- 基础信息
local base_info = {
	group_id = 133315304
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 304001, monster_id = 20010301, pos = { x = -91.197, y = 277.871, z = 2332.483 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "史莱姆", area_id = 20 },
	{ config_id = 304002, monster_id = 20010301, pos = { x = -86.939, y = 278.305, z = 2336.924 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "史莱姆", area_id = 20 },
	{ config_id = 304003, monster_id = 20010301, pos = { x = -85.519, y = 278.251, z = 2330.617 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "史莱姆", area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 304006, gadget_id = 70220103, pos = { x = -62.146, y = 273.003, z = 2319.653 }, rot = { x = 0.000, y = 172.514, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 304008, gadget_id = 70220103, pos = { x = -33.276, y = 271.762, z = 2332.825 }, rot = { x = 0.000, y = 331.654, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 304009, gadget_id = 70220103, pos = { x = 1.182, y = 268.449, z = 2326.187 }, rot = { x = 0.000, y = 118.341, z = 0.000 }, level = 27, persistent = true, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1304004, name = "ANY_MONSTER_DIE_304004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_304004", action = "action_EVENT_ANY_MONSTER_DIE_304004" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 304007, monster_id = 21010601, pos = { x = -9.856, y = 261.037, z = 2370.360 }, rot = { x = 0.000, y = 125.977, z = 0.000 }, level = 27, drop_tag = "丘丘人", pose_id = 9012, area_id = 20 },
		{ config_id = 304010, monster_id = 21010501, pos = { x = -5.849, y = 260.040, z = 2370.177 }, rot = { x = 0.000, y = 246.676, z = 0.000 }, level = 27, drop_tag = "远程丘丘人", pose_id = 9012, area_id = 20 },
		{ config_id = 304013, monster_id = 21010501, pos = { x = -8.801, y = 260.630, z = 2366.185 }, rot = { x = 0.000, y = 8.897, z = 0.000 }, level = 27, drop_tag = "远程丘丘人", pose_id = 9012, area_id = 20 }
	},
	gadgets = {
		{ config_id = 304005, gadget_id = 70220103, pos = { x = -60.674, y = 272.672, z = 2348.801 }, rot = { x = 0.000, y = 321.827, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 304011, gadget_id = 70330197, pos = { x = -62.198, y = 267.847, z = 2319.674 }, rot = { x = 0.000, y = 60.763, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 304012, gadget_id = 70330197, pos = { x = -33.669, y = 266.625, z = 2333.162 }, rot = { x = 5.202, y = 199.684, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 304014, gadget_id = 70300086, pos = { x = -8.719, y = 259.568, z = 2372.919 }, rot = { x = 352.904, y = 359.955, z = 0.472 }, level = 27, area_id = 20 },
		{ config_id = 304015, gadget_id = 70300086, pos = { x = -13.042, y = 259.829, z = 2368.234 }, rot = { x = 3.459, y = 0.893, z = 335.856 }, level = 27, area_id = 20 },
		{ config_id = 304016, gadget_id = 70220014, pos = { x = -4.819, y = 259.579, z = 2372.013 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 304017, gadget_id = 70220014, pos = { x = -5.218, y = 259.819, z = 2371.239 }, rot = { x = 0.000, y = 0.000, z = 258.601 }, level = 27, area_id = 20 },
		{ config_id = 304018, gadget_id = 70220026, pos = { x = -8.820, y = 259.807, z = 2374.622 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 304019, gadget_id = 70300088, pos = { x = -11.363, y = 260.940, z = 2371.175 }, rot = { x = 0.000, y = 37.365, z = 0.000 }, level = 27, area_id = 20 }
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
		monsters = { 304001, 304002, 304003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_304004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 304006, 304008, 304009 },
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

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_304004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_304004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133315304, 2)
	
	return 0
end