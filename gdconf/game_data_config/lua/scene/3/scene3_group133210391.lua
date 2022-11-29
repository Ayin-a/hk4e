-- 基础信息
local base_info = {
	group_id = 133210391
}

-- DEFS_MISCS
local statueConfig =
{
    ["Statue_Rotated1"] = {config_id = 391001,valueName = "Statue_Rotate1"},
    ["Statue_Rotated2"] = {config_id = 391004,valueName = "Statue_Rotate2"},
    ["Statue_Rotated3"] = {config_id = 391005,valueName = "Statue_Rotate3"}
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
	[391001] = { config_id = 391001, gadget_id = 70360168, pos = { x = -3753.264, y = 149.404, z = -1130.336 }, rot = { x = 0.000, y = 49.506, z = 0.000 }, level = 30, persistent = true, area_id = 17 },
	[391002] = { config_id = 391002, gadget_id = 70290098, pos = { x = -3760.112, y = 147.234, z = -1136.189 }, rot = { x = 0.000, y = 319.506, z = 0.000 }, level = 30, persistent = true, area_id = 17 },
	[391003] = { config_id = 391003, gadget_id = 70360167, pos = { x = -3754.267, y = 149.404, z = -1143.055 }, rot = { x = 0.000, y = 319.506, z = 0.000 }, level = 30, state = GadgetState.GearStop, persistent = true, area_id = 17 },
	[391004] = { config_id = 391004, gadget_id = 70360187, pos = { x = -3766.978, y = 149.404, z = -1142.029 }, rot = { x = 0.000, y = 139.506, z = 0.000 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 17 },
	[391005] = { config_id = 391005, gadget_id = 70360188, pos = { x = -3765.961, y = 149.404, z = -1129.310 }, rot = { x = 0.000, y = 139.506, z = 0.000 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 17 },
	[391006] = { config_id = 391006, gadget_id = 70290099, pos = { x = -3760.112, y = 147.234, z = -1136.189 }, rot = { x = 0.000, y = 49.506, z = 0.000 }, level = 30, area_id = 17 },
	[391007] = { config_id = 391007, gadget_id = 70290099, pos = { x = -3760.112, y = 147.234, z = -1136.189 }, rot = { x = 0.000, y = 229.506, z = 0.000 }, level = 30, area_id = 17 },
	[391008] = { config_id = 391008, gadget_id = 70290099, pos = { x = -3760.112, y = 147.234, z = -1136.189 }, rot = { x = 0.000, y = 319.506, z = 0.000 }, level = 30, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 121001旋转
	{ config_id = 1391009, name = "SELECT_OPTION_391009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_391009", action = "action_EVENT_SELECT_OPTION_391009", trigger_count = 0 },
	-- 激活尊像，1秒后做改变，5秒后可关闭
	{ config_id = 1391010, name = "GADGET_STATE_CHANGE_391010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "391003", condition = "condition_EVENT_GADGET_STATE_CHANGE_391010", action = "action_EVENT_GADGET_STATE_CHANGE_391010", trigger_count = 0 },
	-- 关闭尊像，1秒后做改变，5秒后可关闭
	{ config_id = 1391011, name = "GADGET_STATE_CHANGE_391011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "391003", condition = "condition_EVENT_GADGET_STATE_CHANGE_391011", action = "action_EVENT_GADGET_STATE_CHANGE_391011", trigger_count = 0 },
	-- 激活后1秒执行，实际变化
	{ config_id = 1391012, name = "TIME_AXIS_PASS_391012", event = EventType.EVENT_TIME_AXIS_PASS, source = "changestate", condition = "condition_EVENT_TIME_AXIS_PASS_391012", action = "action_EVENT_TIME_AXIS_PASS_391012", trigger_count = 0 },
	-- 关闭后1秒执行，实际变化
	{ config_id = 1391013, name = "TIME_AXIS_PASS_391013", event = EventType.EVENT_TIME_AXIS_PASS, source = "revivestate", condition = "condition_EVENT_TIME_AXIS_PASS_391013", action = "action_EVENT_TIME_AXIS_PASS_391013", trigger_count = 0 },
	-- 尊像加载，且是关闭时
	{ config_id = 1391014, name = "GADGET_CREATE_391014", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_391014", action = "action_EVENT_GADGET_CREATE_391014", trigger_count = 0 },
	-- 点击激活时，改状态
	{ config_id = 1391015, name = "SELECT_OPTION_391015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_391015", action = "action_EVENT_SELECT_OPTION_391015", trigger_count = 0 },
	-- 激活后5秒执行，加关闭按钮
	{ config_id = 1391016, name = "TIME_AXIS_PASS_391016", event = EventType.EVENT_TIME_AXIS_PASS, source = "changestate", condition = "condition_EVENT_TIME_AXIS_PASS_391016", action = "action_EVENT_TIME_AXIS_PASS_391016", trigger_count = 0 },
	-- 关闭后5秒执行，加激活按钮
	{ config_id = 1391017, name = "TIME_AXIS_PASS_391017", event = EventType.EVENT_TIME_AXIS_PASS, source = "revivestate", condition = "condition_EVENT_TIME_AXIS_PASS_391017", action = "action_EVENT_TIME_AXIS_PASS_391017", trigger_count = 0 },
	-- 点击关闭时，改状态
	{ config_id = 1391018, name = "SELECT_OPTION_391018", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_391018", action = "action_EVENT_SELECT_OPTION_391018", trigger_count = 0 },
	-- 尊像加载，且是开启时
	{ config_id = 1391019, name = "GADGET_CREATE_391019", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_391019", action = "action_EVENT_GADGET_CREATE_391019", trigger_count = 0 },
	-- 尊像从锁定变为关闭时
	{ config_id = 1391020, name = "GADGET_STATE_CHANGE_391020", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_391020", action = "action_EVENT_GADGET_STATE_CHANGE_391020", trigger_count = 0 },
	-- 121001创建加option
	{ config_id = 1391021, name = "GADGET_CREATE_391021", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_391021", action = "action_EVENT_GADGET_CREATE_391021", trigger_count = 0 },
	-- 121001变为gearstart时
	{ config_id = 1391022, name = "GADGET_STATE_CHANGE_391022", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "391001", condition = "condition_EVENT_GADGET_STATE_CHANGE_391022", action = "action_EVENT_GADGET_STATE_CHANGE_391022", trigger_count = 0 },
	-- 121001变为default时
	{ config_id = 1391023, name = "GADGET_STATE_CHANGE_391023", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "391001", condition = "condition_EVENT_GADGET_STATE_CHANGE_391023", action = "action_EVENT_GADGET_STATE_CHANGE_391023", trigger_count = 0 },
	-- 旋转后2秒重新加按钮
	{ config_id = 1391024, name = "TIME_AXIS_PASS_391024", event = EventType.EVENT_TIME_AXIS_PASS, source = "OptionReset1", condition = "condition_EVENT_TIME_AXIS_PASS_391024", action = "action_EVENT_TIME_AXIS_PASS_391024", trigger_count = 0 },
	-- 121001判断方向错误
	{ config_id = 1391025, name = "VARIABLE_CHANGE_391025", event = EventType.EVENT_VARIABLE_CHANGE, source = "Statue_Rotate1", condition = "condition_EVENT_VARIABLE_CHANGE_391025", action = "action_EVENT_VARIABLE_CHANGE_391025", trigger_count = 0 },
	-- 121001判断方向正确
	{ config_id = 1391026, name = "VARIABLE_CHANGE_391026", event = EventType.EVENT_VARIABLE_CHANGE, source = "Statue_Rotate1", condition = "condition_EVENT_VARIABLE_CHANGE_391026", action = "action_EVENT_VARIABLE_CHANGE_391026", trigger_count = 0 },
	-- 121004旋转
	{ config_id = 1391027, name = "SELECT_OPTION_391027", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_391027", action = "action_EVENT_SELECT_OPTION_391027", trigger_count = 0 },
	-- 121004判断方向正确
	{ config_id = 1391028, name = "VARIABLE_CHANGE_391028", event = EventType.EVENT_VARIABLE_CHANGE, source = "Statue_Rotate2", condition = "condition_EVENT_VARIABLE_CHANGE_391028", action = "action_EVENT_VARIABLE_CHANGE_391028", trigger_count = 0 },
	-- 121004判断方向错误
	{ config_id = 1391029, name = "VARIABLE_CHANGE_391029", event = EventType.EVENT_VARIABLE_CHANGE, source = "Statue_Rotate2", condition = "condition_EVENT_VARIABLE_CHANGE_391029", action = "action_EVENT_VARIABLE_CHANGE_391029", trigger_count = 0 },
	-- 旋转后2秒重新加按钮
	{ config_id = 1391030, name = "TIME_AXIS_PASS_391030", event = EventType.EVENT_TIME_AXIS_PASS, source = "OptionReset2", condition = "condition_EVENT_TIME_AXIS_PASS_391030", action = "action_EVENT_TIME_AXIS_PASS_391030", trigger_count = 0 },
	-- 121004变为default时
	{ config_id = 1391031, name = "GADGET_STATE_CHANGE_391031", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "391004", condition = "condition_EVENT_GADGET_STATE_CHANGE_391031", action = "action_EVENT_GADGET_STATE_CHANGE_391031", trigger_count = 0 },
	-- 121004变为gearstart时
	{ config_id = 1391032, name = "GADGET_STATE_CHANGE_391032", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "391004", condition = "condition_EVENT_GADGET_STATE_CHANGE_391032", action = "action_EVENT_GADGET_STATE_CHANGE_391032", trigger_count = 0 },
	-- 121004创建加option
	{ config_id = 1391033, name = "GADGET_CREATE_391033", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_391033", action = "action_EVENT_GADGET_CREATE_391033", trigger_count = 0 },
	-- 121005旋转
	{ config_id = 1391034, name = "SELECT_OPTION_391034", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_391034", action = "action_EVENT_SELECT_OPTION_391034", trigger_count = 0 },
	-- 121005判断方向正确
	{ config_id = 1391035, name = "VARIABLE_CHANGE_391035", event = EventType.EVENT_VARIABLE_CHANGE, source = "Statue_Rotate3", condition = "condition_EVENT_VARIABLE_CHANGE_391035", action = "action_EVENT_VARIABLE_CHANGE_391035", trigger_count = 0 },
	-- 121005判断方向错误
	{ config_id = 1391036, name = "VARIABLE_CHANGE_391036", event = EventType.EVENT_VARIABLE_CHANGE, source = "Statue_Rotate3", condition = "condition_EVENT_VARIABLE_CHANGE_391036", action = "action_EVENT_VARIABLE_CHANGE_391036", trigger_count = 0 },
	-- 旋转后2秒重新加按钮
	{ config_id = 1391037, name = "TIME_AXIS_PASS_391037", event = EventType.EVENT_TIME_AXIS_PASS, source = "OptionReset3", condition = "condition_EVENT_TIME_AXIS_PASS_391037", action = "action_EVENT_TIME_AXIS_PASS_391037", trigger_count = 0 },
	-- 121005变为default时
	{ config_id = 1391038, name = "GADGET_STATE_CHANGE_391038", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "391005", condition = "condition_EVENT_GADGET_STATE_CHANGE_391038", action = "action_EVENT_GADGET_STATE_CHANGE_391038", trigger_count = 0 },
	-- 121005变为gearstart时
	{ config_id = 1391039, name = "GADGET_STATE_CHANGE_391039", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "391005", condition = "condition_EVENT_GADGET_STATE_CHANGE_391039", action = "action_EVENT_GADGET_STATE_CHANGE_391039", trigger_count = 0 },
	-- 121005创建加option
	{ config_id = 1391040, name = "GADGET_CREATE_391040", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_391040", action = "action_EVENT_GADGET_CREATE_391040", trigger_count = 0 },
	{ config_id = 1391041, name = "QUEST_START_391041", event = EventType.EVENT_QUEST_START, source = "7214904", condition = "", action = "action_EVENT_QUEST_START_391041", trigger_count = 0 },
	{ config_id = 1391042, name = "QUEST_START_391042", event = EventType.EVENT_QUEST_START, source = "7214905", condition = "", action = "action_EVENT_QUEST_START_391042", trigger_count = 0 },
	-- 正确数量为3时
	{ config_id = 1391043, name = "VARIABLE_CHANGE_391043", event = EventType.EVENT_VARIABLE_CHANGE, source = "Gadget_Count", condition = "condition_EVENT_VARIABLE_CHANGE_391043", action = "action_EVENT_VARIABLE_CHANGE_391043", trigger_count = 0 },
	-- 正确数量不为3时
	{ config_id = 1391044, name = "VARIABLE_CHANGE_391044", event = EventType.EVENT_VARIABLE_CHANGE, source = "Gadget_Count", condition = "condition_EVENT_VARIABLE_CHANGE_391044", action = "action_EVENT_VARIABLE_CHANGE_391044", trigger_count = 0 },
	-- 玩法完成时
	{ config_id = 1391045, name = "VARIABLE_CHANGE_391045", event = EventType.EVENT_VARIABLE_CHANGE, source = "Success", condition = "condition_EVENT_VARIABLE_CHANGE_391045", action = "action_EVENT_VARIABLE_CHANGE_391045" },
	{ config_id = 1391046, name = "TIME_AXIS_PASS_391046", event = EventType.EVENT_TIME_AXIS_PASS, source = "setsuccess", condition = "condition_EVENT_TIME_AXIS_PASS_391046", action = "action_EVENT_TIME_AXIS_PASS_391046", trigger_count = 0 },
	-- CS播放完时
	{ config_id = 1391047, name = "VARIABLE_CHANGE_391047", event = EventType.EVENT_VARIABLE_CHANGE, source = "Success", condition = "condition_EVENT_VARIABLE_CHANGE_391047", action = "action_EVENT_VARIABLE_CHANGE_391047" },
	-- 三个雕像都激活时
	{ config_id = 1391048, name = "VARIABLE_CHANGE_391048", event = EventType.EVENT_VARIABLE_CHANGE, source = "StatueCount", condition = "condition_EVENT_VARIABLE_CHANGE_391048", action = "action_EVENT_VARIABLE_CHANGE_391048", trigger_count = 0 }
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
	{ config_id = 9, name = "StatueCount", value = 0, no_refresh = true }
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
			{ config_id = 391001, state = 202 },
			{ config_id = 391002, state = 0 },
			{ config_id = 391003, state = 0 },
			{ config_id = 391004, state = 202 },
			{ config_id = 391005, state = 202 },
			{ config_id = 391006, state = 0 },
			{ config_id = 391007, state = 0 },
			{ config_id = 391008, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "QUEST_START_391041" },
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
			{ config_id = 9, name = "StatueCount", value = 0, no_refresh = true }
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 391001, state = 202 },
			{ config_id = 391002, state = 0 },
			{ config_id = 391003, state = 0 },
			{ config_id = 391004, state = 202 },
			{ config_id = 391005, state = 202 },
			{ config_id = 391006, state = 0 },
			{ config_id = 391007, state = 0 },
			{ config_id = 391008, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "SELECT_OPTION_391009", "GADGET_CREATE_391021", "GADGET_STATE_CHANGE_391022", "GADGET_STATE_CHANGE_391023", "TIME_AXIS_PASS_391024", "VARIABLE_CHANGE_391025", "VARIABLE_CHANGE_391026", "SELECT_OPTION_391027", "VARIABLE_CHANGE_391028", "VARIABLE_CHANGE_391029", "TIME_AXIS_PASS_391030", "GADGET_STATE_CHANGE_391031", "GADGET_STATE_CHANGE_391032", "GADGET_CREATE_391033", "SELECT_OPTION_391034", "VARIABLE_CHANGE_391035", "VARIABLE_CHANGE_391036", "TIME_AXIS_PASS_391037", "GADGET_STATE_CHANGE_391038", "GADGET_STATE_CHANGE_391039", "GADGET_CREATE_391040", "QUEST_START_391042", "VARIABLE_CHANGE_391043", "VARIABLE_CHANGE_391044", "VARIABLE_CHANGE_391045", "TIME_AXIS_PASS_391046", "VARIABLE_CHANGE_391047", "VARIABLE_CHANGE_391048" },
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
			{ config_id = 9, name = "StatueCount", value = 0, no_refresh = true }
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 391001, state = 0 },
			{ config_id = 391002, state = 0 },
			{ config_id = 391003, state = 202 },
			{ config_id = 391004, state = 0 },
			{ config_id = 391005, state = 0 },
			{ config_id = 391006, state = 0 },
			{ config_id = 391007, state = 0 },
			{ config_id = 391008, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { },
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
			{ config_id = 9, name = "StatueCount", value = 3, no_refresh = true }
		}
	},
	[4] = {
		gadgets = {
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_391010", "GADGET_STATE_CHANGE_391011", "TIME_AXIS_PASS_391012", "TIME_AXIS_PASS_391013", "GADGET_CREATE_391014", "SELECT_OPTION_391015", "TIME_AXIS_PASS_391016", "TIME_AXIS_PASS_391017", "SELECT_OPTION_391018", "GADGET_CREATE_391019", "GADGET_STATE_CHANGE_391020" },
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
			{ config_id = 9, name = "StatueCount", value = 0, no_refresh = true }
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_391009(context, evt)
	-- 判断是gadgetid 391001 option_id 31
	if 391001 ~= evt.param1 then
		return false	
	end
	
	if 31 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_391009(context, evt)
	-- 将本组内变量名为 "Statue_Rotated1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Statue_Rotated1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "Statue_Rotated1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Statue_Rotated1", 1, 133210388) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "Statue_Rotated1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Statue_Rotated1", 1, 133210390) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 创建标识为"OptionReset1"，时间节点为{2}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "OptionReset1", {2}, false)
	
	
	-- 删除指定group： 133210391 ；指定config：391001；物件身上指定option：31；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210391, 391001, 31) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_391010(context, evt)
	-- 检测config_id为391003的gadget是否从GadgetState.GearStop变为GadgetState.GearStart
	if 391003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.GearStop ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_391010(context, evt)
	-- 创建标识为"changestate"，时间节点为{1,5}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "changestate", {1,5}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_391011(context, evt)
	-- 检测config_id为391003的gadget是否从GadgetState.GearStart变为GadgetState.GearStop
	if 391003 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_391011(context, evt)
	-- 创建标识为"revivestate"，时间节点为{1,5}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "revivestate", {1,5}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_391012(context, evt)
	if evt.param1 ~= 1 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_391012(context, evt)
	-- 将configid为 391001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 391001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 391004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 391004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 391005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 391005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_391013(context, evt)
	if evt.param1 ~= 1 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_391013(context, evt)
	-- 将configid为 391001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 391001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 391004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 391004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 391005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 391005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_391014(context, evt)
	if 391003 ~= evt.param1 or GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_391014(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210391, 391003, {61}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_391015(context, evt)
	-- 判断是gadgetid 391003 option_id 61
	if 391003 ~= evt.param1 then
		return false	
	end
	
	if 61 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_391015(context, evt)
	-- 将configid为 391003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 391003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133210391 ；指定config：391003；物件身上指定option：61；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210391, 391003, 61) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_391016(context, evt)
	if evt.param1 ~= 2 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_391016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210391, 391003, {62}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_391017(context, evt)
	if evt.param1 ~= 2 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_391017(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210391, 391003, {61}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_391018(context, evt)
	-- 判断是gadgetid 391003 option_id 62
	if 391003 ~= evt.param1 then
		return false	
	end
	
	if 62 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_391018(context, evt)
	-- 将configid为 391003 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 391003, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133210391 ；指定config：391003；物件身上指定option：62；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210391, 391003, 62) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_391019(context, evt)
	if 391003 ~= evt.param1 or GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_391019(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210391, 391003, {62}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_391020(context, evt)
	-- 检测config_id为391003的gadget是否从GadgetState.Default变为GadgetState.GearStop
	if 391003 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_391020(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210391, 391003, {61}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_391021(context, evt)
	if 391001 ~= evt.param1 or GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_391021(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210391, 391001, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_391022(context, evt)
	-- 检测config_id为391001的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 391001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_391022(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210391, 391001, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_391023(context, evt)
	-- 检测config_id为391001的gadget是否从GadgetState.GearStart变为GadgetState.Default
	if 391001 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_391023(context, evt)
	-- 删除指定group： 133210391 ；指定config：391001；物件身上指定option：31；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210391, 391001, 31) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_391024(context, evt)
	if evt.param1 ~= 1 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_391024(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210391, 391001, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_391025(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Statue_Rotate1"为270
	if ScriptLib.GetGroupVariableValue(context, "Statue_Rotate1") ~= 270 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_391025(context, evt)
	-- 将configid为 391006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 391006, GadgetState.Default) then
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
function condition_EVENT_VARIABLE_CHANGE_391026(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Statue_Rotate1"为180
	if ScriptLib.GetGroupVariableValue(context, "Statue_Rotate1") ~= 180 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_391026(context, evt)
	-- 将configid为 391006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 391006, GadgetState.GearStart) then
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
function condition_EVENT_SELECT_OPTION_391027(context, evt)
	-- 判断是gadgetid 391004 option_id 31
	if 391004 ~= evt.param1 then
		return false	
	end
	
	if 31 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_391027(context, evt)
	-- 将本组内变量名为 "Statue_Rotated2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Statue_Rotated2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "Statue_Rotated2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Statue_Rotated2", 1, 133210388) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "Statue_Rotated2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Statue_Rotated2", 1, 133210390) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 创建标识为"OptionReset2"，时间节点为{2}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "OptionReset2", {2}, false)
	
	
	-- 删除指定group： 133210391 ；指定config：391004；物件身上指定option：31；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210391, 391004, 31) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_391028(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Statue_Rotate2"为180
	if ScriptLib.GetGroupVariableValue(context, "Statue_Rotate2") ~= 180 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_391028(context, evt)
	-- 将configid为 391007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 391007, GadgetState.GearStart) then
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
function condition_EVENT_VARIABLE_CHANGE_391029(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Statue_Rotate2"为270
	if ScriptLib.GetGroupVariableValue(context, "Statue_Rotate2") ~= 270 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_391029(context, evt)
	-- 将configid为 391007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 391007, GadgetState.Default) then
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
function condition_EVENT_TIME_AXIS_PASS_391030(context, evt)
	if evt.param1 ~= 1 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_391030(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210391, 391004, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_391031(context, evt)
	-- 检测config_id为391004的gadget是否从GadgetState.GearStart变为GadgetState.Default
	if 391004 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_391031(context, evt)
	-- 删除指定group： 133210391 ；指定config：391004；物件身上指定option：31；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210391, 391004, 31) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_391032(context, evt)
	-- 检测config_id为391004的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 391004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_391032(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210391, 391004, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_391033(context, evt)
	if 391004 ~= evt.param1 or GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_391033(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210391, 391004, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_391034(context, evt)
	-- 判断是gadgetid 391005 option_id 31
	if 391005 ~= evt.param1 then
		return false	
	end
	
	if 31 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_391034(context, evt)
	-- 将本组内变量名为 "Statue_Rotated3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Statue_Rotated3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "Statue_Rotated3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Statue_Rotated3", 1, 133210388) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "Statue_Rotated3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Statue_Rotated3", 1, 133210390) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 创建标识为"OptionReset3"，时间节点为{2}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "OptionReset3", {2}, false)
	
	
	-- 删除指定group： 133210391 ；指定config：391005；物件身上指定option：31；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210391, 391005, 31) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_391035(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Statue_Rotate3"为270
	if ScriptLib.GetGroupVariableValue(context, "Statue_Rotate3") ~= 270 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_391035(context, evt)
	-- 将configid为 391008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 391008, GadgetState.GearStart) then
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
function condition_EVENT_VARIABLE_CHANGE_391036(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Statue_Rotate3"为0
	if ScriptLib.GetGroupVariableValue(context, "Statue_Rotate3") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_391036(context, evt)
	-- 将configid为 391008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 391008, GadgetState.Default) then
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
function condition_EVENT_TIME_AXIS_PASS_391037(context, evt)
	if evt.param1 ~= 1 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_391037(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210391, 391005, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_391038(context, evt)
	-- 检测config_id为391005的gadget是否从GadgetState.GearStart变为GadgetState.Default
	if 391005 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_391038(context, evt)
	-- 删除指定group： 133210391 ；指定config：391005；物件身上指定option：31；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210391, 391005, 31) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_391039(context, evt)
	-- 检测config_id为391005的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 391005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_391039(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210391, 391005, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_391040(context, evt)
	if 391005 ~= evt.param1 or GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_391040(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210391, 391005, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_391041(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210391, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_391042(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210391, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_391043(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Gadget_Count"为3
	if ScriptLib.GetGroupVariableValue(context, "Gadget_Count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_391043(context, evt)
	-- 将configid为 391002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 391002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建标识为"setsuccess"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "setsuccess", {1}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_391044(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Gadget_Count"为2
	if ScriptLib.GetGroupVariableValue(context, "Gadget_Count") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_391044(context, evt)
	-- 将本组内变量名为 "Gadget_Count4" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Gadget_Count4", 0, 133210100) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将configid为 391002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 391002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_391045(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Success"为1
	if ScriptLib.GetGroupVariableValue(context, "Success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_391045(context, evt)
	-- 停止标识为"OptionReset1"的时间轴
	ScriptLib.EndTimeAxis(context, "OptionReset1")
	
	
	-- 停止标识为"OptionReset2"的时间轴
	ScriptLib.EndTimeAxis(context, "OptionReset2")
	
	
	-- 停止标识为"OptionReset3"的时间轴
	ScriptLib.EndTimeAxis(context, "OptionReset3")
	
	
	-- 删除指定group： 133210391 ；指定config：391001；物件身上指定option：31；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210391, 391001, 31) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
	end
	
	-- 删除指定group： 133210391 ；指定config：391004；物件身上指定option：31；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210391, 391004, 31) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
	end
	
	-- 删除指定group： 133210391 ；指定config：391005；物件身上指定option：31；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210391, 391005, 31) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
	end
	
	-- 删除指定group： 133210391 ；指定config：391003；物件身上指定option：61；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210391, 391003, 61) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
	end
	
	-- 删除指定group： 133210391 ；指定config：391003；物件身上指定option：62；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210391, 391003, 62) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
	end
	
		-- 将指定group的suiteIndex设为指定suite
	  ScriptLib.SetFlowSuite(context, 133210391, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_391046(context, evt)
	if evt.param1 ~= 1 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_391046(context, evt)
	-- 将本组内变量名为 "Gadget_Count4" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Gadget_Count4", 1, 133210100) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_391047(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Success"为2
	if ScriptLib.GetGroupVariableValue(context, "Success") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_391047(context, evt)
	-- 将configid为 391001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 391001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 391002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 391002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 391003 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 391003, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 391004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 391004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 391005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 391005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 391006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 391006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 391007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 391007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 391008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 391008, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_391048(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"StatueCount"为3
	if ScriptLib.GetGroupVariableValue(context, "StatueCount") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_391048(context, evt)
	-- 将configid为 391003 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 391003, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 添加某个flowSuite里的要素，如果当前与目标suite属性不一样，会纠正为目标属性，同时触发相应Trigger
	  ScriptLib.AddExtraFlowSuite(context, 133210391, 4, FlowSuiteOperatePolicy.COMPLETE)
	
	return 0
end

require "V2_1/SeaGodStatue"