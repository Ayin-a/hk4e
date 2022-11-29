-- 基础信息
local base_info = {
	group_id = 220123004
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
	{ config_id = 4001, gadget_id = 70330171, pos = { x = -2.813, y = -5.705, z = -23.526 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 4002, gadget_id = 70330172, pos = { x = -2.941, y = -7.281, z = -34.665 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 4003, gadget_id = 70330172, pos = { x = 12.600, y = -17.367, z = -23.466 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 4004, gadget_id = 70330171, pos = { x = 12.821, y = -2.197, z = -34.714 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, start_route = false, is_use_point_array = true },
	{ config_id = 4006, gadget_id = 70360001, pos = { x = -3.258, y = -5.475, z = -36.355 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4007, gadget_id = 70360001, pos = { x = 11.309, y = -15.689, z = -24.391 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4008, gadget_id = 70360001, pos = { x = 10.936, y = 6.757, z = -33.722 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4032, gadget_id = 70360170, pos = { x = -0.990, y = -5.259, z = -36.182 }, rot = { x = 89.972, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 4034, gadget_id = 70360170, pos = { x = 10.332, y = -15.598, z = -24.331 }, rot = { x = 90.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 4035, gadget_id = 70310008, pos = { x = -0.410, y = -13.270, z = -29.437 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4036, gadget_id = 70360170, pos = { x = 10.186, y = 5.621, z = -34.207 }, rot = { x = 90.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 4037, gadget_id = 70360279, pos = { x = 13.637, y = -7.273, z = -22.513 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 4040, gadget_id = 70360170, pos = { x = -4.737, y = -5.527, z = -26.229 }, rot = { x = 90.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 4041, gadget_id = 70360001, pos = { x = -4.547, y = -5.567, z = -26.585 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4047, gadget_id = 70300118, pos = { x = -1.225, y = -5.611, z = -36.257 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4048, gadget_id = 70300118, pos = { x = 10.489, y = -15.887, z = -24.277 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4049, gadget_id = 70300118, pos = { x = 10.628, y = 5.375, z = -34.190 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 灯台3保底目标点
	{ config_id = 4054, gadget_id = 70900201, pos = { x = 10.756, y = -15.373, z = -24.289 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 灯台4保底目标点
	{ config_id = 4055, gadget_id = 70900201, pos = { x = 10.393, y = 5.755, z = -34.149 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	-- 删除灯台3保底指示suite
	{ config_id = 4056, shape = RegionShape.SPHERE, radius = 3, pos = { x = 11.726, y = -15.294, z = -24.198 } },
	-- 删除灯台4保底指示suite
	{ config_id = 4057, shape = RegionShape.SPHERE, radius = 3, pos = { x = 11.465, y = 4.804, z = -33.933 } },
	-- 当4盏灯都被点亮，但是第3个灯台还未复位
	{ config_id = 4061, shape = RegionShape.CUBIC, size = { x = 20.000, y = 10.000, z = 15.000 }, pos = { x = 4.642, y = -2.274, z = -29.540 } },
	-- 当4盏灯都被点亮，但是第4个灯台还未复位
	{ config_id = 4062, shape = RegionShape.CUBIC, size = { x = 20.000, y = 10.000, z = 15.000 }, pos = { x = 4.642, y = -2.274, z = -29.540 } }
}

-- 触发器
triggers = {
	-- 挑战开始，可以让灯台开始移动
	{ config_id = 1004005, name = "VARIABLE_CHANGE_4005", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_4005", action = "action_EVENT_VARIABLE_CHANGE_4005" },
	{ config_id = 1004009, name = "GADGET_CREATE_4009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_4009", action = "action_EVENT_GADGET_CREATE_4009", trigger_count = 0 },
	-- 灯台2
	{ config_id = 1004010, name = "SELECT_OPTION_4010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_4010", action = "action_EVENT_SELECT_OPTION_4010" },
	-- 灯台2
	{ config_id = 1004011, name = "GADGET_STATE_CHANGE_4011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4011", action = "action_EVENT_GADGET_STATE_CHANGE_4011", trigger_count = 0 },
	-- 灯台2
	{ config_id = 1004012, name = "PLATFORM_REACH_POINT_4012", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_4012", action = "action_EVENT_PLATFORM_REACH_POINT_4012", trigger_count = 0 },
	-- 灯台2
	{ config_id = 1004013, name = "PLATFORM_REACH_POINT_4013", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_4013", action = "action_EVENT_PLATFORM_REACH_POINT_4013", trigger_count = 0 },
	-- 灯台3
	{ config_id = 1004014, name = "SELECT_OPTION_4014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_4014", action = "action_EVENT_SELECT_OPTION_4014" },
	-- 灯台3
	{ config_id = 1004015, name = "GADGET_STATE_CHANGE_4015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4015", action = "action_EVENT_GADGET_STATE_CHANGE_4015", trigger_count = 0 },
	-- 灯台3
	{ config_id = 1004016, name = "PLATFORM_REACH_POINT_4016", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_4016", action = "action_EVENT_PLATFORM_REACH_POINT_4016", trigger_count = 0 },
	-- 灯台3
	{ config_id = 1004017, name = "PLATFORM_REACH_POINT_4017", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_4017", action = "action_EVENT_PLATFORM_REACH_POINT_4017" },
	-- 灯台4
	{ config_id = 1004018, name = "SELECT_OPTION_4018", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_4018", action = "action_EVENT_SELECT_OPTION_4018" },
	-- 灯台4
	{ config_id = 1004019, name = "GADGET_STATE_CHANGE_4019", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4019", action = "action_EVENT_GADGET_STATE_CHANGE_4019", trigger_count = 0 },
	-- 灯台4
	{ config_id = 1004020, name = "PLATFORM_REACH_POINT_4020", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_4020", action = "action_EVENT_PLATFORM_REACH_POINT_4020" },
	-- 灯台4
	{ config_id = 1004021, name = "PLATFORM_REACH_POINT_4021", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_4021", action = "action_EVENT_PLATFORM_REACH_POINT_4021", trigger_count = 0 },
	-- 判断所有的灯台被点亮
	{ config_id = 1004022, name = "GADGET_STATE_CHANGE_4022", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4022", action = "action_EVENT_GADGET_STATE_CHANGE_4022" },
	-- 电梯复位判断
	{ config_id = 1004023, name = "VARIABLE_CHANGE_4023", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_4023", action = "action_EVENT_VARIABLE_CHANGE_4023" },
	{ config_id = 1004024, name = "GADGET_CREATE_4024", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_4024", action = "action_EVENT_GADGET_CREATE_4024", trigger_count = 0 },
	{ config_id = 1004025, name = "GROUP_LOAD_4025", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_4025" },
	-- 灯台点亮判断
	{ config_id = 1004026, name = "GADGET_STATE_CHANGE_4026", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4026", action = "action_EVENT_GADGET_STATE_CHANGE_4026" },
	{ config_id = 1004027, name = "VARIABLE_CHANGE_4027", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_4027", action = "action_EVENT_VARIABLE_CHANGE_4027" },
	{ config_id = 1004028, name = "GADGET_STATE_CHANGE_4028", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4028", action = "action_EVENT_GADGET_STATE_CHANGE_4028" },
	{ config_id = 1004029, name = "VARIABLE_CHANGE_4029", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_4029", action = "action_EVENT_VARIABLE_CHANGE_4029" },
	{ config_id = 1004030, name = "GADGET_STATE_CHANGE_4030", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4030", action = "action_EVENT_GADGET_STATE_CHANGE_4030" },
	{ config_id = 1004031, name = "GADGET_CREATE_4031", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_4031", action = "action_EVENT_GADGET_CREATE_4031", trigger_count = 0 },
	{ config_id = 1004033, name = "GADGET_STATE_CHANGE_4033", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4033", action = "action_EVENT_GADGET_STATE_CHANGE_4033" },
	-- 干掉拉杆以防穿帮
	{ config_id = 1004038, name = "TIME_AXIS_PASS_4038", event = EventType.EVENT_TIME_AXIS_PASS, source = "T2", condition = "", action = "action_EVENT_TIME_AXIS_PASS_4038" },
	-- 干掉拉杆以防穿帮
	{ config_id = 1004039, name = "TIME_AXIS_PASS_4039", event = EventType.EVENT_TIME_AXIS_PASS, source = "T3", condition = "", action = "action_EVENT_TIME_AXIS_PASS_4039" },
	{ config_id = 1004042, name = "GADGET_CREATE_4042", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_4042", action = "action_EVENT_GADGET_CREATE_4042", trigger_count = 0 },
	-- 灯台1
	{ config_id = 1004043, name = "PLATFORM_REACH_POINT_4043", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_4043", action = "action_EVENT_PLATFORM_REACH_POINT_4043", trigger_count = 0 },
	-- 电梯复位判断
	{ config_id = 1004044, name = "VARIABLE_CHANGE_4044", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_4044", action = "action_EVENT_VARIABLE_CHANGE_4044" },
	-- 灯台1
	{ config_id = 1004045, name = "SELECT_OPTION_4045", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_4045", action = "action_EVENT_SELECT_OPTION_4045" },
	-- 当4盏灯都被点亮，但是第3个灯台还未复位
	{ config_id = 1004046, name = "VARIABLE_CHANGE_4046", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_4046", action = "action_EVENT_VARIABLE_CHANGE_4046" },
	{ config_id = 1004050, name = "GADGET_STATE_CHANGE_4050", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4050", action = "action_EVENT_GADGET_STATE_CHANGE_4050" },
	{ config_id = 1004051, name = "GADGET_STATE_CHANGE_4051", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4051", action = "action_EVENT_GADGET_STATE_CHANGE_4051" },
	{ config_id = 1004052, name = "GADGET_STATE_CHANGE_4052", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4052", action = "action_EVENT_GADGET_STATE_CHANGE_4052" },
	{ config_id = 1004053, name = "GADGET_STATE_CHANGE_4053", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4053", action = "action_EVENT_GADGET_STATE_CHANGE_4053" },
	-- 删除灯台3保底指示suite
	{ config_id = 1004056, name = "ENTER_REGION_4056", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4056", action = "action_EVENT_ENTER_REGION_4056" },
	-- 删除灯台4保底指示suite
	{ config_id = 1004057, name = "ENTER_REGION_4057", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4057", action = "action_EVENT_ENTER_REGION_4057" },
	-- 当4盏灯都被点亮，但是第4个灯台还未复位
	{ config_id = 1004058, name = "VARIABLE_CHANGE_4058", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_4058", action = "action_EVENT_VARIABLE_CHANGE_4058" },
	-- 挑战完成删除保底指示suite
	{ config_id = 1004059, name = "VARIABLE_CHANGE_4059", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_4059", action = "action_EVENT_VARIABLE_CHANGE_4059" },
	-- 挑战完成删除保底指示suite
	{ config_id = 1004060, name = "VARIABLE_CHANGE_4060", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_4060", action = "action_EVENT_VARIABLE_CHANGE_4060" },
	-- 当4盏灯都被点亮，但是第3个灯台还未复位
	{ config_id = 1004061, name = "ENTER_REGION_4061", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4061", action = "action_EVENT_ENTER_REGION_4061" },
	-- 当4盏灯都被点亮，但是第4个灯台还未复位
	{ config_id = 1004062, name = "ENTER_REGION_4062", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4062", action = "action_EVENT_ENTER_REGION_4062" }
}

-- 变量
variables = {
	{ config_id = 1, name = "A", value = 2, no_refresh = false },
	{ config_id = 2, name = "B", value = 2, no_refresh = false },
	{ config_id = 3, name = "C", value = 1, no_refresh = false },
	{ config_id = 4, name = "D", value = 2, no_refresh = false },
	{ config_id = 5, name = "Lamp", value = 0, no_refresh = false },
	{ config_id = 6, name = "Yes", value = 0, no_refresh = false },
	{ config_id = 7, name = "Start", value = 0, no_refresh = false },
	{ config_id = 8, name = "Challenge", value = 0, no_refresh = false },
	{ config_id = 9, name = "L1", value = 0, no_refresh = false },
	{ config_id = 10, name = "L2", value = 0, no_refresh = false },
	{ config_id = 11, name = "L3", value = 0, no_refresh = false },
	{ config_id = 12, name = "L4", value = 0, no_refresh = false },
	{ config_id = 13, name = "Finish", value = 0, no_refresh = false }
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
		gadgets = { 4032, 4034, 4035, 4036, 4037, 4040 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_4005", "GROUP_LOAD_4025", "VARIABLE_CHANGE_4046", "GADGET_STATE_CHANGE_4050", "GADGET_STATE_CHANGE_4051", "GADGET_STATE_CHANGE_4052", "GADGET_STATE_CHANGE_4053", "VARIABLE_CHANGE_4058" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 灯台1,
		monsters = { },
		gadgets = { 4001 },
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_4043" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 灯台2,
		monsters = { },
		gadgets = { 4002 },
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_4012" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 灯台3,
		monsters = { },
		gadgets = { 4003 },
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_4017" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 灯台4,
		monsters = { },
		gadgets = { 4004 },
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_4020" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 灯台1判断suite,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_4033", "VARIABLE_CHANGE_4044" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = 灯台2判断suite,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "VARIABLE_CHANGE_4023", "GADGET_STATE_CHANGE_4026" },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = 灯台3判断suite,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "VARIABLE_CHANGE_4027", "GADGET_STATE_CHANGE_4028" },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = 灯台4判断suite,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "VARIABLE_CHANGE_4029", "GADGET_STATE_CHANGE_4030" },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = 加载让灯台可以移动的机关,
		monsters = { },
		gadgets = { 4006, 4007, 4008, 4041, 4047, 4048, 4049 },
		regions = { },
		triggers = { "GADGET_CREATE_4009", "SELECT_OPTION_4010", "SELECT_OPTION_4014", "SELECT_OPTION_4018", "GADGET_CREATE_4024", "GADGET_CREATE_4031", "GADGET_CREATE_4042", "SELECT_OPTION_4045" },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = ,
		monsters = { },
		gadgets = { 4054 },
		regions = { 4056 },
		triggers = { "ENTER_REGION_4056", "VARIABLE_CHANGE_4059" },
		rand_weight = 100
	},
	{
		-- suite_id = 12,
		-- description = ,
		monsters = { },
		gadgets = { 4055 },
		regions = { 4057 },
		triggers = { "ENTER_REGION_4057", "VARIABLE_CHANGE_4060" },
		rand_weight = 100
	},
	{
		-- suite_id = 13,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 4061 },
		triggers = { "ENTER_REGION_4061" },
		rand_weight = 100
	},
	{
		-- suite_id = 14,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 4062 },
		triggers = { "ENTER_REGION_4062" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_4005(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Challenge"为1
	if ScriptLib.GetGroupVariableValue(context, "Challenge") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_4005(context, evt)
	-- 添加suite10的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220123004, 10)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_4009(context, evt)
	if 4006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_4009(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220123004, 4006, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_4010(context, evt)
	-- 判断是gadgetid 4006 option_id 7
	if 4006 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_4010(context, evt)
	-- 删除指定group： 220123004 ；指定config：4006；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220123004, 4006, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将本组内变量名为 "START" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "START", 1, 220123008) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 调用提示id为 201230101 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 201230101) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220123004, EntityType.GADGET, 4047 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 4002, 1, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 创建标识为"T2"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "T2", {1}, false)
	
	
	-- 将configid为 4032 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4032, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 针对当前group内变量名为 "BACKDOOR" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "BACKDOOR", 1, 220123003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_4011(context, evt)
	-- 检测config_id为4002的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 4002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"B"为1
	if ScriptLib.GetGroupVariableValue(context, "B") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4011(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 4002, 1, {1,2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_4012(context, evt)
	-- 判断是gadgetid 为 4002的移动平台，是否到达了1 的点集中的 1 点
	
	if 4002 ~= evt.param1 then
	  return false
	end
	
	if 1 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_4012(context, evt)
	-- 将本组内变量名为 "B" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "B", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220123004, EntityType.GADGET, 4037 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 4002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_4013(context, evt)
	-- 判断是gadgetid 为 4002的移动平台，是否到达了1 的点集中的 2 点
	
	if 4002 ~= evt.param1 then
	  return false
	end
	
	if 1 ~= evt.param2 then
	  return false
	end
	
	if 2 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_4013(context, evt)
	-- 将本组内变量名为 "B" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "B", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 改变指定group组220123004中， configid为4002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220123004, 4002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_4014(context, evt)
	-- 判断是gadgetid 4007 option_id 7
	if 4007 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_4014(context, evt)
	-- 删除指定group： 220123004 ；指定config：4007；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220123004, 4007, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 调用提示id为 201230101 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 201230101) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220123004, EntityType.GADGET, 4048 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 4003, 2, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 创建标识为"T3"，时间节点为{2}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "T3", {2}, false)
	
	
	-- 将configid为 4034 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4034, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 针对当前group内变量名为 "BACKDOOR" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "BACKDOOR", 1, 220123003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_4015(context, evt)
	-- 检测config_id为4003的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 4003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"C"为2
	if ScriptLib.GetGroupVariableValue(context, "C") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4015(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 4003, 2, {2,1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_4016(context, evt)
	-- 判断是gadgetid 为 4003的移动平台，是否到达了2 的点集中的 1 点
	
	if 4003 ~= evt.param1 then
	  return false
	end
	
	if 2 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_4016(context, evt)
	-- 将本组内变量名为 "C" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "C", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 改变指定group组220123004中， configid为4003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220123004, 4003, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_4017(context, evt)
	-- 判断是gadgetid 为 4003的移动平台，是否到达了2 的点集中的 2 点
	
	if 4003 ~= evt.param1 then
	  return false
	end
	
	if 2 ~= evt.param2 then
	  return false
	end
	
	if 2 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_4017(context, evt)
	-- 将本组内变量名为 "C" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "C", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 4003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_4018(context, evt)
	-- 判断是gadgetid 4008 option_id 7
	if 4008 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_4018(context, evt)
	-- 删除指定group： 220123004 ；指定config：4008；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220123004, 4008, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220123004, EntityType.GADGET, 4049 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 调用提示id为 201230101 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 201230101) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 4004, 3, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将configid为 4036 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4036, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 针对当前group内变量名为 "BACKDOOR" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "BACKDOOR", 1, 220123003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_4019(context, evt)
	-- 检测config_id为4004的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 4004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"D"为1
	if ScriptLib.GetGroupVariableValue(context, "D") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4019(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 4004, 3, {1,2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_4020(context, evt)
	-- 判断是gadgetid 为 4004的移动平台，是否到达了3 的点集中的 1 点
	
	if 4004 ~= evt.param1 then
	  return false
	end
	
	if 3 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_4020(context, evt)
	-- 将本组内变量名为 "D" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "D", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 4004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_4021(context, evt)
	-- 判断是gadgetid 为 4004的移动平台，是否到达了3 的点集中的 2 点
	
	if 4004 ~= evt.param1 then
	  return false
	end
	
	if 3 ~= evt.param2 then
	  return false
	end
	
	if 2 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_4021(context, evt)
	-- 将本组内变量名为 "D" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "D", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 改变指定group组220123004中， configid为4004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220123004, 4004, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_4022(context, evt)
	if 4006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	if 4007 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	if 4008 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	if 4009 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"B"为1
	if ScriptLib.GetGroupVariableValue(context, "B") ~= 1 then
			return false
	end
	
	-- 判断变量"C"为2
	if ScriptLib.GetGroupVariableValue(context, "C") ~= 2 then
			return false
	end
	
	-- 判断变量"D"为1
	if ScriptLib.GetGroupVariableValue(context, "D") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4022(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220123004, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_4023(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"B"为1
	if ScriptLib.GetGroupVariableValue(context, "B") ~= 1 then
			return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 220123004, 4002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_4023(context, evt)
	-- 针对当前group内变量名为 "Lamp" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "Lamp", 1, 220123010) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220123004, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_4024(context, evt)
	if 4007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_4024(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220123004, 4007, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_4025(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220123004, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220123004, 3)
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220123004, 4)
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220123004, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_4026(context, evt)
	-- 判断变量"B"为1
	if ScriptLib.GetGroupVariableValue(context, "B") ~= 1 then
			return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 220123004, 4002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4026(context, evt)
	-- 针对当前group内变量名为 "Lamp" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "Lamp", 1, 220123010) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220123004, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_4027(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"C"为2
	if ScriptLib.GetGroupVariableValue(context, "C") ~= 2 then
			return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 220123004, 4003) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_4027(context, evt)
	-- 针对当前group内变量名为 "Lamp" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "Lamp", 1, 220123010) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220123004, 8)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_4028(context, evt)
	-- 判断变量"C"为2
	if ScriptLib.GetGroupVariableValue(context, "C") ~= 2 then
			return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 220123004, 4003) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4028(context, evt)
	-- 针对当前group内变量名为 "Lamp" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "Lamp", 1, 220123010) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220123004, 8)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_4029(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"D"为1
	if ScriptLib.GetGroupVariableValue(context, "D") ~= 1 then
			return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 220123004, 4004) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_4029(context, evt)
	-- 针对当前group内变量名为 "Lamp" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "Lamp", 1, 220123010) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 删除suite9的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220123004, 9)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_4030(context, evt)
	-- 判断变量"D"为1
	if ScriptLib.GetGroupVariableValue(context, "D") ~= 1 then
			return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 220123004, 4004) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4030(context, evt)
	-- 针对当前group内变量名为 "Lamp" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "Lamp", 1, 220123010) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 删除suite9的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220123004, 9)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_4031(context, evt)
	if 4008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_4031(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220123004, 4008, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_4033(context, evt)
	-- 判断变量"A"为1
	if ScriptLib.GetGroupVariableValue(context, "A") ~= 1 then
			return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 220123004, 4001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4033(context, evt)
	-- 针对当前group内变量名为 "Lamp" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "Lamp", 1, 220123010) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220123004, 6)
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_4038(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220123004, EntityType.GADGET, 4032 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_4039(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220123004, EntityType.GADGET, 4034 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_4042(context, evt)
	if 4041 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_4042(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220123004, 4041, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_4043(context, evt)
	-- 判断是gadgetid 为 4001的移动平台，是否到达了10 的点集中的 1 点
	
	if 4001 ~= evt.param1 then
	  return false
	end
	
	if 10 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_4043(context, evt)
	-- 将本组内变量名为 "A" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "A", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220123001, 7)
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 4001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_4044(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"A"为1
	if ScriptLib.GetGroupVariableValue(context, "A") ~= 1 then
			return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 220123004, 4001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_4044(context, evt)
	-- 针对当前group内变量名为 "Lamp" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "Lamp", 1, 220123010) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220123004, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_4045(context, evt)
	-- 判断是gadgetid 4041 option_id 7
	if 4041 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_4045(context, evt)
	-- 调用提示id为 201230101 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 201230101) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 删除指定group： 220123004 ；指定config：4041；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220123004, 4041, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 4001, 10, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将configid为 4040 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4040, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_4046(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"L1"为1
	if ScriptLib.GetGroupVariableValue(context, "L1") ~= 1 then
			return false
	end
	
	-- 判断变量"L2"为1
	if ScriptLib.GetGroupVariableValue(context, "L2") ~= 1 then
			return false
	end
	
	-- 判断变量"L3"为1
	if ScriptLib.GetGroupVariableValue(context, "L3") ~= 1 then
			return false
	end
	
	-- 判断变量"L4"为1
	if ScriptLib.GetGroupVariableValue(context, "L4") ~= 1 then
			return false
	end
	
	-- 判断变量"C"为1
	if ScriptLib.GetGroupVariableValue(context, "C") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_4046(context, evt)
	-- 添加suite13的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220123004, 13)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_4050(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 220123004, 4001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4050(context, evt)
	-- 调用提示id为 201230103 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 201230103) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将本组内变量名为 "Light" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Light", 1, 220123001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "L1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "L1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_4051(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 220123004, 4002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4051(context, evt)
	-- 调用提示id为 201230103 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 201230103) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将本组内变量名为 "L2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "L2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_4052(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 220123004, 4003) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4052(context, evt)
	-- 调用提示id为 201230103 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 201230103) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将本组内变量名为 "L3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "L3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_4053(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 220123004, 4004) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4053(context, evt)
	-- 调用提示id为 201230103 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 201230103) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将本组内变量名为 "L4" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "L4", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4056(context, evt)
	if evt.param1 ~= 4056 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4056(context, evt)
	-- 删除suite11的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220123004, 11)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4057(context, evt)
	if evt.param1 ~= 4057 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4057(context, evt)
	-- 删除suite12的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220123004, 12)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_4058(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"L1"为1
	if ScriptLib.GetGroupVariableValue(context, "L1") ~= 1 then
			return false
	end
	
	-- 判断变量"L2"为1
	if ScriptLib.GetGroupVariableValue(context, "L2") ~= 1 then
			return false
	end
	
	-- 判断变量"L3"为1
	if ScriptLib.GetGroupVariableValue(context, "L3") ~= 1 then
			return false
	end
	
	-- 判断变量"L4"为1
	if ScriptLib.GetGroupVariableValue(context, "L4") ~= 1 then
			return false
	end
	
	-- 判断变量"D"为2
	if ScriptLib.GetGroupVariableValue(context, "D") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_4058(context, evt)
	-- 添加suite14的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220123004, 14)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_4059(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Finish"为1
	if ScriptLib.GetGroupVariableValue(context, "Finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_4059(context, evt)
	-- 删除suite11的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220123004, 11)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_4060(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Finish"为1
	if ScriptLib.GetGroupVariableValue(context, "Finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_4060(context, evt)
	-- 删除suite12的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220123004, 12)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4061(context, evt)
	if evt.param1 ~= 4061 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4061(context, evt)
	-- 调用提示id为 201230104 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 201230104) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 添加suite11的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220123004, 11)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4062(context, evt)
	if evt.param1 ~= 4062 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4062(context, evt)
	-- 调用提示id为 201230104 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 201230104) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 添加suite12的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220123004, 12)
	
	return 0
end