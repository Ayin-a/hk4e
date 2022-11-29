-- 基础信息
local base_info = {
	group_id = 133302461
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 461001, monster_id = 26090901, pos = { x = -676.915, y = 249.078, z = 3069.054 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 104, area_id = 22 },
	{ config_id = 461002, monster_id = 26090501, pos = { x = -667.450, y = 246.161, z = 3056.403 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 102, area_id = 22 },
	{ config_id = 461003, monster_id = 26090901, pos = { x = -676.170, y = 251.082, z = 3054.478 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 104, area_id = 22 },
	{ config_id = 461005, monster_id = 26090501, pos = { x = -667.596, y = 245.439, z = 3061.043 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 102, area_id = 22 },
	{ config_id = 461006, monster_id = 26090701, pos = { x = -685.045, y = 255.980, z = 3056.811 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", disableWander = true, pose_id = 102, area_id = 22 },
	{ config_id = 461007, monster_id = 26090701, pos = { x = -684.756, y = 255.667, z = 3059.720 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 102, area_id = 22 },
	{ config_id = 461008, monster_id = 28060603, pos = { x = -622.946, y = 236.971, z = 3075.567 }, rot = { x = 0.000, y = 267.087, z = 0.000 }, level = 27, drop_tag = "走兽", pose_id = 2, area_id = 22 },
	{ config_id = 461009, monster_id = 28030313, pos = { x = -623.133, y = 242.372, z = 3075.466 }, rot = { x = 0.000, y = 276.465, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 22 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 461004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -677.232, y = 250.980, z = 3061.796 }, area_id = 22 }
}

-- 触发器
triggers = {
	{ config_id = 1461004, name = "ENTER_REGION_461004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_461004" }
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
		monsters = { 461002, 461005, 461006, 461007, 461008, 461009 },
		gadgets = { },
		regions = { 461004 },
		triggers = { "ENTER_REGION_461004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 461001, 461003 },
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
function action_EVENT_ENTER_REGION_461004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302461, 2)
	
	return 0
end