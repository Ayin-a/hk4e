-- 基础信息
local base_info = {
	group_id = 133307237
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
	{ config_id = 237002, gadget_id = 70690001, pos = { x = -1186.602, y = 83.577, z = 5398.692 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 237003, gadget_id = 70330392, pos = { x = -1207.083, y = 84.395, z = 5364.976 }, rot = { x = 0.000, y = 33.248, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 237004, gadget_id = 70690001, pos = { x = -1186.602, y = 95.010, z = 5398.692 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 237005, gadget_id = 70690001, pos = { x = -1190.311, y = 100.047, z = 5390.561 }, rot = { x = 0.000, y = 213.248, z = 180.000 }, level = 32, area_id = 32 },
	{ config_id = 237006, gadget_id = 70690001, pos = { x = -1195.695, y = 100.047, z = 5382.348 }, rot = { x = 0.000, y = 213.248, z = 180.000 }, level = 32, area_id = 32 },
	{ config_id = 237007, gadget_id = 70690001, pos = { x = -1201.459, y = 100.047, z = 5373.555 }, rot = { x = 0.000, y = 213.248, z = 180.000 }, level = 32, area_id = 32 },
	{ config_id = 237013, gadget_id = 70500000, pos = { x = -1207.503, y = 86.839, z = 5364.659 }, rot = { x = 0.000, y = 58.419, z = 0.000 }, level = 32, point_type = 4014, isOneoff = true, explore = { name = "gather", exp = 30 }, area_id = 32 },
	{ config_id = 237014, gadget_id = 70330392, pos = { x = -1212.562, y = 84.395, z = 5356.619 }, rot = { x = 0.000, y = 33.248, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 237015, gadget_id = 70330392, pos = { x = -1218.043, y = 84.395, z = 5348.258 }, rot = { x = 0.000, y = 33.248, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 237016, gadget_id = 70330393, pos = { x = -1224.330, y = 86.789, z = 5338.800 }, rot = { x = 359.981, y = 303.626, z = 10.636 }, level = 32, area_id = 32 },
	{ config_id = 237017, gadget_id = 70330392, pos = { x = -1228.528, y = 88.535, z = 5330.376 }, rot = { x = 0.000, y = 33.248, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 237018, gadget_id = 70330392, pos = { x = -1220.164, y = 88.535, z = 5324.893 }, rot = { x = 0.000, y = 33.248, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 237019, gadget_id = 70330392, pos = { x = -1225.646, y = 88.535, z = 5316.532 }, rot = { x = 0.000, y = 33.248, z = 0.000 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
	{ config_id = 237009, shape = RegionShape.CYLINDER, radius = 8, pos = { x = -1186.602, y = 84.150, z = 5398.692 }, height = 20.000, area_id = 32 },
	{ config_id = 237010, shape = RegionShape.CYLINDER, radius = 8, pos = { x = -1186.602, y = 84.150, z = 5398.692 }, height = 20.000, area_id = 32 }
}

-- 触发器
triggers = {
	{ config_id = 1237009, name = "ENTER_REGION_237009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_237009", trigger_count = 0 },
	{ config_id = 1237010, name = "LEAVE_REGION_237010", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_EVENT_LEAVE_REGION_237010", trigger_count = 0 },
	{ config_id = 1237011, name = "TIME_AXIS_PASS_237011", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_237011", action = "action_EVENT_TIME_AXIS_PASS_237011", trigger_count = 0 },
	{ config_id = 1237012, name = "GROUP_LOAD_237012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_237012", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 237008, gadget_id = 70590063, pos = { x = -1215.227, y = 82.703, z = 5449.005 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, isOneoff = true, area_id = 32 }
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
		gadgets = { 237003, 237013, 237014, 237015, 237016, 237017, 237018, 237019 },
		regions = { 237009, 237010 },
		triggers = { "ENTER_REGION_237009", "LEAVE_REGION_237010", "TIME_AXIS_PASS_237011", "GROUP_LOAD_237012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 237002, 237004, 237005, 237006, 237007 },
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
function action_EVENT_ENTER_REGION_237009(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133307237, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_LEAVE_REGION_237010(context, evt)
	-- 创建标识为"leave"，时间节点为{30}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "leave", {30}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_237011(context, evt)
	if "leave" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_237011(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133307237, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_237012(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133307237, 2)
	
	return 0
end