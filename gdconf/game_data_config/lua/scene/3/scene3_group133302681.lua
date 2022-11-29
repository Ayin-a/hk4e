-- 基础信息
local base_info = {
	group_id = 133302681
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 681002, monster_id = 28060201, pos = { x = -274.623, y = 200.000, z = 3070.740 }, rot = { x = 0.000, y = 60.904, z = 0.000 }, level = 27, drop_tag = "走兽", pose_id = 1, area_id = 22 },
	{ config_id = 681003, monster_id = 28060201, pos = { x = -252.595, y = 200.000, z = 3075.353 }, rot = { x = 0.000, y = 252.484, z = 0.000 }, level = 27, drop_tag = "走兽", pose_id = 1, area_id = 22 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 681001, shape = RegionShape.SPHERE, radius = 5, pos = { x = -263.345, y = 202.085, z = 3075.509 }, area_id = 22 }
}

-- 触发器
triggers = {
	{ config_id = 1681001, name = "ENTER_REGION_681001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_681001" }
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
		regions = { 681001 },
		triggers = { "ENTER_REGION_681001" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 681002, 681003 },
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
function action_EVENT_ENTER_REGION_681001(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302681, 2)
	
	return 0
end