-- 基础信息
local base_info = {
	group_id = 133302423
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 423001, monster_id = 21010101, pos = { x = -869.516, y = 217.280, z = 2704.500 }, rot = { x = 0.000, y = 108.717, z = 0.000 }, level = 27, drop_tag = "丘丘人", area_id = 24 },
	{ config_id = 423002, monster_id = 21010101, pos = { x = -856.548, y = 217.456, z = 2702.915 }, rot = { x = 0.000, y = 240.708, z = 0.000 }, level = 27, drop_tag = "丘丘人", area_id = 24 },
	{ config_id = 423004, monster_id = 21010101, pos = { x = -862.272, y = 219.102, z = 2694.084 }, rot = { x = 0.000, y = 355.964, z = 0.000 }, level = 27, drop_tag = "丘丘人", area_id = 24 },
	{ config_id = 423005, monster_id = 28060601, pos = { x = -808.040, y = 200.255, z = 2740.104 }, rot = { x = 0.000, y = 336.076, z = 0.000 }, level = 27, drop_tag = "走兽", pose_id = 2, area_id = 24 },
	{ config_id = 423006, monster_id = 28060602, pos = { x = -815.290, y = 200.185, z = 2735.124 }, rot = { x = 0.000, y = 318.397, z = 0.000 }, level = 27, drop_tag = "走兽", pose_id = 2, area_id = 24 },
	{ config_id = 423007, monster_id = 28020102, pos = { x = -850.687, y = 204.853, z = 2617.633 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "走兽", area_id = 24 },
	{ config_id = 423008, monster_id = 28020102, pos = { x = -850.537, y = 204.774, z = 2619.449 }, rot = { x = 0.000, y = 211.296, z = 0.000 }, level = 27, drop_tag = "走兽", area_id = 24 },
	{ config_id = 423009, monster_id = 28010208, pos = { x = -815.812, y = 194.120, z = 2594.590 }, rot = { x = 0.000, y = 175.361, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 24 },
	{ config_id = 423010, monster_id = 28030402, pos = { x = -781.038, y = 219.314, z = 2684.832 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "鸟类", area_id = 24 },
	{ config_id = 423011, monster_id = 28030402, pos = { x = -783.640, y = 217.804, z = 2682.316 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "鸟类", area_id = 24 },
	{ config_id = 423012, monster_id = 28030402, pos = { x = -802.125, y = 207.558, z = 2669.637 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "鸟类", area_id = 24 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 423003, shape = RegionShape.SPHERE, radius = 5, pos = { x = -862.448, y = 219.101, z = 2700.118 }, area_id = 24 }
}

-- 触发器
triggers = {
	{ config_id = 1423003, name = "ENTER_REGION_423003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_423003" }
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
		monsters = { 423005, 423006, 423007, 423008, 423009, 423010, 423011, 423012 },
		gadgets = { },
		regions = { 423003 },
		triggers = { "ENTER_REGION_423003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 423001, 423002, 423004 },
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

-- 触发操作
function action_EVENT_ENTER_REGION_423003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302423, 2)
	
	return 0
end