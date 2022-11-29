-- 基础信息
local base_info = {
	group_id = 133210121
}

-- DEFS_MISCS
local statueConfig =
{
    ["Statue_Rotated1"] = {config_id = 121001,valueName = "Statue_Rotate1"},
    ["Statue_Rotated2"] = {config_id = 121004,valueName = "Statue_Rotate2"},
    ["Statue_Rotated3"] = {config_id = 121005,valueName = "Statue_Rotate3"}
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
	[121001] = { config_id = 121001, gadget_id = 70360168, pos = { x = -3462.260, y = 201.547, z = -842.802 }, rot = { x = 0.000, y = 317.509, z = 0.000 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 17 },
	[121002] = { config_id = 121002, gadget_id = 70290098, pos = { x = -3468.899, y = 199.376, z = -848.889 }, rot = { x = 0.000, y = 317.509, z = 0.000 }, level = 30, persistent = true, area_id = 17 },
	[121003] = { config_id = 121003, gadget_id = 70360167, pos = { x = -3462.820, y = 201.547, z = -855.547 }, rot = { x = 0.000, y = 317.509, z = 0.000 }, level = 30, state = GadgetState.GearStop, persistent = true, area_id = 17 },
	[121004] = { config_id = 121004, gadget_id = 70360187, pos = { x = -3475.558, y = 201.547, z = -854.965 }, rot = { x = 0.000, y = 137.509, z = 0.000 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 17 },
	[121005] = { config_id = 121005, gadget_id = 70360188, pos = { x = -3474.985, y = 201.547, z = -842.218 }, rot = { x = 0.000, y = 227.509, z = 0.000 }, level = 30, persistent = true, area_id = 17 },
	[121023] = { config_id = 121023, gadget_id = 70290099, pos = { x = -3468.899, y = 199.376, z = -848.889 }, rot = { x = 0.000, y = 47.509, z = 0.000 }, level = 30, area_id = 17 },
	[121024] = { config_id = 121024, gadget_id = 70290099, pos = { x = -3468.899, y = 199.376, z = -848.889 }, rot = { x = 0.000, y = 227.509, z = 0.000 }, level = 30, area_id = 17 },
	[121025] = { config_id = 121025, gadget_id = 70290099, pos = { x = -3468.899, y = 199.376, z = -848.889 }, rot = { x = 0.000, y = 317.509, z = 0.000 }, level = 30, area_id = 17 }
}

-- 区域
regions = {
	[121047] = { config_id = 121047, shape = RegionShape.SPHERE, radius = 5, pos = { x = -3462.820, y = 201.547, z = -855.547 }, area_id = 17 }
}

-- 触发器
triggers = {
	-- 121001旋转
	{ config_id = 1121006, name = "SELECT_OPTION_121006", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_121006", action = "action_EVENT_SELECT_OPTION_121006", trigger_count = 0 },
	-- 激活尊像，1秒后做改变，5秒后可关闭
	{ config_id = 1121007, name = "GADGET_STATE_CHANGE_121007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "121003", condition = "condition_EVENT_GADGET_STATE_CHANGE_121007", action = "action_EVENT_GADGET_STATE_CHANGE_121007", trigger_count = 0 },
	-- 关闭尊像，1秒后做改变，5秒后可关闭
	{ config_id = 1121008, name = "GADGET_STATE_CHANGE_121008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "121003", condition = "condition_EVENT_GADGET_STATE_CHANGE_121008", action = "action_EVENT_GADGET_STATE_CHANGE_121008", trigger_count = 0 },
	-- 激活后1秒执行，实际变化
	{ config_id = 1121009, name = "TIME_AXIS_PASS_121009", event = EventType.EVENT_TIME_AXIS_PASS, source = "changestate", condition = "condition_EVENT_TIME_AXIS_PASS_121009", action = "action_EVENT_TIME_AXIS_PASS_121009", trigger_count = 0 },
	-- 关闭后1秒执行，实际变化
	{ config_id = 1121010, name = "TIME_AXIS_PASS_121010", event = EventType.EVENT_TIME_AXIS_PASS, source = "revivestate", condition = "condition_EVENT_TIME_AXIS_PASS_121010", action = "action_EVENT_TIME_AXIS_PASS_121010", trigger_count = 0 },
	-- 尊像加载，且是关闭时
	{ config_id = 1121011, name = "GADGET_CREATE_121011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_121011", action = "action_EVENT_GADGET_CREATE_121011", trigger_count = 0 },
	-- 点击激活时，改状态
	{ config_id = 1121012, name = "SELECT_OPTION_121012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_121012", action = "action_EVENT_SELECT_OPTION_121012", trigger_count = 0 },
	-- 激活后5秒执行，加关闭按钮
	{ config_id = 1121013, name = "TIME_AXIS_PASS_121013", event = EventType.EVENT_TIME_AXIS_PASS, source = "changestate", condition = "condition_EVENT_TIME_AXIS_PASS_121013", action = "action_EVENT_TIME_AXIS_PASS_121013", trigger_count = 0 },
	-- 关闭后5秒执行，加激活按钮
	{ config_id = 1121014, name = "TIME_AXIS_PASS_121014", event = EventType.EVENT_TIME_AXIS_PASS, source = "revivestate", condition = "condition_EVENT_TIME_AXIS_PASS_121014", action = "action_EVENT_TIME_AXIS_PASS_121014", trigger_count = 0 },
	-- 点击关闭时，改状态
	{ config_id = 1121015, name = "SELECT_OPTION_121015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_121015", action = "action_EVENT_SELECT_OPTION_121015", trigger_count = 0 },
	-- 尊像加载，且是开启时
	{ config_id = 1121016, name = "GADGET_CREATE_121016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_121016", action = "action_EVENT_GADGET_CREATE_121016", trigger_count = 0 },
	-- 尊像从锁定变为关闭时
	{ config_id = 1121017, name = "GADGET_STATE_CHANGE_121017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "121003", condition = "condition_EVENT_GADGET_STATE_CHANGE_121017", action = "action_EVENT_GADGET_STATE_CHANGE_121017", trigger_count = 0 },
	-- 121001创建加option
	{ config_id = 1121018, name = "GADGET_CREATE_121018", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_121018", action = "action_EVENT_GADGET_CREATE_121018", trigger_count = 0 },
	-- 121001变为gearstart时
	{ config_id = 1121019, name = "GADGET_STATE_CHANGE_121019", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "121001", condition = "condition_EVENT_GADGET_STATE_CHANGE_121019", action = "action_EVENT_GADGET_STATE_CHANGE_121019", trigger_count = 0 },
	-- 121001变为default时
	{ config_id = 1121020, name = "GADGET_STATE_CHANGE_121020", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "121001", condition = "condition_EVENT_GADGET_STATE_CHANGE_121020", action = "action_EVENT_GADGET_STATE_CHANGE_121020", trigger_count = 0 },
	-- 旋转后2秒重新加按钮
	{ config_id = 1121021, name = "TIME_AXIS_PASS_121021", event = EventType.EVENT_TIME_AXIS_PASS, source = "OptionReset1", condition = "condition_EVENT_TIME_AXIS_PASS_121021", action = "action_EVENT_TIME_AXIS_PASS_121021", trigger_count = 0 },
	-- 121001判断方向错误
	{ config_id = 1121022, name = "VARIABLE_CHANGE_121022", event = EventType.EVENT_VARIABLE_CHANGE, source = "Statue_Rotate1", condition = "condition_EVENT_VARIABLE_CHANGE_121022", action = "action_EVENT_VARIABLE_CHANGE_121022", trigger_count = 0 },
	-- 121001判断方向正确
	{ config_id = 1121026, name = "VARIABLE_CHANGE_121026", event = EventType.EVENT_VARIABLE_CHANGE, source = "Statue_Rotate1", condition = "condition_EVENT_VARIABLE_CHANGE_121026", action = "action_EVENT_VARIABLE_CHANGE_121026", trigger_count = 0 },
	-- 121004旋转
	{ config_id = 1121027, name = "SELECT_OPTION_121027", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_121027", action = "action_EVENT_SELECT_OPTION_121027", trigger_count = 0 },
	-- 121004判断方向正确
	{ config_id = 1121028, name = "VARIABLE_CHANGE_121028", event = EventType.EVENT_VARIABLE_CHANGE, source = "Statue_Rotate2", condition = "condition_EVENT_VARIABLE_CHANGE_121028", action = "action_EVENT_VARIABLE_CHANGE_121028", trigger_count = 0 },
	-- 121004判断方向错误
	{ config_id = 1121029, name = "VARIABLE_CHANGE_121029", event = EventType.EVENT_VARIABLE_CHANGE, source = "Statue_Rotate2", condition = "condition_EVENT_VARIABLE_CHANGE_121029", action = "action_EVENT_VARIABLE_CHANGE_121029", trigger_count = 0 },
	-- 旋转后2秒重新加按钮
	{ config_id = 1121030, name = "TIME_AXIS_PASS_121030", event = EventType.EVENT_TIME_AXIS_PASS, source = "OptionReset2", condition = "condition_EVENT_TIME_AXIS_PASS_121030", action = "action_EVENT_TIME_AXIS_PASS_121030", trigger_count = 0 },
	-- 121004变为default时
	{ config_id = 1121031, name = "GADGET_STATE_CHANGE_121031", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "121004", condition = "condition_EVENT_GADGET_STATE_CHANGE_121031", action = "action_EVENT_GADGET_STATE_CHANGE_121031", trigger_count = 0 },
	-- 121004变为gearstart时
	{ config_id = 1121032, name = "GADGET_STATE_CHANGE_121032", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "121004", condition = "condition_EVENT_GADGET_STATE_CHANGE_121032", action = "action_EVENT_GADGET_STATE_CHANGE_121032", trigger_count = 0 },
	-- 121004创建加option
	{ config_id = 1121033, name = "GADGET_CREATE_121033", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_121033", action = "action_EVENT_GADGET_CREATE_121033", trigger_count = 0 },
	-- 121005旋转
	{ config_id = 1121034, name = "SELECT_OPTION_121034", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_121034", action = "action_EVENT_SELECT_OPTION_121034", trigger_count = 0 },
	-- 121005判断方向正确
	{ config_id = 1121035, name = "VARIABLE_CHANGE_121035", event = EventType.EVENT_VARIABLE_CHANGE, source = "Statue_Rotate3", condition = "condition_EVENT_VARIABLE_CHANGE_121035", action = "action_EVENT_VARIABLE_CHANGE_121035", trigger_count = 0 },
	-- 121005判断方向错误
	{ config_id = 1121036, name = "VARIABLE_CHANGE_121036", event = EventType.EVENT_VARIABLE_CHANGE, source = "Statue_Rotate3", condition = "condition_EVENT_VARIABLE_CHANGE_121036", action = "action_EVENT_VARIABLE_CHANGE_121036", trigger_count = 0 },
	-- 旋转后2秒重新加按钮
	{ config_id = 1121037, name = "TIME_AXIS_PASS_121037", event = EventType.EVENT_TIME_AXIS_PASS, source = "OptionReset3", condition = "condition_EVENT_TIME_AXIS_PASS_121037", action = "action_EVENT_TIME_AXIS_PASS_121037", trigger_count = 0 },
	-- 121005变为default时
	{ config_id = 1121038, name = "GADGET_STATE_CHANGE_121038", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "121005", condition = "condition_EVENT_GADGET_STATE_CHANGE_121038", action = "action_EVENT_GADGET_STATE_CHANGE_121038", trigger_count = 0 },
	-- 121005变为gearstart时
	{ config_id = 1121039, name = "GADGET_STATE_CHANGE_121039", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "121005", condition = "condition_EVENT_GADGET_STATE_CHANGE_121039", action = "action_EVENT_GADGET_STATE_CHANGE_121039", trigger_count = 0 },
	-- 121005创建加option
	{ config_id = 1121040, name = "GADGET_CREATE_121040", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_121040", action = "action_EVENT_GADGET_CREATE_121040", trigger_count = 0 },
	{ config_id = 1121041, name = "QUEST_START_121041", event = EventType.EVENT_QUEST_START, source = "7214703", condition = "", action = "action_EVENT_QUEST_START_121041", trigger_count = 0 },
	{ config_id = 1121042, name = "QUEST_START_121042", event = EventType.EVENT_QUEST_START, source = "7214704", condition = "", action = "action_EVENT_QUEST_START_121042", trigger_count = 0 },
	-- 玩法完成时
	{ config_id = 1121043, name = "VARIABLE_CHANGE_121043", event = EventType.EVENT_VARIABLE_CHANGE, source = "Success", condition = "condition_EVENT_VARIABLE_CHANGE_121043", action = "action_EVENT_VARIABLE_CHANGE_121043" },
	-- 第一次转reminder
	{ config_id = 1121044, name = "SELECT_OPTION_121044", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_121044", action = "action_EVENT_SELECT_OPTION_121044" },
	-- 盘子亮起
	{ config_id = 1121045, name = "GADGET_STATE_CHANGE_121045", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_121045", action = "action_EVENT_GADGET_STATE_CHANGE_121045", trigger_count = 0 },
	-- 盘子熄灭
	{ config_id = 1121046, name = "GADGET_STATE_CHANGE_121046", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_121046", action = "action_EVENT_GADGET_STATE_CHANGE_121046", trigger_count = 0 },
	{ config_id = 1121047, name = "ENTER_REGION_121047", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_121047", action = "action_EVENT_ENTER_REGION_121047", trigger_count = 0 },
	{ config_id = 1121048, name = "TIME_AXIS_PASS_121048", event = EventType.EVENT_TIME_AXIS_PASS, source = "setsuccess", condition = "condition_EVENT_TIME_AXIS_PASS_121048", action = "action_EVENT_TIME_AXIS_PASS_121048", trigger_count = 0 },
	-- 正确数量为3时
	{ config_id = 1121062, name = "VARIABLE_CHANGE_121062", event = EventType.EVENT_VARIABLE_CHANGE, source = "Gadget_Count", condition = "condition_EVENT_VARIABLE_CHANGE_121062", action = "action_EVENT_VARIABLE_CHANGE_121062", trigger_count = 0 },
	-- 正确数量不为3时
	{ config_id = 1121063, name = "VARIABLE_CHANGE_121063", event = EventType.EVENT_VARIABLE_CHANGE, source = "Gadget_Count", condition = "condition_EVENT_VARIABLE_CHANGE_121063", action = "action_EVENT_VARIABLE_CHANGE_121063", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "Gadget_Count", value = 0, no_refresh = true },
	{ config_id = 2, name = "Statue_Rotate1", value = 0, no_refresh = true },
	{ config_id = 3, name = "Statue_Rotated1", value = 0, no_refresh = true },
	{ config_id = 4, name = "Statue_Rotate2", value = 0, no_refresh = true },
	{ config_id = 5, name = "Statue_Rotated2", value = 0, no_refresh = true },
	{ config_id = 6, name = "Statue_Rotate3", value = 0, no_refresh = true },
	{ config_id = 7, name = "Statue_Rotated3", value = 0, no_refresh = true },
	{ config_id = 8, name = "Success", value = 0, no_refresh = true },
	{ config_id = 9, name = "Times", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	io_type = 1,
	suite = 1,
	end_suite = 0,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suite_disk = {
	[1] = {
		gadgets = {
			{ config_id = 121001, state = 0 },
			{ config_id = 121002, state = 0 },
			{ config_id = 121003, state = 0 },
			{ config_id = 121004, state = 0 },
			{ config_id = 121005, state = 0 },
			{ config_id = 121023, state = 0 },
			{ config_id = 121024, state = 0 },
			{ config_id = 121025, state = 0 }
		},
		monsters = {
		},
		regions = { 121047 },
		triggers = { "QUEST_START_121041", "ENTER_REGION_121047" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "Gadget_Count", value = 0, no_refresh = true },
			{ config_id = 2, name = "Statue_Rotate1", value = 0, no_refresh = true },
			{ config_id = 3, name = "Statue_Rotated1", value = 0, no_refresh = true },
			{ config_id = 4, name = "Statue_Rotate2", value = 0, no_refresh = true },
			{ config_id = 5, name = "Statue_Rotated2", value = 0, no_refresh = true },
			{ config_id = 6, name = "Statue_Rotate3", value = 0, no_refresh = true },
			{ config_id = 7, name = "Statue_Rotated3", value = 0, no_refresh = true },
			{ config_id = 8, name = "Success", value = 0, no_refresh = true },
			{ config_id = 9, name = "Times", value = 0, no_refresh = true }
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 121001, state = 201 },
			{ config_id = 121002, state = 0 },
			{ config_id = 121003, state = 202 },
			{ config_id = 121004, state = 201 },
			{ config_id = 121005, state = 201 },
			{ config_id = 121023, state = 0 },
			{ config_id = 121024, state = 0 },
			{ config_id = 121025, state = 0 }
		},
		monsters = {
		},
		regions = { 121047 },
		triggers = { "SELECT_OPTION_121006", "GADGET_STATE_CHANGE_121007", "GADGET_STATE_CHANGE_121008", "TIME_AXIS_PASS_121009", "TIME_AXIS_PASS_121010", "GADGET_CREATE_121011", "SELECT_OPTION_121012", "TIME_AXIS_PASS_121013", "TIME_AXIS_PASS_121014", "SELECT_OPTION_121015", "GADGET_CREATE_121016", "GADGET_STATE_CHANGE_121017", "GADGET_CREATE_121018", "GADGET_STATE_CHANGE_121019", "GADGET_STATE_CHANGE_121020", "TIME_AXIS_PASS_121021", "VARIABLE_CHANGE_121022", "VARIABLE_CHANGE_121026", "SELECT_OPTION_121027", "VARIABLE_CHANGE_121028", "VARIABLE_CHANGE_121029", "TIME_AXIS_PASS_121030", "GADGET_STATE_CHANGE_121031", "GADGET_STATE_CHANGE_121032", "GADGET_CREATE_121033", "SELECT_OPTION_121034", "VARIABLE_CHANGE_121035", "VARIABLE_CHANGE_121036", "TIME_AXIS_PASS_121037", "GADGET_STATE_CHANGE_121038", "GADGET_STATE_CHANGE_121039", "GADGET_CREATE_121040", "QUEST_START_121042", "VARIABLE_CHANGE_121043", "SELECT_OPTION_121044", "GADGET_STATE_CHANGE_121045", "GADGET_STATE_CHANGE_121046", "ENTER_REGION_121047", "TIME_AXIS_PASS_121048", "VARIABLE_CHANGE_121062", "VARIABLE_CHANGE_121063" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "Gadget_Count", value = 0, no_refresh = true },
			{ config_id = 2, name = "Statue_Rotate1", value = 0, no_refresh = true },
			{ config_id = 3, name = "Statue_Rotated1", value = 0, no_refresh = true },
			{ config_id = 4, name = "Statue_Rotate2", value = 0, no_refresh = true },
			{ config_id = 5, name = "Statue_Rotated2", value = 0, no_refresh = true },
			{ config_id = 6, name = "Statue_Rotate3", value = 0, no_refresh = true },
			{ config_id = 7, name = "Statue_Rotated3", value = 0, no_refresh = true },
			{ config_id = 8, name = "Success", value = 0, no_refresh = true },
			{ config_id = 9, name = "Times", value = 0, no_refresh = true }
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 121001, state = 0 },
			{ config_id = 121002, state = 0 },
			{ config_id = 121003, state = 202 },
			{ config_id = 121004, state = 0 },
			{ config_id = 121005, state = 0 },
			{ config_id = 121023, state = 0 },
			{ config_id = 121024, state = 0 },
			{ config_id = 121025, state = 0 }
		},
		monsters = {
		},
		regions = { 121047 },
		triggers = { "ENTER_REGION_121047" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "Gadget_Count", value = 0, no_refresh = true },
			{ config_id = 2, name = "Statue_Rotate1", value = 0, no_refresh = true },
			{ config_id = 3, name = "Statue_Rotated1", value = 0, no_refresh = true },
			{ config_id = 4, name = "Statue_Rotate2", value = 0, no_refresh = true },
			{ config_id = 5, name = "Statue_Rotated2", value = 0, no_refresh = true },
			{ config_id = 6, name = "Statue_Rotate3", value = 0, no_refresh = true },
			{ config_id = 7, name = "Statue_Rotated3", value = 0, no_refresh = true },
			{ config_id = 8, name = "Success", value = 0, no_refresh = true },
			{ config_id = 9, name = "Times", value = 0, no_refresh = true }
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_121006(context, evt)
	-- 判断是gadgetid 121001 option_id 31
	if 121001 ~= evt.param1 then
		return false	
	end
	
	if 31 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_121006(context, evt)
	-- 将本组内变量名为 "Statue_Rotated1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Statue_Rotated1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "Statue_Rotated1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Statue_Rotated1", 1, 133210261) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 创建标识为"OptionReset1"，时间节点为{2}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "OptionReset1", {2}, false)
	
	
	-- 删除指定group： 133210121 ；指定config：121001；物件身上指定option：31；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210121, 121001, 31) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_121007(context, evt)
	-- 检测config_id为121003的gadget是否从GadgetState.GearStop变为GadgetState.GearStart
	if 121003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.GearStop ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_121007(context, evt)
	-- 创建标识为"changestate"，时间节点为{1,5}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "changestate", {1,5}, false)
	
	
	-- 将本组内变量名为 "Statue2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Statue2", 1, 133210510) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_121008(context, evt)
	-- 检测config_id为121003的gadget是否从GadgetState.GearStart变为GadgetState.GearStop
	if 121003 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_121008(context, evt)
	-- 创建标识为"revivestate"，时间节点为{1,5}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "revivestate", {1,5}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_121009(context, evt)
	if evt.param1 ~= 1 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_121009(context, evt)
	-- 将configid为 121001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 121001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 121004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 121004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 121005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 121005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_121010(context, evt)
	if evt.param1 ~= 1 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_121010(context, evt)
	-- 将configid为 121001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 121001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 121004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 121004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 121005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 121005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_121011(context, evt)
	if 121003 ~= evt.param1 or GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_121011(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210121, 121003, {61}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_121012(context, evt)
	-- 判断是gadgetid 121003 option_id 61
	if 121003 ~= evt.param1 then
		return false	
	end
	
	if 61 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_121012(context, evt)
	-- 将configid为 121003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 121003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133210121 ；指定config：121003；物件身上指定option：61；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210121, 121003, 61) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_121013(context, evt)
	if evt.param1 ~= 2 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_121013(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210121, 121003, {62}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_121014(context, evt)
	if evt.param1 ~= 2 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_121014(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210121, 121003, {61}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_121015(context, evt)
	-- 判断是gadgetid 121003 option_id 62
	if 121003 ~= evt.param1 then
		return false	
	end
	
	if 62 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_121015(context, evt)
	-- 将configid为 121003 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 121003, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133210121 ；指定config：121003；物件身上指定option：62；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210121, 121003, 62) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_121016(context, evt)
	if 121003 ~= evt.param1 or GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_121016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210121, 121003, {62}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_121017(context, evt)
	-- 检测config_id为121003的gadget是否从GadgetState.Default变为GadgetState.GearStop
	if 121003 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_121017(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210121, 121003, {61}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_121018(context, evt)
	if 121001 ~= evt.param1 or GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_121018(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210121, 121001, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_121019(context, evt)
	-- 检测config_id为121001的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 121001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_121019(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210121, 121001, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_121020(context, evt)
	-- 检测config_id为121001的gadget是否从GadgetState.GearStart变为GadgetState.Default
	if 121001 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_121020(context, evt)
	-- 删除指定group： 133210121 ；指定config：121001；物件身上指定option：31；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210121, 121001, 31) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_121021(context, evt)
	if evt.param1 ~= 1 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_121021(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210121, 121001, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_121022(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Statue_Rotate1"为0
	if ScriptLib.GetGroupVariableValue(context, "Statue_Rotate1") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_121022(context, evt)
	-- 将configid为 121023 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 121023, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 针对当前group内变量名为 "Gadget_Count" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Gadget_Count", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_121026(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Statue_Rotate1"为270
	if ScriptLib.GetGroupVariableValue(context, "Statue_Rotate1") ~= 270 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_121026(context, evt)
	-- 将configid为 121023 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 121023, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 针对当前group内变量名为 "Gadget_Count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Gadget_Count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_121027(context, evt)
	-- 判断是gadgetid 121004 option_id 31
	if 121004 ~= evt.param1 then
		return false	
	end
	
	if 31 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_121027(context, evt)
	-- 将本组内变量名为 "Statue_Rotated2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Statue_Rotated2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "Statue_Rotated2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Statue_Rotated2", 1, 133210261) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 创建标识为"OptionReset2"，时间节点为{2}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "OptionReset2", {2}, false)
	
	
	-- 删除指定group： 133210121 ；指定config：121004；物件身上指定option：31；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210121, 121004, 31) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_121028(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Statue_Rotate2"为180
	if ScriptLib.GetGroupVariableValue(context, "Statue_Rotate2") ~= 180 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_121028(context, evt)
	-- 将configid为 121024 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 121024, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 针对当前group内变量名为 "Gadget_Count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Gadget_Count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_121029(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Statue_Rotate2"为270
	if ScriptLib.GetGroupVariableValue(context, "Statue_Rotate2") ~= 270 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_121029(context, evt)
	-- 将configid为 121024 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 121024, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 针对当前group内变量名为 "Gadget_Count" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Gadget_Count", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_121030(context, evt)
	if evt.param1 ~= 1 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_121030(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210121, 121004, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_121031(context, evt)
	-- 检测config_id为121004的gadget是否从GadgetState.GearStart变为GadgetState.Default
	if 121004 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_121031(context, evt)
	-- 删除指定group： 133210121 ；指定config：121004；物件身上指定option：31；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210121, 121004, 31) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_121032(context, evt)
	-- 检测config_id为121004的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 121004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_121032(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210121, 121004, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_121033(context, evt)
	if 121004 ~= evt.param1 or GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_121033(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210121, 121004, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_121034(context, evt)
	-- 判断是gadgetid 121005 option_id 31
	if 121005 ~= evt.param1 then
		return false	
	end
	
	if 31 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_121034(context, evt)
	-- 将本组内变量名为 "Statue_Rotated3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Statue_Rotated3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "Statue_Rotated3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Statue_Rotated3", 1, 133210261) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 创建标识为"OptionReset3"，时间节点为{2}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "OptionReset3", {2}, false)
	
	
	-- 删除指定group： 133210121 ；指定config：121005；物件身上指定option：31；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210121, 121005, 31) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_121035(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Statue_Rotate3"为180
	if ScriptLib.GetGroupVariableValue(context, "Statue_Rotate3") ~= 180 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_121035(context, evt)
	-- 将configid为 121025 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 121025, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 针对当前group内变量名为 "Gadget_Count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Gadget_Count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_121036(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Statue_Rotate3"为270
	if ScriptLib.GetGroupVariableValue(context, "Statue_Rotate3") ~= 270 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_121036(context, evt)
	-- 将configid为 121025 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 121025, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 针对当前group内变量名为 "Gadget_Count" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Gadget_Count", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_121037(context, evt)
	if evt.param1 ~= 1 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_121037(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210121, 121005, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_121038(context, evt)
	-- 检测config_id为121005的gadget是否从GadgetState.GearStart变为GadgetState.Default
	if 121005 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_121038(context, evt)
	-- 删除指定group： 133210121 ；指定config：121005；物件身上指定option：31；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210121, 121005, 31) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_121039(context, evt)
	-- 检测config_id为121005的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 121005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_121039(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210121, 121005, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_121040(context, evt)
	if 121005 ~= evt.param1 or GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_121040(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210121, 121005, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_121041(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210121, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_121042(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210121, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_121043(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Success"为1
	if ScriptLib.GetGroupVariableValue(context, "Success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_121043(context, evt)
	-- 停止标识为"OptionReset1"的时间轴
	ScriptLib.EndTimeAxis(context, "OptionReset1")
	
	
	-- 停止标识为"OptionReset2"的时间轴
	ScriptLib.EndTimeAxis(context, "OptionReset2")
	
	
	-- 停止标识为"OptionReset3"的时间轴
	ScriptLib.EndTimeAxis(context, "OptionReset3")
	
	
	-- 删除指定group： 133210121 ；指定config：121001；物件身上指定option：31；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210121, 121001, 31) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 133210121 ；指定config：121004；物件身上指定option：31；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210121, 121004, 31) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 133210121 ；指定config：121005；物件身上指定option：31；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210121, 121005, 31) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 133210121 ；指定config：121003；物件身上指定option：61；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210121, 121003, 61) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 133210121 ；指定config：121003；物件身上指定option：62；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210121, 121003, 62) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
		-- 将指定group的suiteIndex设为指定suite
	  ScriptLib.SetFlowSuite(context, 133210121, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_121044(context, evt)
	-- 判断是gadgetid 121005 option_id 31
	if 121005 ~= evt.param1 then
		return false	
	end
	
	if 31 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"Times"为0
	if ScriptLib.GetGroupVariableValue(context, "Times") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_121044(context, evt)
	-- 调用提示id为 32100106 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32100106) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将本组内变量名为 "Times" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Times", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "Times" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Times", 1, 133210261) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-3487.48，202.94，-821.25），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-3487.48, y=202.94, z=-821.25}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_121045(context, evt)
	-- 检测config_id为121002的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 121002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_121045(context, evt)
	-- 创建标识为"setsuccess"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "setsuccess", {1}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_121046(context, evt)
	-- 检测config_id为121002的gadget是否从GadgetState.GearStart变为GadgetState.Default
	if 121002 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_121046(context, evt)
	-- 针对当前group内变量名为 "Gadget_Count" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "Gadget_Count", -1, 133210120) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_121047(context, evt)
	if evt.param1 ~= 121047 then return false end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133210121, 121003) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_121047(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7005, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_121048(context, evt)
	if evt.param1 ~= 1 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_121048(context, evt)
	-- 针对当前group内变量名为 "Gadget_Count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "Gadget_Count", 1, 133210120) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_121062(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Gadget_Count"为3
	if ScriptLib.GetGroupVariableValue(context, "Gadget_Count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_121062(context, evt)
	-- 将configid为 121002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 121002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_121063(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Gadget_Count"为2
	if ScriptLib.GetGroupVariableValue(context, "Gadget_Count") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_121063(context, evt)
	-- 将configid为 121002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 121002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V2_1/SeaGodStatue"