-- 基础信息
local base_info = {
	group_id = 133314180
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 180001, monster_id = 28060301, pos = { x = -241.564, y = -38.468, z = 4737.638 }, rot = { x = 0.000, y = 209.466, z = 0.000 }, level = 32, drop_tag = "鸟类", disableWander = true, pose_id = 131, area_id = 32 },
	{ config_id = 180002, monster_id = 28060101, pos = { x = -256.860, y = -38.900, z = 4677.356 }, rot = { x = 0.000, y = 163.081, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 32 },
	{ config_id = 180003, monster_id = 28060101, pos = { x = -235.966, y = -38.718, z = 4692.603 }, rot = { x = 0.000, y = 249.653, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 32 },
	{ config_id = 180004, monster_id = 28060101, pos = { x = -235.039, y = -38.900, z = 4731.444 }, rot = { x = 0.000, y = 137.903, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 32 },
	{ config_id = 180005, monster_id = 28060101, pos = { x = -258.952, y = -38.900, z = 4656.693 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 32 },
	{ config_id = 180006, monster_id = 28060101, pos = { x = -68.421, y = -38.900, z = -132.305 }, rot = { x = 0.000, y = 235.132, z = 0.000 }, level = 1, drop_tag = "走兽", pose_id = 1, area_id = 7 },
	{ config_id = 180007, monster_id = 28060101, pos = { x = -50.496, y = -38.900, z = -112.847 }, rot = { x = 0.000, y = 288.904, z = 0.000 }, level = 1, drop_tag = "走兽", pose_id = 1, area_id = 7 },
	{ config_id = 180008, monster_id = 28060101, pos = { x = -25.919, y = -38.900, z = -73.950 }, rot = { x = 0.000, y = 88.657, z = 0.000 }, level = 1, drop_tag = "走兽", pose_id = 1, area_id = 7 },
	{ config_id = 180010, monster_id = 28060101, pos = { x = -222.137, y = -38.900, z = 4724.753 }, rot = { x = 0.000, y = 253.930, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 32 },
	{ config_id = 180011, monster_id = 28060101, pos = { x = -226.242, y = -38.900, z = 4731.387 }, rot = { x = 0.000, y = 208.094, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 32 },
	{ config_id = 180012, monster_id = 28060101, pos = { x = -210.261, y = -38.900, z = 4733.523 }, rot = { x = 0.000, y = 291.181, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 180009, shape = RegionShape.SPHERE, radius = 10, pos = { x = -231.491, y = -38.900, z = 4719.667 }, area_id = 32 }
}

-- 触发器
triggers = {
	{ config_id = 1180009, name = "ENTER_REGION_180009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_180009" }
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
		monsters = { 180001, 180002, 180003, 180005, 180006, 180007, 180008, 180012 },
		gadgets = { },
		regions = { 180009 },
		triggers = { "ENTER_REGION_180009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 180004, 180010, 180011 },
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
function action_EVENT_ENTER_REGION_180009(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133314180, 2)
	
	return 0
end