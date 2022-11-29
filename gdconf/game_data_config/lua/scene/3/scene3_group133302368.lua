-- 基础信息
local base_info = {
	group_id = 133302368
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 368001, monster_id = 20010401, pos = { x = -799.917, y = 220.786, z = 2569.939 }, rot = { x = 0.000, y = 122.509, z = 0.000 }, level = 27, drop_tag = "大史莱姆", area_id = 24 },
	{ config_id = 368002, monster_id = 20010301, pos = { x = -795.936, y = 216.972, z = 2540.842 }, rot = { x = 0.000, y = 68.215, z = 0.000 }, level = 27, drop_tag = "史莱姆", area_id = 24 },
	{ config_id = 368003, monster_id = 20010301, pos = { x = -789.759, y = 215.773, z = 2544.354 }, rot = { x = 0.000, y = 96.200, z = 0.000 }, level = 27, drop_tag = "史莱姆", area_id = 24 },
	{ config_id = 368004, monster_id = 20010301, pos = { x = -788.617, y = 215.606, z = 2534.589 }, rot = { x = 0.000, y = 290.715, z = 0.000 }, level = 27, drop_tag = "史莱姆", area_id = 24 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 368005, gadget_id = 70217020, pos = { x = -792.895, y = 210.960, z = 2558.470 }, rot = { x = 358.896, y = -0.005, z = 0.548 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 24 }
}

-- 区域
regions = {
	{ config_id = 368006, shape = RegionShape.SPHERE, radius = 5, pos = { x = -792.841, y = 211.995, z = 2558.692 }, area_id = 24 }
}

-- 触发器
triggers = {
	{ config_id = 1368006, name = "ENTER_REGION_368006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_368006" }
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
		monsters = { 368002, 368003, 368004 },
		gadgets = { 368005 },
		regions = { 368006 },
		triggers = { "ENTER_REGION_368006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 368001 },
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
function action_EVENT_ENTER_REGION_368006(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302368, 2)
	
	return 0
end