-- 基础信息
local base_info = {
	group_id = 133210390
}

-- DEFS_MISCS
local statueConfig =
{
    ["Statue_Rotated1"] = {config_id = 390001,valueName = "Statue_Rotate1"},
    ["Statue_Rotated2"] = {config_id = 390004,valueName = "Statue_Rotate2"},
    ["Statue_Rotated3"] = {config_id = 390005,valueName = "Statue_Rotate3"}
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
	[390001] = { config_id = 390001, gadget_id = 70360168, pos = { x = -3764.492, y = 149.425, z = -1084.525 }, rot = { x = 0.000, y = 54.438, z = 0.000 }, level = 30, persistent = true, area_id = 17 },
	[390002] = { config_id = 390002, gadget_id = 70290098, pos = { x = -3759.249, y = 147.254, z = -1091.851 }, rot = { x = 0.000, y = 234.438, z = 0.000 }, level = 30, persistent = true, area_id = 17 },
	[390003] = { config_id = 390003, gadget_id = 70360167, pos = { x = -3751.906, y = 149.425, z = -1086.618 }, rot = { x = 0.000, y = 234.438, z = 0.000 }, level = 30, state = GadgetState.GearStop, persistent = true, area_id = 17 },
	[390004] = { config_id = 390004, gadget_id = 70360187, pos = { x = -3754.021, y = 149.425, z = -1099.194 }, rot = { x = 0.000, y = 324.438, z = 0.000 }, level = 30, persistent = true, area_id = 17 },
	[390005] = { config_id = 390005, gadget_id = 70360188, pos = { x = -3766.605, y = 149.425, z = -1097.087 }, rot = { x = 0.000, y = 144.438, z = 0.000 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 17 },
	[390006] = { config_id = 390006, gadget_id = 70290099, pos = { x = -3759.249, y = 147.254, z = -1091.851 }, rot = { x = 0.000, y = 324.438, z = 0.000 }, level = 30, area_id = 17 },
	[390007] = { config_id = 390007, gadget_id = 70290099, pos = { x = -3759.249, y = 147.254, z = -1091.851 }, rot = { x = 0.000, y = 144.438, z = 0.000 }, level = 30, area_id = 17 },
	[390008] = { config_id = 390008, gadget_id = 70290099, pos = { x = -3759.249, y = 147.254, z = -1091.851 }, rot = { x = 0.000, y = 234.438, z = 0.000 }, level = 30, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 121001旋转
	{ config_id = 1390009, name = "SELECT_OPTION_390009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_390009", action = "action_EVENT_SELECT_OPTION_390009", trigger_count = 0 },
	-- 激活尊像，1秒后做改变，5秒后可关闭
	{ config_id = 1390010, name = "GADGET_STATE_CHANGE_390010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "390003", condition = "condition_EVENT_GADGET_STATE_CHANGE_390010", action = "action_EVENT_GADGET_STATE_CHANGE_390010", trigger_count = 0 },
	-- 关闭尊像，1秒后做改变，5秒后可关闭
	{ config_id = 1390011, name = "GADGET_STATE_CHANGE_390011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "390003", condition = "condition_EVENT_GADGET_STATE_CHANGE_390011", action = "action_EVENT_GADGET_STATE_CHANGE_390011", trigger_count = 0 },
	-- 激活后1秒执行，实际变化
	{ config_id = 1390012, name = "TIME_AXIS_PASS_390012", event = EventType.EVENT_TIME_AXIS_PASS, source = "changestate", condition = "condition_EVENT_TIME_AXIS_PASS_390012", action = "action_EVENT_TIME_AXIS_PASS_390012", trigger_count = 0 },
	-- 关闭后1秒执行，实际变化
	{ config_id = 1390013, name = "TIME_AXIS_PASS_390013", event = EventType.EVENT_TIME_AXIS_PASS, source = "revivestate", condition = "condition_EVENT_TIME_AXIS_PASS_390013", action = "action_EVENT_TIME_AXIS_PASS_390013", trigger_count = 0 },
	-- 尊像加载，且是关闭时
	{ config_id = 1390014, name = "GADGET_CREATE_390014", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_390014", action = "action_EVENT_GADGET_CREATE_390014", trigger_count = 0 },
	-- 点击激活时，改状态
	{ config_id = 1390015, name = "SELECT_OPTION_390015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_390015", action = "action_EVENT_SELECT_OPTION_390015", trigger_count = 0 },
	-- 激活后5秒执行，加关闭按钮
	{ config_id = 1390016, name = "TIME_AXIS_PASS_390016", event = EventType.EVENT_TIME_AXIS_PASS, source = "changestate", condition = "condition_EVENT_TIME_AXIS_PASS_390016", action = "action_EVENT_TIME_AXIS_PASS_390016", trigger_count = 0 },
	-- 关闭后5秒执行，加激活按钮
	{ config_id = 1390017, name = "TIME_AXIS_PASS_390017", event = EventType.EVENT_TIME_AXIS_PASS, source = "revivestate", condition = "condition_EVENT_TIME_AXIS_PASS_390017", action = "action_EVENT_TIME_AXIS_PASS_390017", trigger_count = 0 },
	-- 点击关闭时，改状态
	{ config_id = 1390018, name = "SELECT_OPTION_390018", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_390018", action = "action_EVENT_SELECT_OPTION_390018", trigger_count = 0 },
	-- 尊像加载，且是开启时
	{ config_id = 1390019, name = "GADGET_CREATE_390019", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_390019", action = "action_EVENT_GADGET_CREATE_390019", trigger_count = 0 },
	-- 尊像从锁定变为关闭时
	{ config_id = 1390020, name = "GADGET_STATE_CHANGE_390020", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "390003", condition = "condition_EVENT_GADGET_STATE_CHANGE_390020", action = "action_EVENT_GADGET_STATE_CHANGE_390020", trigger_count = 0 },
	-- 121001创建加option
	{ config_id = 1390021, name = "GADGET_CREATE_390021", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_390021", action = "action_EVENT_GADGET_CREATE_390021", trigger_count = 0 },
	-- 121001变为gearstart时
	{ config_id = 1390022, name = "GADGET_STATE_CHANGE_390022", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "390001", condition = "condition_EVENT_GADGET_STATE_CHANGE_390022", action = "action_EVENT_GADGET_STATE_CHANGE_390022", trigger_count = 0 },
	-- 121001变为default时
	{ config_id = 1390023, name = "GADGET_STATE_CHANGE_390023", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "390001", condition = "condition_EVENT_GADGET_STATE_CHANGE_390023", action = "action_EVENT_GADGET_STATE_CHANGE_390023", trigger_count = 0 },
	-- 旋转后2秒重新加按钮
	{ config_id = 1390024, name = "TIME_AXIS_PASS_390024", event = EventType.EVENT_TIME_AXIS_PASS, source = "OptionReset1", condition = "condition_EVENT_TIME_AXIS_PASS_390024", action = "action_EVENT_TIME_AXIS_PASS_390024", trigger_count = 0 },
	-- 121001判断方向错误
	{ config_id = 1390025, name = "VARIABLE_CHANGE_390025", event = EventType.EVENT_VARIABLE_CHANGE, source = "Statue_Rotate1", condition = "condition_EVENT_VARIABLE_CHANGE_390025", action = "action_EVENT_VARIABLE_CHANGE_390025", trigger_count = 0 },
	-- 121001判断方向正确
	{ config_id = 1390026, name = "VARIABLE_CHANGE_390026", event = EventType.EVENT_VARIABLE_CHANGE, source = "Statue_Rotate1", condition = "condition_EVENT_VARIABLE_CHANGE_390026", action = "action_EVENT_VARIABLE_CHANGE_390026", trigger_count = 0 },
	-- 121004旋转
	{ config_id = 1390027, name = "SELECT_OPTION_390027", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_390027", action = "action_EVENT_SELECT_OPTION_390027", trigger_count = 0 },
	-- 121004判断方向正确
	{ config_id = 1390028, name = "VARIABLE_CHANGE_390028", event = EventType.EVENT_VARIABLE_CHANGE, source = "Statue_Rotate2", condition = "condition_EVENT_VARIABLE_CHANGE_390028", action = "action_EVENT_VARIABLE_CHANGE_390028", trigger_count = 0 },
	-- 121004判断方向错误
	{ config_id = 1390029, name = "VARIABLE_CHANGE_390029", event = EventType.EVENT_VARIABLE_CHANGE, source = "Statue_Rotate2", condition = "condition_EVENT_VARIABLE_CHANGE_390029", action = "action_EVENT_VARIABLE_CHANGE_390029", trigger_count = 0 },
	-- 旋转后2秒重新加按钮
	{ config_id = 1390030, name = "TIME_AXIS_PASS_390030", event = EventType.EVENT_TIME_AXIS_PASS, source = "OptionReset2", condition = "condition_EVENT_TIME_AXIS_PASS_390030", action = "action_EVENT_TIME_AXIS_PASS_390030", trigger_count = 0 },
	-- 121004变为default时
	{ config_id = 1390031, name = "GADGET_STATE_CHANGE_390031", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "390004", condition = "condition_EVENT_GADGET_STATE_CHANGE_390031", action = "action_EVENT_GADGET_STATE_CHANGE_390031", trigger_count = 0 },
	-- 121004变为gearstart时
	{ config_id = 1390032, name = "GADGET_STATE_CHANGE_390032", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "390004", condition = "condition_EVENT_GADGET_STATE_CHANGE_390032", action = "action_EVENT_GADGET_STATE_CHANGE_390032", trigger_count = 0 },
	-- 121004创建加option
	{ config_id = 1390033, name = "GADGET_CREATE_390033", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_390033", action = "action_EVENT_GADGET_CREATE_390033", trigger_count = 0 },
	-- 121005旋转
	{ config_id = 1390034, name = "SELECT_OPTION_390034", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_390034", action = "action_EVENT_SELECT_OPTION_390034", trigger_count = 0 },
	-- 121005判断方向正确
	{ config_id = 1390035, name = "VARIABLE_CHANGE_390035", event = EventType.EVENT_VARIABLE_CHANGE, source = "Statue_Rotate3", condition = "condition_EVENT_VARIABLE_CHANGE_390035", action = "action_EVENT_VARIABLE_CHANGE_390035", trigger_count = 0 },
	-- 121005判断方向错误
	{ config_id = 1390036, name = "VARIABLE_CHANGE_390036", event = EventType.EVENT_VARIABLE_CHANGE, source = "Statue_Rotate3", condition = "condition_EVENT_VARIABLE_CHANGE_390036", action = "action_EVENT_VARIABLE_CHANGE_390036", trigger_count = 0 },
	-- 旋转后2秒重新加按钮
	{ config_id = 1390037, name = "TIME_AXIS_PASS_390037", event = EventType.EVENT_TIME_AXIS_PASS, source = "OptionReset3", condition = "condition_EVENT_TIME_AXIS_PASS_390037", action = "action_EVENT_TIME_AXIS_PASS_390037", trigger_count = 0 },
	-- 121005变为default时
	{ config_id = 1390038, name = "GADGET_STATE_CHANGE_390038", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "390005", condition = "condition_EVENT_GADGET_STATE_CHANGE_390038", action = "action_EVENT_GADGET_STATE_CHANGE_390038", trigger_count = 0 },
	-- 121005变为gearstart时
	{ config_id = 1390039, name = "GADGET_STATE_CHANGE_390039", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "390005", condition = "condition_EVENT_GADGET_STATE_CHANGE_390039", action = "action_EVENT_GADGET_STATE_CHANGE_390039", trigger_count = 0 },
	-- 121005创建加option
	{ config_id = 1390040, name = "GADGET_CREATE_390040", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_390040", action = "action_EVENT_GADGET_CREATE_390040", trigger_count = 0 },
	{ config_id = 1390041, name = "QUEST_START_390041", event = EventType.EVENT_QUEST_START, source = "7214904", condition = "", action = "action_EVENT_QUEST_START_390041", trigger_count = 0 },
	{ config_id = 1390042, name = "QUEST_START_390042", event = EventType.EVENT_QUEST_START, source = "7214905", condition = "", action = "action_EVENT_QUEST_START_390042", trigger_count = 0 },
	-- 正确数量为3时
	{ config_id = 1390043, name = "VARIABLE_CHANGE_390043", event = EventType.EVENT_VARIABLE_CHANGE, source = "Gadget_Count", condition = "condition_EVENT_VARIABLE_CHANGE_390043", action = "action_EVENT_VARIABLE_CHANGE_390043", trigger_count = 0 },
	-- 正确数量不为3时
	{ config_id = 1390044, name = "VARIABLE_CHANGE_390044", event = EventType.EVENT_VARIABLE_CHANGE, source = "Gadget_Count", condition = "condition_EVENT_VARIABLE_CHANGE_390044", action = "action_EVENT_VARIABLE_CHANGE_390044", trigger_count = 0 },
	-- 玩法完成时
	{ config_id = 1390045, name = "VARIABLE_CHANGE_390045", event = EventType.EVENT_VARIABLE_CHANGE, source = "Success", condition = "condition_EVENT_VARIABLE_CHANGE_390045", action = "action_EVENT_VARIABLE_CHANGE_390045" },
	{ config_id = 1390046, name = "TIME_AXIS_PASS_390046", event = EventType.EVENT_TIME_AXIS_PASS, source = "setsuccess", condition = "condition_EVENT_TIME_AXIS_PASS_390046", action = "action_EVENT_TIME_AXIS_PASS_390046", trigger_count = 0 },
	-- CS播放完时
	{ config_id = 1390047, name = "VARIABLE_CHANGE_390047", event = EventType.EVENT_VARIABLE_CHANGE, source = "Success", condition = "condition_EVENT_VARIABLE_CHANGE_390047", action = "action_EVENT_VARIABLE_CHANGE_390047" }
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
			{ config_id = 390001, state = 0 },
			{ config_id = 390002, state = 0 },
			{ config_id = 390003, state = 0 },
			{ config_id = 390004, state = 0 },
			{ config_id = 390005, state = 0 },
			{ config_id = 390006, state = 0 },
			{ config_id = 390007, state = 0 },
			{ config_id = 390008, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "QUEST_START_390041" },
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
			{ config_id = 390001, state = 201 },
			{ config_id = 390002, state = 0 },
			{ config_id = 390003, state = 202 },
			{ config_id = 390004, state = 201 },
			{ config_id = 390005, state = 201 },
			{ config_id = 390006, state = 0 },
			{ config_id = 390007, state = 0 },
			{ config_id = 390008, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "SELECT_OPTION_390009", "GADGET_STATE_CHANGE_390010", "GADGET_STATE_CHANGE_390011", "TIME_AXIS_PASS_390012", "TIME_AXIS_PASS_390013", "GADGET_CREATE_390014", "SELECT_OPTION_390015", "TIME_AXIS_PASS_390016", "TIME_AXIS_PASS_390017", "SELECT_OPTION_390018", "GADGET_CREATE_390019", "GADGET_STATE_CHANGE_390020", "GADGET_CREATE_390021", "GADGET_STATE_CHANGE_390022", "GADGET_STATE_CHANGE_390023", "TIME_AXIS_PASS_390024", "VARIABLE_CHANGE_390025", "VARIABLE_CHANGE_390026", "SELECT_OPTION_390027", "VARIABLE_CHANGE_390028", "VARIABLE_CHANGE_390029", "TIME_AXIS_PASS_390030", "GADGET_STATE_CHANGE_390031", "GADGET_STATE_CHANGE_390032", "GADGET_CREATE_390033", "SELECT_OPTION_390034", "VARIABLE_CHANGE_390035", "VARIABLE_CHANGE_390036", "TIME_AXIS_PASS_390037", "GADGET_STATE_CHANGE_390038", "GADGET_STATE_CHANGE_390039", "GADGET_CREATE_390040", "QUEST_START_390042", "VARIABLE_CHANGE_390043", "VARIABLE_CHANGE_390044", "VARIABLE_CHANGE_390045", "TIME_AXIS_PASS_390046", "VARIABLE_CHANGE_390047" },
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
			{ config_id = 390001, state = 0 },
			{ config_id = 390002, state = 0 },
			{ config_id = 390003, state = 202 },
			{ config_id = 390004, state = 0 },
			{ config_id = 390005, state = 0 },
			{ config_id = 390006, state = 0 },
			{ config_id = 390007, state = 0 },
			{ config_id = 390008, state = 0 }
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
function condition_EVENT_SELECT_OPTION_390009(context, evt)
	-- 判断是gadgetid 390001 option_id 31
	if 390001 ~= evt.param1 then
		return false	
	end
	
	if 31 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_390009(context, evt)
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
	
	
	-- 删除指定group： 133210390 ；指定config：390001；物件身上指定option：31；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210390, 390001, 31) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_390010(context, evt)
	-- 检测config_id为390003的gadget是否从GadgetState.GearStop变为GadgetState.GearStart
	if 390003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.GearStop ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_390010(context, evt)
	-- 创建标识为"changestate"，时间节点为{1,5}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "changestate", {1,5}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_390011(context, evt)
	-- 检测config_id为390003的gadget是否从GadgetState.GearStart变为GadgetState.GearStop
	if 390003 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_390011(context, evt)
	-- 创建标识为"revivestate"，时间节点为{1,5}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "revivestate", {1,5}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_390012(context, evt)
	if evt.param1 ~= 1 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_390012(context, evt)
	-- 将configid为 390001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 390001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 390004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 390004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 390005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 390005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_390013(context, evt)
	if evt.param1 ~= 1 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_390013(context, evt)
	-- 将configid为 390001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 390001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 390004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 390004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 390005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 390005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_390014(context, evt)
	if 390003 ~= evt.param1 or GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_390014(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210390, 390003, {61}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_390015(context, evt)
	-- 判断是gadgetid 390003 option_id 61
	if 390003 ~= evt.param1 then
		return false	
	end
	
	if 61 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_390015(context, evt)
	-- 将configid为 390003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 390003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133210390 ；指定config：390003；物件身上指定option：61；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210390, 390003, 61) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_390016(context, evt)
	if evt.param1 ~= 2 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_390016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210390, 390003, {62}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_390017(context, evt)
	if evt.param1 ~= 2 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_390017(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210390, 390003, {61}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_390018(context, evt)
	-- 判断是gadgetid 390003 option_id 62
	if 390003 ~= evt.param1 then
		return false	
	end
	
	if 62 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_390018(context, evt)
	-- 将configid为 390003 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 390003, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133210390 ；指定config：390003；物件身上指定option：62；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210390, 390003, 62) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_390019(context, evt)
	if 390003 ~= evt.param1 or GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_390019(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210390, 390003, {62}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_390020(context, evt)
	-- 检测config_id为390003的gadget是否从GadgetState.Default变为GadgetState.GearStop
	if 390003 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_390020(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210390, 390003, {61}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_390021(context, evt)
	if 390001 ~= evt.param1 or GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_390021(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210390, 390001, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_390022(context, evt)
	-- 检测config_id为390001的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 390001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_390022(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210390, 390001, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_390023(context, evt)
	-- 检测config_id为390001的gadget是否从GadgetState.GearStart变为GadgetState.Default
	if 390001 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_390023(context, evt)
	-- 删除指定group： 133210390 ；指定config：390001；物件身上指定option：31；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210390, 390001, 31) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_390024(context, evt)
	if evt.param1 ~= 1 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_390024(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210390, 390001, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_390025(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Statue_Rotate1"为180
	if ScriptLib.GetGroupVariableValue(context, "Statue_Rotate1") ~= 180 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_390025(context, evt)
	-- 将configid为 390006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 390006, GadgetState.Default) then
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
function condition_EVENT_VARIABLE_CHANGE_390026(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Statue_Rotate1"为90
	if ScriptLib.GetGroupVariableValue(context, "Statue_Rotate1") ~= 90 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_390026(context, evt)
	-- 将configid为 390006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 390006, GadgetState.GearStart) then
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
function condition_EVENT_SELECT_OPTION_390027(context, evt)
	-- 判断是gadgetid 390004 option_id 31
	if 390004 ~= evt.param1 then
		return false	
	end
	
	if 31 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_390027(context, evt)
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
	
	
	-- 删除指定group： 133210390 ；指定config：390004；物件身上指定option：31；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210390, 390004, 31) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_390028(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Statue_Rotate2"为270
	if ScriptLib.GetGroupVariableValue(context, "Statue_Rotate2") ~= 270 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_390028(context, evt)
	-- 将configid为 390007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 390007, GadgetState.GearStart) then
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
function condition_EVENT_VARIABLE_CHANGE_390029(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Statue_Rotate2"为0
	if ScriptLib.GetGroupVariableValue(context, "Statue_Rotate2") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_390029(context, evt)
	-- 将configid为 390007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 390007, GadgetState.Default) then
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
function condition_EVENT_TIME_AXIS_PASS_390030(context, evt)
	if evt.param1 ~= 1 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_390030(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210390, 390004, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_390031(context, evt)
	-- 检测config_id为390004的gadget是否从GadgetState.GearStart变为GadgetState.Default
	if 390004 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_390031(context, evt)
	-- 删除指定group： 133210390 ；指定config：390004；物件身上指定option：31；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210390, 390004, 31) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_390032(context, evt)
	-- 检测config_id为390004的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 390004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_390032(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210390, 390004, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_390033(context, evt)
	if 390004 ~= evt.param1 or GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_390033(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210390, 390004, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_390034(context, evt)
	-- 判断是gadgetid 390005 option_id 31
	if 390005 ~= evt.param1 then
		return false	
	end
	
	if 31 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_390034(context, evt)
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
	
	
	-- 删除指定group： 133210390 ；指定config：390005；物件身上指定option：31；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210390, 390005, 31) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_390035(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Statue_Rotate3"为180
	if ScriptLib.GetGroupVariableValue(context, "Statue_Rotate3") ~= 180 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_390035(context, evt)
	-- 将configid为 390008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 390008, GadgetState.GearStart) then
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
function condition_EVENT_VARIABLE_CHANGE_390036(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Statue_Rotate3"为270
	if ScriptLib.GetGroupVariableValue(context, "Statue_Rotate3") ~= 270 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_390036(context, evt)
	-- 将configid为 390008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 390008, GadgetState.Default) then
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
function condition_EVENT_TIME_AXIS_PASS_390037(context, evt)
	if evt.param1 ~= 1 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_390037(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210390, 390005, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_390038(context, evt)
	-- 检测config_id为390005的gadget是否从GadgetState.GearStart变为GadgetState.Default
	if 390005 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_390038(context, evt)
	-- 删除指定group： 133210390 ；指定config：390005；物件身上指定option：31；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210390, 390005, 31) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_390039(context, evt)
	-- 检测config_id为390005的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 390005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_390039(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210390, 390005, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_390040(context, evt)
	if 390005 ~= evt.param1 or GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_390040(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210390, 390005, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_390041(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210390, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_390042(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210390, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_390043(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Gadget_Count"为3
	if ScriptLib.GetGroupVariableValue(context, "Gadget_Count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_390043(context, evt)
	-- 将configid为 390002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 390002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建标识为"setsuccess"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "setsuccess", {1}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_390044(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Gadget_Count"为2
	if ScriptLib.GetGroupVariableValue(context, "Gadget_Count") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_390044(context, evt)
	-- 将本组内变量名为 "Gadget_Count3" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Gadget_Count3", 0, 133210100) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将configid为 390002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 390002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_390045(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Success"为1
	if ScriptLib.GetGroupVariableValue(context, "Success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_390045(context, evt)
	-- 停止标识为"OptionReset1"的时间轴
	ScriptLib.EndTimeAxis(context, "OptionReset1")
	
	
	-- 停止标识为"OptionReset2"的时间轴
	ScriptLib.EndTimeAxis(context, "OptionReset2")
	
	
	-- 停止标识为"OptionReset3"的时间轴
	ScriptLib.EndTimeAxis(context, "OptionReset3")
	
	
	-- 删除指定group： 133210390 ；指定config：390001；物件身上指定option：31；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210390, 390001, 31) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
	end
	
	-- 删除指定group： 133210390 ；指定config：390004；物件身上指定option：31；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210390, 390004, 31) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
	end
	
	-- 删除指定group： 133210390 ；指定config：390005；物件身上指定option：31；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210390, 390005, 31) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
	end
	
	-- 删除指定group： 133210390 ；指定config：390003；物件身上指定option：61；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210390, 390003, 61) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
	end
	
	-- 删除指定group： 133210390 ；指定config：390003；物件身上指定option：62；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210390, 390003, 62) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
	end
	
		-- 将指定group的suiteIndex设为指定suite
	  ScriptLib.SetFlowSuite(context, 133210390, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_390046(context, evt)
	if evt.param1 ~= 1 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_390046(context, evt)
	-- 将本组内变量名为 "ActiveCount3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "ActiveCount3", 1, 133210514) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "Gadget_Count3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Gadget_Count3", 1, 133210100) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_390047(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Success"为2
	if ScriptLib.GetGroupVariableValue(context, "Success") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_390047(context, evt)
	-- 将configid为 390001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 390001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 390002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 390002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 390003 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 390003, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 390004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 390004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 390005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 390005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 390006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 390006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 390007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 390007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 390008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 390008, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V2_1/SeaGodStatue"