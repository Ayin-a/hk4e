-- 基础信息
local base_info = {
	group_id = 133210388
}

-- DEFS_MISCS
local statueConfig =
{
    ["Statue_Rotated1"] = {config_id = 388001,valueName = "Statue_Rotate1"},
    ["Statue_Rotated2"] = {config_id = 388004,valueName = "Statue_Rotate2"},
    ["Statue_Rotated3"] = {config_id = 388005,valueName = "Statue_Rotate3"}
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
	[388001] = { config_id = 388001, gadget_id = 70360168, pos = { x = -3797.080, y = 149.395, z = -1137.969 }, rot = { x = 0.000, y = 50.428, z = 0.000 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 17 },
	[388002] = { config_id = 388002, gadget_id = 70290098, pos = { x = -3802.822, y = 147.225, z = -1131.028 }, rot = { x = 0.000, y = 50.428, z = 0.000 }, level = 30, persistent = true, area_id = 17 },
	[388003] = { config_id = 388003, gadget_id = 70360167, pos = { x = -3809.781, y = 149.395, z = -1136.761 }, rot = { x = 0.000, y = 50.428, z = 0.000 }, level = 30, state = GadgetState.GearStop, persistent = true, area_id = 17 },
	[388004] = { config_id = 388004, gadget_id = 70360187, pos = { x = -3808.551, y = 149.395, z = -1124.069 }, rot = { x = 0.000, y = 140.428, z = 0.000 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 17 },
	[388005] = { config_id = 388005, gadget_id = 70360188, pos = { x = -3795.850, y = 149.395, z = -1125.290 }, rot = { x = 0.000, y = 320.428, z = 0.000 }, level = 30, persistent = true, area_id = 17 },
	[388006] = { config_id = 388006, gadget_id = 70290099, pos = { x = -3802.822, y = 147.225, z = -1131.028 }, rot = { x = 0.000, y = 140.428, z = 0.000 }, level = 30, area_id = 17 },
	[388007] = { config_id = 388007, gadget_id = 70290099, pos = { x = -3802.822, y = 147.225, z = -1131.028 }, rot = { x = 0.000, y = 320.428, z = 0.000 }, level = 30, area_id = 17 },
	[388008] = { config_id = 388008, gadget_id = 70290099, pos = { x = -3802.822, y = 147.225, z = -1131.028 }, rot = { x = 0.000, y = 50.428, z = 0.000 }, level = 30, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 121001旋转
	{ config_id = 1388009, name = "SELECT_OPTION_388009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_388009", action = "action_EVENT_SELECT_OPTION_388009", trigger_count = 0 },
	-- 激活尊像，1秒后做改变，5秒后可关闭
	{ config_id = 1388010, name = "GADGET_STATE_CHANGE_388010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "388003", condition = "condition_EVENT_GADGET_STATE_CHANGE_388010", action = "action_EVENT_GADGET_STATE_CHANGE_388010", trigger_count = 0 },
	-- 关闭尊像，1秒后做改变，5秒后可关闭
	{ config_id = 1388011, name = "GADGET_STATE_CHANGE_388011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "388003", condition = "condition_EVENT_GADGET_STATE_CHANGE_388011", action = "action_EVENT_GADGET_STATE_CHANGE_388011", trigger_count = 0 },
	-- 激活后1秒执行，实际变化
	{ config_id = 1388012, name = "TIME_AXIS_PASS_388012", event = EventType.EVENT_TIME_AXIS_PASS, source = "changestate", condition = "condition_EVENT_TIME_AXIS_PASS_388012", action = "action_EVENT_TIME_AXIS_PASS_388012", trigger_count = 0 },
	-- 关闭后1秒执行，实际变化
	{ config_id = 1388013, name = "TIME_AXIS_PASS_388013", event = EventType.EVENT_TIME_AXIS_PASS, source = "revivestate", condition = "condition_EVENT_TIME_AXIS_PASS_388013", action = "action_EVENT_TIME_AXIS_PASS_388013", trigger_count = 0 },
	-- 尊像加载，且是关闭时
	{ config_id = 1388014, name = "GADGET_CREATE_388014", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_388014", action = "action_EVENT_GADGET_CREATE_388014", trigger_count = 0 },
	-- 点击激活时，改状态
	{ config_id = 1388015, name = "SELECT_OPTION_388015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_388015", action = "action_EVENT_SELECT_OPTION_388015", trigger_count = 0 },
	-- 激活后5秒执行，加关闭按钮
	{ config_id = 1388016, name = "TIME_AXIS_PASS_388016", event = EventType.EVENT_TIME_AXIS_PASS, source = "changestate", condition = "condition_EVENT_TIME_AXIS_PASS_388016", action = "action_EVENT_TIME_AXIS_PASS_388016", trigger_count = 0 },
	-- 关闭后5秒执行，加激活按钮
	{ config_id = 1388017, name = "TIME_AXIS_PASS_388017", event = EventType.EVENT_TIME_AXIS_PASS, source = "revivestate", condition = "condition_EVENT_TIME_AXIS_PASS_388017", action = "action_EVENT_TIME_AXIS_PASS_388017", trigger_count = 0 },
	-- 点击关闭时，改状态
	{ config_id = 1388018, name = "SELECT_OPTION_388018", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_388018", action = "action_EVENT_SELECT_OPTION_388018", trigger_count = 0 },
	-- 尊像加载，且是开启时
	{ config_id = 1388019, name = "GADGET_CREATE_388019", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_388019", action = "action_EVENT_GADGET_CREATE_388019", trigger_count = 0 },
	-- 尊像从锁定变为关闭时
	{ config_id = 1388020, name = "GADGET_STATE_CHANGE_388020", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "388003", condition = "condition_EVENT_GADGET_STATE_CHANGE_388020", action = "action_EVENT_GADGET_STATE_CHANGE_388020", trigger_count = 0 },
	-- 121001创建加option
	{ config_id = 1388021, name = "GADGET_CREATE_388021", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_388021", action = "action_EVENT_GADGET_CREATE_388021", trigger_count = 0 },
	-- 121001变为gearstart时
	{ config_id = 1388022, name = "GADGET_STATE_CHANGE_388022", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "388001", condition = "condition_EVENT_GADGET_STATE_CHANGE_388022", action = "action_EVENT_GADGET_STATE_CHANGE_388022", trigger_count = 0 },
	-- 121001变为default时
	{ config_id = 1388023, name = "GADGET_STATE_CHANGE_388023", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "388001", condition = "condition_EVENT_GADGET_STATE_CHANGE_388023", action = "action_EVENT_GADGET_STATE_CHANGE_388023", trigger_count = 0 },
	-- 旋转后2秒重新加按钮
	{ config_id = 1388024, name = "TIME_AXIS_PASS_388024", event = EventType.EVENT_TIME_AXIS_PASS, source = "OptionReset1", condition = "condition_EVENT_TIME_AXIS_PASS_388024", action = "action_EVENT_TIME_AXIS_PASS_388024", trigger_count = 0 },
	-- 121001判断方向错误
	{ config_id = 1388025, name = "VARIABLE_CHANGE_388025", event = EventType.EVENT_VARIABLE_CHANGE, source = "Statue_Rotate1", condition = "condition_EVENT_VARIABLE_CHANGE_388025", action = "action_EVENT_VARIABLE_CHANGE_388025", trigger_count = 0 },
	-- 121001判断方向正确
	{ config_id = 1388026, name = "VARIABLE_CHANGE_388026", event = EventType.EVENT_VARIABLE_CHANGE, source = "Statue_Rotate1", condition = "condition_EVENT_VARIABLE_CHANGE_388026", action = "action_EVENT_VARIABLE_CHANGE_388026", trigger_count = 0 },
	-- 121004旋转
	{ config_id = 1388027, name = "SELECT_OPTION_388027", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_388027", action = "action_EVENT_SELECT_OPTION_388027", trigger_count = 0 },
	-- 121004判断方向正确
	{ config_id = 1388028, name = "VARIABLE_CHANGE_388028", event = EventType.EVENT_VARIABLE_CHANGE, source = "Statue_Rotate2", condition = "condition_EVENT_VARIABLE_CHANGE_388028", action = "action_EVENT_VARIABLE_CHANGE_388028", trigger_count = 0 },
	-- 121004判断方向错误
	{ config_id = 1388029, name = "VARIABLE_CHANGE_388029", event = EventType.EVENT_VARIABLE_CHANGE, source = "Statue_Rotate2", condition = "condition_EVENT_VARIABLE_CHANGE_388029", action = "action_EVENT_VARIABLE_CHANGE_388029", trigger_count = 0 },
	-- 旋转后2秒重新加按钮
	{ config_id = 1388030, name = "TIME_AXIS_PASS_388030", event = EventType.EVENT_TIME_AXIS_PASS, source = "OptionReset2", condition = "condition_EVENT_TIME_AXIS_PASS_388030", action = "action_EVENT_TIME_AXIS_PASS_388030", trigger_count = 0 },
	-- 121004变为default时
	{ config_id = 1388031, name = "GADGET_STATE_CHANGE_388031", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "388004", condition = "condition_EVENT_GADGET_STATE_CHANGE_388031", action = "action_EVENT_GADGET_STATE_CHANGE_388031", trigger_count = 0 },
	-- 121004变为gearstart时
	{ config_id = 1388032, name = "GADGET_STATE_CHANGE_388032", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "388004", condition = "condition_EVENT_GADGET_STATE_CHANGE_388032", action = "action_EVENT_GADGET_STATE_CHANGE_388032", trigger_count = 0 },
	-- 121004创建加option
	{ config_id = 1388033, name = "GADGET_CREATE_388033", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_388033", action = "action_EVENT_GADGET_CREATE_388033", trigger_count = 0 },
	-- 121005旋转
	{ config_id = 1388034, name = "SELECT_OPTION_388034", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_388034", action = "action_EVENT_SELECT_OPTION_388034", trigger_count = 0 },
	-- 121005判断方向正确
	{ config_id = 1388035, name = "VARIABLE_CHANGE_388035", event = EventType.EVENT_VARIABLE_CHANGE, source = "Statue_Rotate3", condition = "condition_EVENT_VARIABLE_CHANGE_388035", action = "action_EVENT_VARIABLE_CHANGE_388035", trigger_count = 0 },
	-- 121005判断方向错误
	{ config_id = 1388036, name = "VARIABLE_CHANGE_388036", event = EventType.EVENT_VARIABLE_CHANGE, source = "Statue_Rotate3", condition = "condition_EVENT_VARIABLE_CHANGE_388036", action = "action_EVENT_VARIABLE_CHANGE_388036", trigger_count = 0 },
	-- 旋转后2秒重新加按钮
	{ config_id = 1388037, name = "TIME_AXIS_PASS_388037", event = EventType.EVENT_TIME_AXIS_PASS, source = "OptionReset3", condition = "condition_EVENT_TIME_AXIS_PASS_388037", action = "action_EVENT_TIME_AXIS_PASS_388037", trigger_count = 0 },
	-- 121005变为default时
	{ config_id = 1388038, name = "GADGET_STATE_CHANGE_388038", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "388005", condition = "condition_EVENT_GADGET_STATE_CHANGE_388038", action = "action_EVENT_GADGET_STATE_CHANGE_388038", trigger_count = 0 },
	-- 121005变为gearstart时
	{ config_id = 1388039, name = "GADGET_STATE_CHANGE_388039", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "388005", condition = "condition_EVENT_GADGET_STATE_CHANGE_388039", action = "action_EVENT_GADGET_STATE_CHANGE_388039", trigger_count = 0 },
	-- 121005创建加option
	{ config_id = 1388040, name = "GADGET_CREATE_388040", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_388040", action = "action_EVENT_GADGET_CREATE_388040", trigger_count = 0 },
	{ config_id = 1388041, name = "QUEST_START_388041", event = EventType.EVENT_QUEST_START, source = "7214904", condition = "", action = "action_EVENT_QUEST_START_388041", trigger_count = 0 },
	{ config_id = 1388042, name = "QUEST_START_388042", event = EventType.EVENT_QUEST_START, source = "7214905", condition = "", action = "action_EVENT_QUEST_START_388042", trigger_count = 0 },
	-- 正确数量为3时
	{ config_id = 1388043, name = "VARIABLE_CHANGE_388043", event = EventType.EVENT_VARIABLE_CHANGE, source = "Gadget_Count", condition = "condition_EVENT_VARIABLE_CHANGE_388043", action = "action_EVENT_VARIABLE_CHANGE_388043", trigger_count = 0 },
	-- 正确数量不为3时
	{ config_id = 1388044, name = "VARIABLE_CHANGE_388044", event = EventType.EVENT_VARIABLE_CHANGE, source = "Gadget_Count", condition = "condition_EVENT_VARIABLE_CHANGE_388044", action = "action_EVENT_VARIABLE_CHANGE_388044", trigger_count = 0 },
	-- 玩法完成时
	{ config_id = 1388045, name = "VARIABLE_CHANGE_388045", event = EventType.EVENT_VARIABLE_CHANGE, source = "Success", condition = "condition_EVENT_VARIABLE_CHANGE_388045", action = "action_EVENT_VARIABLE_CHANGE_388045" },
	{ config_id = 1388046, name = "TIME_AXIS_PASS_388046", event = EventType.EVENT_TIME_AXIS_PASS, source = "setsuccess", condition = "condition_EVENT_TIME_AXIS_PASS_388046", action = "action_EVENT_TIME_AXIS_PASS_388046", trigger_count = 0 },
	-- CS播放完时
	{ config_id = 1388047, name = "VARIABLE_CHANGE_388047", event = EventType.EVENT_VARIABLE_CHANGE, source = "Success", condition = "condition_EVENT_VARIABLE_CHANGE_388047", action = "action_EVENT_VARIABLE_CHANGE_388047" }
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
	{ config_id = 8, name = "Success", value = 0, no_refresh = true }
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
			{ config_id = 388001, state = 0 },
			{ config_id = 388002, state = 0 },
			{ config_id = 388003, state = 0 },
			{ config_id = 388004, state = 0 },
			{ config_id = 388005, state = 0 },
			{ config_id = 388006, state = 0 },
			{ config_id = 388007, state = 0 },
			{ config_id = 388008, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "QUEST_START_388041" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "Gadget_Count", value = 0, no_refresh = true },
			{ config_id = 2, name = "Statue_Rotate1", value = 0, no_refresh = true },
			{ config_id = 3, name = "Statue_Rotated1", value = 0, no_refresh = true },
			{ config_id = 4, name = "Statue_Rotate2", value = 0, no_refresh = true },
			{ config_id = 5, name = "Statue_Rotated2", value = 0, no_refresh = true },
			{ config_id = 6, name = "Statue_Rotate3", value = 0, no_refresh = true },
			{ config_id = 7, name = "Statue_Rotated3", value = 0, no_refresh = true },
			{ config_id = 8, name = "Success", value = 0, no_refresh = true }
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 388001, state = 201 },
			{ config_id = 388002, state = 0 },
			{ config_id = 388003, state = 202 },
			{ config_id = 388004, state = 201 },
			{ config_id = 388005, state = 201 },
			{ config_id = 388006, state = 0 },
			{ config_id = 388007, state = 0 },
			{ config_id = 388008, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "SELECT_OPTION_388009", "GADGET_STATE_CHANGE_388010", "GADGET_STATE_CHANGE_388011", "TIME_AXIS_PASS_388012", "TIME_AXIS_PASS_388013", "GADGET_CREATE_388014", "SELECT_OPTION_388015", "TIME_AXIS_PASS_388016", "TIME_AXIS_PASS_388017", "SELECT_OPTION_388018", "GADGET_CREATE_388019", "GADGET_STATE_CHANGE_388020", "GADGET_CREATE_388021", "GADGET_STATE_CHANGE_388022", "GADGET_STATE_CHANGE_388023", "TIME_AXIS_PASS_388024", "VARIABLE_CHANGE_388025", "VARIABLE_CHANGE_388026", "SELECT_OPTION_388027", "VARIABLE_CHANGE_388028", "VARIABLE_CHANGE_388029", "TIME_AXIS_PASS_388030", "GADGET_STATE_CHANGE_388031", "GADGET_STATE_CHANGE_388032", "GADGET_CREATE_388033", "SELECT_OPTION_388034", "VARIABLE_CHANGE_388035", "VARIABLE_CHANGE_388036", "TIME_AXIS_PASS_388037", "GADGET_STATE_CHANGE_388038", "GADGET_STATE_CHANGE_388039", "GADGET_CREATE_388040", "QUEST_START_388042", "VARIABLE_CHANGE_388043", "VARIABLE_CHANGE_388044", "VARIABLE_CHANGE_388045", "TIME_AXIS_PASS_388046", "VARIABLE_CHANGE_388047" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "Gadget_Count", value = 0, no_refresh = true },
			{ config_id = 2, name = "Statue_Rotate1", value = 0, no_refresh = true },
			{ config_id = 3, name = "Statue_Rotated1", value = 0, no_refresh = true },
			{ config_id = 4, name = "Statue_Rotate2", value = 0, no_refresh = true },
			{ config_id = 5, name = "Statue_Rotated2", value = 0, no_refresh = true },
			{ config_id = 6, name = "Statue_Rotate3", value = 0, no_refresh = true },
			{ config_id = 7, name = "Statue_Rotated3", value = 0, no_refresh = true },
			{ config_id = 8, name = "Success", value = 0, no_refresh = true }
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 388001, state = 0 },
			{ config_id = 388002, state = 0 },
			{ config_id = 388003, state = 202 },
			{ config_id = 388004, state = 0 },
			{ config_id = 388005, state = 0 },
			{ config_id = 388006, state = 0 },
			{ config_id = 388007, state = 0 },
			{ config_id = 388008, state = 0 }
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
			{ config_id = 8, name = "Success", value = 0, no_refresh = true }
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_388009(context, evt)
	-- 判断是gadgetid 388001 option_id 31
	if 388001 ~= evt.param1 then
		return false	
	end
	
	if 31 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_388009(context, evt)
	-- 将本组内变量名为 "Statue_Rotated1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Statue_Rotated1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "Statue_Rotated1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Statue_Rotated1", 1, 133210389) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "Statue_Rotated1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Statue_Rotated1", 1, 133210391) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 创建标识为"OptionReset1"，时间节点为{2}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "OptionReset1", {2}, false)
	
	
	-- 删除指定group： 133210388 ；指定config：388001；物件身上指定option：31；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210388, 388001, 31) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_388010(context, evt)
	-- 检测config_id为388003的gadget是否从GadgetState.GearStop变为GadgetState.GearStart
	if 388003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.GearStop ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_388010(context, evt)
	-- 创建标识为"changestate"，时间节点为{1,5}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "changestate", {1,5}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_388011(context, evt)
	-- 检测config_id为388003的gadget是否从GadgetState.GearStart变为GadgetState.GearStop
	if 388003 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_388011(context, evt)
	-- 创建标识为"revivestate"，时间节点为{1,5}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "revivestate", {1,5}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_388012(context, evt)
	if evt.param1 ~= 1 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_388012(context, evt)
	-- 将configid为 388001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 388001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 388004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 388004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 388005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 388005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_388013(context, evt)
	if evt.param1 ~= 1 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_388013(context, evt)
	-- 将configid为 388001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 388001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 388004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 388004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 388005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 388005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_388014(context, evt)
	if 388003 ~= evt.param1 or GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_388014(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210388, 388003, {61}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_388015(context, evt)
	-- 判断是gadgetid 388003 option_id 61
	if 388003 ~= evt.param1 then
		return false	
	end
	
	if 61 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_388015(context, evt)
	-- 将configid为 388003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 388003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133210388 ；指定config：388003；物件身上指定option：61；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210388, 388003, 61) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_388016(context, evt)
	if evt.param1 ~= 2 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_388016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210388, 388003, {62}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_388017(context, evt)
	if evt.param1 ~= 2 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_388017(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210388, 388003, {61}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_388018(context, evt)
	-- 判断是gadgetid 388003 option_id 62
	if 388003 ~= evt.param1 then
		return false	
	end
	
	if 62 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_388018(context, evt)
	-- 将configid为 388003 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 388003, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133210388 ；指定config：388003；物件身上指定option：62；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210388, 388003, 62) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_388019(context, evt)
	if 388003 ~= evt.param1 or GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_388019(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210388, 388003, {62}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_388020(context, evt)
	-- 检测config_id为388003的gadget是否从GadgetState.Default变为GadgetState.GearStop
	if 388003 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_388020(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210388, 388003, {61}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_388021(context, evt)
	if 388001 ~= evt.param1 or GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_388021(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210388, 388001, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_388022(context, evt)
	-- 检测config_id为388001的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 388001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_388022(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210388, 388001, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_388023(context, evt)
	-- 检测config_id为388001的gadget是否从GadgetState.GearStart变为GadgetState.Default
	if 388001 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_388023(context, evt)
	-- 删除指定group： 133210388 ；指定config：388001；物件身上指定option：31；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210388, 388001, 31) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_388024(context, evt)
	if evt.param1 ~= 1 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_388024(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210388, 388001, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_388025(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Statue_Rotate1"为0
	if ScriptLib.GetGroupVariableValue(context, "Statue_Rotate1") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_388025(context, evt)
	-- 将configid为 388006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 388006, GadgetState.Default) then
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
function condition_EVENT_VARIABLE_CHANGE_388026(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Statue_Rotate1"为270
	if ScriptLib.GetGroupVariableValue(context, "Statue_Rotate1") ~= 270 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_388026(context, evt)
	-- 将configid为 388006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 388006, GadgetState.GearStart) then
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
function condition_EVENT_SELECT_OPTION_388027(context, evt)
	-- 判断是gadgetid 388004 option_id 31
	if 388004 ~= evt.param1 then
		return false	
	end
	
	if 31 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_388027(context, evt)
	-- 将本组内变量名为 "Statue_Rotated2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Statue_Rotated2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "Statue_Rotated2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Statue_Rotated2", 1, 133210389) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "Statue_Rotated2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Statue_Rotated2", 1, 133210391) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 创建标识为"OptionReset2"，时间节点为{2}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "OptionReset2", {2}, false)
	
	
	-- 删除指定group： 133210388 ；指定config：388004；物件身上指定option：31；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210388, 388004, 31) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_388028(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Statue_Rotate2"为270
	if ScriptLib.GetGroupVariableValue(context, "Statue_Rotate2") ~= 270 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_388028(context, evt)
	-- 将configid为 388007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 388007, GadgetState.GearStart) then
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
function condition_EVENT_VARIABLE_CHANGE_388029(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Statue_Rotate2"为0
	if ScriptLib.GetGroupVariableValue(context, "Statue_Rotate2") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_388029(context, evt)
	-- 将configid为 388007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 388007, GadgetState.Default) then
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
function condition_EVENT_TIME_AXIS_PASS_388030(context, evt)
	if evt.param1 ~= 1 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_388030(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210388, 388004, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_388031(context, evt)
	-- 检测config_id为388004的gadget是否从GadgetState.GearStart变为GadgetState.Default
	if 388004 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_388031(context, evt)
	-- 删除指定group： 133210388 ；指定config：388004；物件身上指定option：31；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210388, 388004, 31) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_388032(context, evt)
	-- 检测config_id为388004的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 388004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_388032(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210388, 388004, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_388033(context, evt)
	if 388004 ~= evt.param1 or GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_388033(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210388, 388004, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_388034(context, evt)
	-- 判断是gadgetid 388005 option_id 31
	if 388005 ~= evt.param1 then
		return false	
	end
	
	if 31 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_388034(context, evt)
	-- 将本组内变量名为 "Statue_Rotated3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Statue_Rotated3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "Statue_Rotated3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Statue_Rotated3", 1, 133210389) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "Statue_Rotated3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Statue_Rotated3", 1, 133210391) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 创建标识为"OptionReset3"，时间节点为{2}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "OptionReset3", {2}, false)
	
	
	-- 删除指定group： 133210388 ；指定config：388005；物件身上指定option：31；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210388, 388005, 31) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_388035(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Statue_Rotate3"为180
	if ScriptLib.GetGroupVariableValue(context, "Statue_Rotate3") ~= 180 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_388035(context, evt)
	-- 将configid为 388008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 388008, GadgetState.GearStart) then
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
function condition_EVENT_VARIABLE_CHANGE_388036(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Statue_Rotate3"为270
	if ScriptLib.GetGroupVariableValue(context, "Statue_Rotate3") ~= 270 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_388036(context, evt)
	-- 将configid为 388008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 388008, GadgetState.Default) then
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
function condition_EVENT_TIME_AXIS_PASS_388037(context, evt)
	if evt.param1 ~= 1 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_388037(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210388, 388005, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_388038(context, evt)
	-- 检测config_id为388005的gadget是否从GadgetState.GearStart变为GadgetState.Default
	if 388005 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_388038(context, evt)
	-- 删除指定group： 133210388 ；指定config：388005；物件身上指定option：31；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210388, 388005, 31) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_388039(context, evt)
	-- 检测config_id为388005的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 388005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_388039(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210388, 388005, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_388040(context, evt)
	if 388005 ~= evt.param1 or GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_388040(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210388, 388005, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_388041(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210388, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_388042(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210388, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_388043(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Gadget_Count"为3
	if ScriptLib.GetGroupVariableValue(context, "Gadget_Count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_388043(context, evt)
	-- 将configid为 388002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 388002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建标识为"setsuccess"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "setsuccess", {1}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_388044(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Gadget_Count"为2
	if ScriptLib.GetGroupVariableValue(context, "Gadget_Count") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_388044(context, evt)
	-- 将本组内变量名为 "Gadget_Count1" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Gadget_Count1", 0, 133210100) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将configid为 388002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 388002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_388045(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Success"为1
	if ScriptLib.GetGroupVariableValue(context, "Success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_388045(context, evt)
	-- 停止标识为"OptionReset1"的时间轴
	ScriptLib.EndTimeAxis(context, "OptionReset1")
	
	
	-- 停止标识为"OptionReset2"的时间轴
	ScriptLib.EndTimeAxis(context, "OptionReset2")
	
	
	-- 停止标识为"OptionReset3"的时间轴
	ScriptLib.EndTimeAxis(context, "OptionReset3")
	
	
	-- 删除指定group： 133210388 ；指定config：388001；物件身上指定option：31；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210388, 388001, 31) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
	end
	
	-- 删除指定group： 133210388 ；指定config：388004；物件身上指定option：31；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210388, 388004, 31) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
	end
	
	-- 删除指定group： 133210388 ；指定config：388005；物件身上指定option：31；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210388, 388005, 31) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
	end
	
	-- 删除指定group： 133210388 ；指定config：388003；物件身上指定option：61；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210388, 388003, 61) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
	end
	
	-- 删除指定group： 133210388 ；指定config：388003；物件身上指定option：62；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210388, 388003, 62) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
	end
	
		-- 将指定group的suiteIndex设为指定suite
	  ScriptLib.SetFlowSuite(context, 133210388, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_388046(context, evt)
	if evt.param1 ~= 1 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_388046(context, evt)
	-- 将本组内变量名为 "ActiveCount1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "ActiveCount1", 1, 133210514) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "Gadget_Count1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Gadget_Count1", 1, 133210100) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_388047(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Success"为2
	if ScriptLib.GetGroupVariableValue(context, "Success") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_388047(context, evt)
	-- 将configid为 388001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 388001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 388002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 388002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 388003 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 388003, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 388004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 388004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 388005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 388005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 388006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 388006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 388007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 388007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 388008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 388008, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V2_1/SeaGodStatue"