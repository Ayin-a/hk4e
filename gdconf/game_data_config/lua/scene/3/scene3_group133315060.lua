-- 基础信息
local base_info = {
	group_id = 133315060
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 60001, monster_id = 28060201, pos = { x = 474.387, y = 131.661, z = 2461.664 }, rot = { x = 0.000, y = 98.198, z = 0.000 }, level = 33, drop_tag = "走兽", pose_id = 2, area_id = 20 },
	{ config_id = 60003, monster_id = 28030313, pos = { x = 523.298, y = 134.148, z = 2387.700 }, rot = { x = 0.000, y = 7.101, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 20 },
	{ config_id = 60004, monster_id = 28030313, pos = { x = 571.883, y = 149.223, z = 2437.683 }, rot = { x = 0.000, y = 327.012, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 3, area_id = 20 },
	{ config_id = 60005, monster_id = 28030313, pos = { x = 581.188, y = 143.643, z = 2559.547 }, rot = { x = 0.000, y = 49.178, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 3, area_id = 20 },
	{ config_id = 60006, monster_id = 28030313, pos = { x = 488.610, y = 133.522, z = 2422.828 }, rot = { x = 0.000, y = 22.548, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 20 },
	{ config_id = 60007, monster_id = 28030313, pos = { x = 481.788, y = 134.784, z = 2503.306 }, rot = { x = 0.000, y = 327.425, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 20 },
	{ config_id = 60008, monster_id = 28030313, pos = { x = 550.322, y = 99.250, z = 2513.741 }, rot = { x = 0.000, y = 242.913, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 3, area_id = 20 },
	{ config_id = 60009, monster_id = 28030313, pos = { x = 515.785, y = 99.564, z = 2491.167 }, rot = { x = 0.000, y = 321.215, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 20 },
	{ config_id = 60010, monster_id = 28030313, pos = { x = 532.360, y = 98.051, z = 2447.011 }, rot = { x = 0.000, y = 264.200, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 20 },
	{ config_id = 60011, monster_id = 28030313, pos = { x = 504.688, y = 97.752, z = 2444.584 }, rot = { x = 0.000, y = 46.064, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 20 },
	{ config_id = 60012, monster_id = 28010301, pos = { x = 570.801, y = 97.000, z = 2480.535 }, rot = { x = 0.000, y = 330.267, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 20 },
	{ config_id = 60013, monster_id = 28010301, pos = { x = 537.209, y = 97.000, z = 2490.122 }, rot = { x = 0.000, y = 91.263, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 20 },
	{ config_id = 60014, monster_id = 28010301, pos = { x = 548.217, y = 97.000, z = 2519.650 }, rot = { x = 0.000, y = 238.911, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 20 },
	{ config_id = 60015, monster_id = 28010301, pos = { x = 505.092, y = 97.000, z = 2450.253 }, rot = { x = 0.000, y = 224.839, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 20 },
	{ config_id = 60016, monster_id = 28060101, pos = { x = 491.829, y = 97.000, z = 2479.856 }, rot = { x = 0.000, y = 46.251, z = 0.000 }, level = 27, drop_tag = "走兽", pose_id = 1, area_id = 20 },
	{ config_id = 60017, monster_id = 28060101, pos = { x = 503.525, y = 97.000, z = 2490.927 }, rot = { x = 0.000, y = 177.461, z = 0.000 }, level = 27, drop_tag = "走兽", pose_id = 1, area_id = 20 },
	{ config_id = 60018, monster_id = 28060101, pos = { x = 569.090, y = 97.000, z = 2505.820 }, rot = { x = 0.000, y = 78.811, z = 0.000 }, level = 1, drop_tag = "走兽", pose_id = 1, area_id = 20 },
	{ config_id = 60019, monster_id = 28060101, pos = { x = 571.483, y = 97.000, z = 2493.470 }, rot = { x = 0.000, y = 195.026, z = 0.000 }, level = 1, drop_tag = "走兽", pose_id = 1, area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 3.0 正法炬书 兰纳迦洞死域 动物
	{ config_id = 1060002, name = "GROUP_LOAD_60002", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_60002", action = "action_EVENT_GROUP_LOAD_60002", trigger_count = 0 }
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
	end_suite = 2,
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
		regions = { },
		triggers = { "GROUP_LOAD_60002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 60001, 60003, 60004, 60005, 60006, 60007, 60008, 60009, 60010, 60011, 60012, 60013, 60014, 60015, 60016, 60017, 60018, 60019 },
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

-- 触发条件
function condition_EVENT_GROUP_LOAD_60002(context, evt)
	if ScriptLib.GetDeathZoneStatus(context,0) == 0 then
	
	return true
	
	end
	
	
	return false
end

-- 触发操作
function action_EVENT_GROUP_LOAD_60002(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133315060, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

require "V3_0/DeathFieldStandard"