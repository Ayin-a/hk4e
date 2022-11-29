-- 基础信息
local base_info = {
	group_id = 133309522
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 522005, monster_id = 28010404, pos = { x = -2708.917, y = -83.553, z = 5358.215 }, rot = { x = 0.000, y = 41.168, z = 0.000 }, level = 32, drop_tag = "采集动物", pose_id = 1, area_id = 27 },
	{ config_id = 522006, monster_id = 28010404, pos = { x = -2706.281, y = -83.378, z = 5358.790 }, rot = { x = 0.000, y = 237.996, z = 0.000 }, level = 32, drop_tag = "采集动物", pose_id = 1, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 522001, gadget_id = 70500000, pos = { x = -2708.750, y = -83.440, z = 5358.565 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 2045, area_id = 27 },
	{ config_id = 522003, gadget_id = 70500000, pos = { x = -2740.883, y = -51.005, z = 5378.929 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 2045, area_id = 27 },
	{ config_id = 522004, gadget_id = 70500000, pos = { x = -2716.594, y = -61.083, z = 5379.043 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 2045, area_id = 27 },
	{ config_id = 522009, gadget_id = 70500000, pos = { x = -2706.744, y = -86.410, z = 5320.227 }, rot = { x = 13.798, y = 31.570, z = 351.120 }, level = 32, point_type = 1002, area_id = 27 },
	{ config_id = 522010, gadget_id = 70500000, pos = { x = -2697.173, y = -85.110, z = 5318.125 }, rot = { x = 13.009, y = 359.765, z = 21.673 }, level = 32, point_type = 1002, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1522002, name = "GATHER_522002", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_522002", action = "action_EVENT_GATHER_522002" }
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
		gadgets = { 522001, 522003, 522004, 522009, 522010 },
		regions = { },
		triggers = { "GATHER_522002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 522005, 522006 },
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
function condition_EVENT_GATHER_522002(context, evt)
	if 522001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_522002(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133309522, 2)
	
	return 0
end