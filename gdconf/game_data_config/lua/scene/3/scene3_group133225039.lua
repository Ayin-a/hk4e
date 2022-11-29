-- 基础信息
local base_info = {
	group_id = 133225039
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 39001, monster_id = 20010501, pos = { x = -6432.061, y = 249.210, z = -2533.136 }, rot = { x = 0.000, y = 182.807, z = 0.000 }, level = 33, drop_tag = "史莱姆", climate_area_id = 7, area_id = 18 },
	{ config_id = 39002, monster_id = 20010501, pos = { x = -6435.392, y = 249.067, z = -2534.349 }, rot = { x = 0.000, y = 273.921, z = 0.000 }, level = 33, drop_tag = "史莱姆", climate_area_id = 7, area_id = 18 },
	{ config_id = 39003, monster_id = 20010501, pos = { x = -6429.575, y = 249.101, z = -2533.759 }, rot = { x = 0.000, y = 52.224, z = 0.000 }, level = 33, drop_tag = "史莱姆", climate_area_id = 7, area_id = 18 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 39005, shape = RegionShape.SPHERE, radius = 5, pos = { x = -6428.996, y = 249.021, z = -2536.574 }, area_id = 18 }
}

-- 触发器
triggers = {
	{ config_id = 1039005, name = "ENTER_REGION_39005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_39005" }
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
		monsters = { },
		gadgets = { },
		regions = { 39005 },
		triggers = { "ENTER_REGION_39005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 39001, 39002, 39003 },
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
function action_EVENT_ENTER_REGION_39005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133225039, 2)
	
	return 0
end