-- 基础信息
local base_info = {
	group_id = 133307078
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 78002, gadget_id = 70330434, pos = { x = -2046.563, y = 145.502, z = 5259.717 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 78003, gadget_id = 70690001, pos = { x = -2046.563, y = 164.551, z = 5259.717 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 78004, gadget_id = 70690001, pos = { x = -2046.563, y = 172.936, z = 5259.717 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 78005, gadget_id = 70690001, pos = { x = -2046.563, y = 179.701, z = 5259.717 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 78006, gadget_id = 70690001, pos = { x = -2044.931, y = 196.057, z = 5278.083 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 78007, gadget_id = 70690001, pos = { x = -2044.931, y = 196.057, z = 5288.926 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 78008, gadget_id = 70690001, pos = { x = -2040.398, y = 193.236, z = 5353.806 }, rot = { x = 0.000, y = 36.700, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 78009, gadget_id = 70690001, pos = { x = -2031.519, y = 192.548, z = 5365.718 }, rot = { x = 0.000, y = 36.700, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 78010, gadget_id = 70690001, pos = { x = -2020.968, y = 191.774, z = 5379.874 }, rot = { x = 0.000, y = 36.700, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 78011, gadget_id = 70690001, pos = { x = -2011.484, y = 191.202, z = 5392.598 }, rot = { x = 0.000, y = 36.700, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 78012, gadget_id = 70690001, pos = { x = -2003.197, y = 190.526, z = 5403.716 }, rot = { x = 0.000, y = 36.700, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 78013, gadget_id = 70690001, pos = { x = -1995.794, y = 188.893, z = 5413.648 }, rot = { x = 0.000, y = 36.700, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 78016, gadget_id = 70690001, pos = { x = -2046.563, y = 184.998, z = 5259.717 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 78018, gadget_id = 70220103, pos = { x = -2046.401, y = 150.463, z = 5259.271 }, rot = { x = 350.266, y = 0.305, z = 356.424 }, level = 32, area_id = 27 },
	{ config_id = 78019, gadget_id = 70690001, pos = { x = -2044.931, y = 196.057, z = 5300.572 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 78020, gadget_id = 70690001, pos = { x = -2044.931, y = 196.057, z = 5313.137 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 78021, gadget_id = 70690001, pos = { x = -2044.931, y = 196.057, z = 5323.582 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 }
}

-- 区域
regions = {
	-- 进入
	{ config_id = 78001, shape = RegionShape.CYLINDER, radius = 8, pos = { x = -2046.563, y = 161.060, z = 5259.717 }, height = 20.000, area_id = 27 },
	{ config_id = 78014, shape = RegionShape.CYLINDER, radius = 8, pos = { x = -2046.563, y = 161.060, z = 5259.717 }, height = 20.000, area_id = 27 }
}

-- 触发器
triggers = {
	-- 进入
	{ config_id = 1078001, name = "ENTER_REGION_78001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_78001", trigger_count = 0 },
	{ config_id = 1078014, name = "LEAVE_REGION_78014", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_EVENT_LEAVE_REGION_78014", trigger_count = 0 },
	-- 到时间消除风圈
	{ config_id = 1078015, name = "TIME_AXIS_PASS_78015", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_78015", action = "action_EVENT_TIME_AXIS_PASS_78015", trigger_count = 0 },
	{ config_id = 1078022, name = "GROUP_LOAD_78022", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_78022", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	regions = {
		{ config_id = 78017, shape = RegionShape.CUBIC, size = { x = 100.000, y = 80.000, z = 250.000 }, pos = { x = -2022.595, y = 184.991, z = 5361.930 }, area_id = 27 }
	},
	triggers = {
		{ config_id = 1078017, name = "LEAVE_REGION_78017", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_EVENT_LEAVE_REGION_78017", trigger_count = 0 }
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
		monsters = { },
		gadgets = { 78002, 78018 },
		regions = { 78001, 78014 },
		triggers = { "ENTER_REGION_78001", "LEAVE_REGION_78014", "TIME_AXIS_PASS_78015", "GROUP_LOAD_78022" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 78003, 78004, 78005, 78006, 78007, 78008, 78009, 78010, 78011, 78012, 78013, 78016, 78019, 78020, 78021 },
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
function action_EVENT_ENTER_REGION_78001(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133307078, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_LEAVE_REGION_78014(context, evt)
	-- 创建标识为"leave"，时间节点为{30}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "leave", {30}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_78015(context, evt)
	if "leave" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_78015(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133307078, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_78022(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133307078, 2)
	
	return 0
end