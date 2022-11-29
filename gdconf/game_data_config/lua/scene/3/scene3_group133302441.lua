-- 基础信息
local base_info = {
	group_id = 133302441
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 441001, monster_id = 23020101, pos = { x = -1012.325, y = 270.768, z = 2942.142 }, rot = { x = 0.000, y = 137.382, z = 0.000 }, level = 30, drop_tag = "债务处理人", disableWander = true, area_id = 23 },
	{ config_id = 441008, monster_id = 28061101, pos = { x = -1014.276, y = 271.828, z = 2943.874 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "驮兽先遣队", pose_id = 2, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 441002, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1012.943, y = 271.295, z = 2945.083 }, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1441002, name = "ENTER_REGION_441002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_441002" }
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
		monsters = { 441008 },
		gadgets = { },
		regions = { 441002 },
		triggers = { "ENTER_REGION_441002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 441001 },
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
function action_EVENT_ENTER_REGION_441002(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302441, 2)
	
	return 0
end