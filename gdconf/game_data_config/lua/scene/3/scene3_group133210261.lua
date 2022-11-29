-- 基础信息
local base_info = {
	group_id = 133210261
}

-- DEFS_MISCS
local statueConfig =
{
    ["Statue_Rotated1"] = {config_id = 261001,valueName = "Statue_Rotate1"},
    ["Statue_Rotated2"] = {config_id = 261004,valueName = "Statue_Rotate2"},
    ["Statue_Rotated3"] = {config_id = 261005,valueName = "Statue_Rotate3"}
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
	[261001] = { config_id = 261001, gadget_id = 70360168, pos = { x = -3499.440, y = 202.939, z = -816.980 }, rot = { x = 0.000, y = 154.570, z = 0.000 }, level = 30, persistent = true, area_id = 17 },
	[261002] = { config_id = 261002, gadget_id = 70290098, pos = { x = -3491.311, y = 200.768, z = -813.103 }, rot = { x = 0.000, y = 154.570, z = 0.000 }, level = 30, persistent = true, area_id = 17 },
	[261003] = { config_id = 261003, gadget_id = 70360167, pos = { x = -3495.181, y = 202.939, z = -804.964 }, rot = { x = 0.000, y = 154.570, z = 0.000 }, level = 30, state = GadgetState.GearStop, persistent = true, area_id = 17 },
	[261004] = { config_id = 261004, gadget_id = 70360187, pos = { x = -3483.171, y = 202.939, z = -809.232 }, rot = { x = 0.000, y = 64.570, z = 0.000 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 17 },
	[261005] = { config_id = 261005, gadget_id = 70360188, pos = { x = -3487.476, y = 202.939, z = -821.251 }, rot = { x = 0.000, y = 64.570, z = 0.000 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 17 },
	[261006] = { config_id = 261006, gadget_id = 70290099, pos = { x = -3491.311, y = 200.768, z = -813.103 }, rot = { x = 0.000, y = 244.570, z = 0.000 }, level = 30, area_id = 17 },
	[261007] = { config_id = 261007, gadget_id = 70290099, pos = { x = -3491.311, y = 200.768, z = -813.103 }, rot = { x = 0.000, y = 64.570, z = 0.000 }, level = 30, area_id = 17 },
	[261008] = { config_id = 261008, gadget_id = 70290099, pos = { x = -3491.311, y = 200.768, z = -813.103 }, rot = { x = 0.000, y = 154.570, z = 0.000 }, level = 30, area_id = 17 }
}

-- 区域
regions = {
	[261050] = { config_id = 261050, shape = RegionShape.SPHERE, radius = 5, pos = { x = -3495.181, y = 202.939, z = -804.964 }, area_id = 17 }
}

-- 触发器
triggers = {
	-- 121001旋转
	{ config_id = 1261009, name = "SELECT_OPTION_261009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_261009", action = "action_EVENT_SELECT_OPTION_261009", trigger_count = 0 },
	-- 激活尊像，1秒后做改变，5秒后可关闭
	{ config_id = 1261010, name = "GADGET_STATE_CHANGE_261010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "261003", condition = "condition_EVENT_GADGET_STATE_CHANGE_261010", action = "action_EVENT_GADGET_STATE_CHANGE_261010", trigger_count = 0 },
	-- 关闭尊像，1秒后做改变，5秒后可关闭
	{ config_id = 1261011, name = "GADGET_STATE_CHANGE_261011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "261003", condition = "condition_EVENT_GADGET_STATE_CHANGE_261011", action = "action_EVENT_GADGET_STATE_CHANGE_261011", trigger_count = 0 },
	-- 激活后1秒执行，实际变化
	{ config_id = 1261012, name = "TIME_AXIS_PASS_261012", event = EventType.EVENT_TIME_AXIS_PASS, source = "changestate", condition = "condition_EVENT_TIME_AXIS_PASS_261012", action = "action_EVENT_TIME_AXIS_PASS_261012", trigger_count = 0 },
	-- 关闭后1秒执行，实际变化
	{ config_id = 1261013, name = "TIME_AXIS_PASS_261013", event = EventType.EVENT_TIME_AXIS_PASS, source = "revivestate", condition = "condition_EVENT_TIME_AXIS_PASS_261013", action = "action_EVENT_TIME_AXIS_PASS_261013", trigger_count = 0 },
	-- 尊像加载，且是关闭时
	{ config_id = 1261014, name = "GADGET_CREATE_261014", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_261014", action = "action_EVENT_GADGET_CREATE_261014", trigger_count = 0 },
	-- 点击激活时，改状态
	{ config_id = 1261015, name = "SELECT_OPTION_261015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_261015", action = "action_EVENT_SELECT_OPTION_261015", trigger_count = 0 },
	-- 激活后5秒执行，加关闭按钮
	{ config_id = 1261016, name = "TIME_AXIS_PASS_261016", event = EventType.EVENT_TIME_AXIS_PASS, source = "changestate", condition = "condition_EVENT_TIME_AXIS_PASS_261016", action = "action_EVENT_TIME_AXIS_PASS_261016", trigger_count = 0 },
	-- 关闭后5秒执行，加激活按钮
	{ config_id = 1261017, name = "TIME_AXIS_PASS_261017", event = EventType.EVENT_TIME_AXIS_PASS, source = "revivestate", condition = "condition_EVENT_TIME_AXIS_PASS_261017", action = "action_EVENT_TIME_AXIS_PASS_261017", trigger_count = 0 },
	-- 点击关闭时，改状态
	{ config_id = 1261018, name = "SELECT_OPTION_261018", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_261018", action = "action_EVENT_SELECT_OPTION_261018", trigger_count = 0 },
	-- 尊像加载，且是开启时
	{ config_id = 1261019, name = "GADGET_CREATE_261019", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_261019", action = "action_EVENT_GADGET_CREATE_261019", trigger_count = 0 },
	-- 尊像从锁定变为关闭时
	{ config_id = 1261020, name = "GADGET_STATE_CHANGE_261020", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "261003", condition = "condition_EVENT_GADGET_STATE_CHANGE_261020", action = "action_EVENT_GADGET_STATE_CHANGE_261020", trigger_count = 0 },
	-- 121001创建加option
	{ config_id = 1261021, name = "GADGET_CREATE_261021", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_261021", action = "action_EVENT_GADGET_CREATE_261021", trigger_count = 0 },
	-- 121001变为gearstart时
	{ config_id = 1261022, name = "GADGET_STATE_CHANGE_261022", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "261001", condition = "condition_EVENT_GADGET_STATE_CHANGE_261022", action = "action_EVENT_GADGET_STATE_CHANGE_261022", trigger_count = 0 },
	-- 121001变为default时
	{ config_id = 1261023, name = "GADGET_STATE_CHANGE_261023", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "261001", condition = "condition_EVENT_GADGET_STATE_CHANGE_261023", action = "action_EVENT_GADGET_STATE_CHANGE_261023", trigger_count = 0 },
	-- 旋转后2秒重新加按钮
	{ config_id = 1261024, name = "TIME_AXIS_PASS_261024", event = EventType.EVENT_TIME_AXIS_PASS, source = "OptionReset1", condition = "condition_EVENT_TIME_AXIS_PASS_261024", action = "action_EVENT_TIME_AXIS_PASS_261024", trigger_count = 0 },
	-- 121001判断方向错误
	{ config_id = 1261025, name = "VARIABLE_CHANGE_261025", event = EventType.EVENT_VARIABLE_CHANGE, source = "Statue_Rotate1", condition = "condition_EVENT_VARIABLE_CHANGE_261025", action = "action_EVENT_VARIABLE_CHANGE_261025", trigger_count = 0 },
	-- 121001判断方向正确
	{ config_id = 1261026, name = "VARIABLE_CHANGE_261026", event = EventType.EVENT_VARIABLE_CHANGE, source = "Statue_Rotate1", condition = "condition_EVENT_VARIABLE_CHANGE_261026", action = "action_EVENT_VARIABLE_CHANGE_261026", trigger_count = 0 },
	-- 121004旋转
	{ config_id = 1261027, name = "SELECT_OPTION_261027", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_261027", action = "action_EVENT_SELECT_OPTION_261027", trigger_count = 0 },
	-- 121004判断方向正确
	{ config_id = 1261028, name = "VARIABLE_CHANGE_261028", event = EventType.EVENT_VARIABLE_CHANGE, source = "Statue_Rotate2", condition = "condition_EVENT_VARIABLE_CHANGE_261028", action = "action_EVENT_VARIABLE_CHANGE_261028", trigger_count = 0 },
	-- 121004判断方向错误
	{ config_id = 1261029, name = "VARIABLE_CHANGE_261029", event = EventType.EVENT_VARIABLE_CHANGE, source = "Statue_Rotate2", condition = "condition_EVENT_VARIABLE_CHANGE_261029", action = "action_EVENT_VARIABLE_CHANGE_261029", trigger_count = 0 },
	-- 旋转后2秒重新加按钮
	{ config_id = 1261030, name = "TIME_AXIS_PASS_261030", event = EventType.EVENT_TIME_AXIS_PASS, source = "OptionReset2", condition = "condition_EVENT_TIME_AXIS_PASS_261030", action = "action_EVENT_TIME_AXIS_PASS_261030", trigger_count = 0 },
	-- 121004变为default时
	{ config_id = 1261031, name = "GADGET_STATE_CHANGE_261031", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "261004", condition = "condition_EVENT_GADGET_STATE_CHANGE_261031", action = "action_EVENT_GADGET_STATE_CHANGE_261031", trigger_count = 0 },
	-- 121004变为gearstart时
	{ config_id = 1261032, name = "GADGET_STATE_CHANGE_261032", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "261004", condition = "condition_EVENT_GADGET_STATE_CHANGE_261032", action = "action_EVENT_GADGET_STATE_CHANGE_261032", trigger_count = 0 },
	-- 121004创建加option
	{ config_id = 1261033, name = "GADGET_CREATE_261033", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_261033", action = "action_EVENT_GADGET_CREATE_261033", trigger_count = 0 },
	-- 121005旋转
	{ config_id = 1261034, name = "SELECT_OPTION_261034", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_261034", action = "action_EVENT_SELECT_OPTION_261034", trigger_count = 0 },
	-- 121005判断方向正确
	{ config_id = 1261035, name = "VARIABLE_CHANGE_261035", event = EventType.EVENT_VARIABLE_CHANGE, source = "Statue_Rotate3", condition = "condition_EVENT_VARIABLE_CHANGE_261035", action = "action_EVENT_VARIABLE_CHANGE_261035", trigger_count = 0 },
	-- 121005判断方向错误
	{ config_id = 1261036, name = "VARIABLE_CHANGE_261036", event = EventType.EVENT_VARIABLE_CHANGE, source = "Statue_Rotate3", condition = "condition_EVENT_VARIABLE_CHANGE_261036", action = "action_EVENT_VARIABLE_CHANGE_261036", trigger_count = 0 },
	-- 旋转后2秒重新加按钮
	{ config_id = 1261037, name = "TIME_AXIS_PASS_261037", event = EventType.EVENT_TIME_AXIS_PASS, source = "OptionReset3", condition = "condition_EVENT_TIME_AXIS_PASS_261037", action = "action_EVENT_TIME_AXIS_PASS_261037", trigger_count = 0 },
	-- 121005变为default时
	{ config_id = 1261038, name = "GADGET_STATE_CHANGE_261038", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "261005", condition = "condition_EVENT_GADGET_STATE_CHANGE_261038", action = "action_EVENT_GADGET_STATE_CHANGE_261038", trigger_count = 0 },
	-- 121005变为gearstart时
	{ config_id = 1261039, name = "GADGET_STATE_CHANGE_261039", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "261005", condition = "condition_EVENT_GADGET_STATE_CHANGE_261039", action = "action_EVENT_GADGET_STATE_CHANGE_261039", trigger_count = 0 },
	-- 121005创建加option
	{ config_id = 1261040, name = "GADGET_CREATE_261040", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_261040", action = "action_EVENT_GADGET_CREATE_261040", trigger_count = 0 },
	-- 正确数量为3时
	{ config_id = 1261041, name = "VARIABLE_CHANGE_261041", event = EventType.EVENT_VARIABLE_CHANGE, source = "Gadget_Count", condition = "condition_EVENT_VARIABLE_CHANGE_261041", action = "action_EVENT_VARIABLE_CHANGE_261041", trigger_count = 0 },
	-- 正确数量不为3时
	{ config_id = 1261042, name = "VARIABLE_CHANGE_261042", event = EventType.EVENT_VARIABLE_CHANGE, source = "Gadget_Count", condition = "condition_EVENT_VARIABLE_CHANGE_261042", action = "action_EVENT_VARIABLE_CHANGE_261042", trigger_count = 0 },
	{ config_id = 1261043, name = "QUEST_START_261043", event = EventType.EVENT_QUEST_START, source = "7214703", condition = "", action = "action_EVENT_QUEST_START_261043", trigger_count = 0 },
	{ config_id = 1261044, name = "QUEST_START_261044", event = EventType.EVENT_QUEST_START, source = "7214704", condition = "", action = "action_EVENT_QUEST_START_261044", trigger_count = 0 },
	-- 玩法完成时
	{ config_id = 1261045, name = "VARIABLE_CHANGE_261045", event = EventType.EVENT_VARIABLE_CHANGE, source = "Success", condition = "condition_EVENT_VARIABLE_CHANGE_261045", action = "action_EVENT_VARIABLE_CHANGE_261045" },
	-- 第一次转reminder
	{ config_id = 1261046, name = "SELECT_OPTION_261046", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_261046", action = "action_EVENT_SELECT_OPTION_261046" },
	-- 盘子亮起
	{ config_id = 1261047, name = "GADGET_STATE_CHANGE_261047", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_261047", action = "action_EVENT_GADGET_STATE_CHANGE_261047", trigger_count = 0 },
	-- 盘子熄灭
	{ config_id = 1261048, name = "GADGET_STATE_CHANGE_261048", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_261048", action = "action_EVENT_GADGET_STATE_CHANGE_261048", trigger_count = 0 },
	{ config_id = 1261049, name = "SELECT_OPTION_261049", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_261049", action = "" },
	{ config_id = 1261050, name = "ENTER_REGION_261050", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_261050", action = "action_EVENT_ENTER_REGION_261050", trigger_count = 0 },
	{ config_id = 1261051, name = "TIME_AXIS_PASS_261051", event = EventType.EVENT_TIME_AXIS_PASS, source = "setsuccess", condition = "condition_EVENT_TIME_AXIS_PASS_261051", action = "action_EVENT_TIME_AXIS_PASS_261051", trigger_count = 0 }
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
			{ config_id = 261001, state = 0 },
			{ config_id = 261002, state = 0 },
			{ config_id = 261003, state = 0 },
			{ config_id = 261004, state = 0 },
			{ config_id = 261005, state = 0 },
			{ config_id = 261006, state = 0 },
			{ config_id = 261007, state = 0 },
			{ config_id = 261008, state = 0 }
		},
		monsters = {
		},
		regions = { 261050 },
		triggers = { "QUEST_START_261043", "SELECT_OPTION_261049", "ENTER_REGION_261050" },
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
			{ config_id = 261001, state = 201 },
			{ config_id = 261002, state = 0 },
			{ config_id = 261003, state = 202 },
			{ config_id = 261004, state = 201 },
			{ config_id = 261005, state = 201 },
			{ config_id = 261006, state = 0 },
			{ config_id = 261007, state = 0 },
			{ config_id = 261008, state = 0 }
		},
		monsters = {
		},
		regions = { 261050 },
		triggers = { "SELECT_OPTION_261009", "GADGET_STATE_CHANGE_261010", "GADGET_STATE_CHANGE_261011", "TIME_AXIS_PASS_261012", "TIME_AXIS_PASS_261013", "GADGET_CREATE_261014", "SELECT_OPTION_261015", "TIME_AXIS_PASS_261016", "TIME_AXIS_PASS_261017", "SELECT_OPTION_261018", "GADGET_CREATE_261019", "GADGET_STATE_CHANGE_261020", "GADGET_CREATE_261021", "GADGET_STATE_CHANGE_261022", "GADGET_STATE_CHANGE_261023", "TIME_AXIS_PASS_261024", "VARIABLE_CHANGE_261025", "VARIABLE_CHANGE_261026", "SELECT_OPTION_261027", "VARIABLE_CHANGE_261028", "VARIABLE_CHANGE_261029", "TIME_AXIS_PASS_261030", "GADGET_STATE_CHANGE_261031", "GADGET_STATE_CHANGE_261032", "GADGET_CREATE_261033", "SELECT_OPTION_261034", "VARIABLE_CHANGE_261035", "VARIABLE_CHANGE_261036", "TIME_AXIS_PASS_261037", "GADGET_STATE_CHANGE_261038", "GADGET_STATE_CHANGE_261039", "GADGET_CREATE_261040", "VARIABLE_CHANGE_261041", "VARIABLE_CHANGE_261042", "QUEST_START_261044", "VARIABLE_CHANGE_261045", "SELECT_OPTION_261046", "GADGET_STATE_CHANGE_261047", "GADGET_STATE_CHANGE_261048", "ENTER_REGION_261050", "TIME_AXIS_PASS_261051" },
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
			{ config_id = 261001, state = 0 },
			{ config_id = 261002, state = 0 },
			{ config_id = 261003, state = 202 },
			{ config_id = 261004, state = 0 },
			{ config_id = 261005, state = 0 },
			{ config_id = 261006, state = 0 },
			{ config_id = 261007, state = 0 },
			{ config_id = 261008, state = 0 }
		},
		monsters = {
		},
		regions = { 261050 },
		triggers = { "ENTER_REGION_261050" },
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
function condition_EVENT_SELECT_OPTION_261009(context, evt)
	-- 判断是gadgetid 261001 option_id 31
	if 261001 ~= evt.param1 then
		return false	
	end
	
	if 31 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_261009(context, evt)
	-- 将本组内变量名为 "Statue_Rotated1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Statue_Rotated1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "Statue_Rotated1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Statue_Rotated1", 1, 133210121) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 创建标识为"OptionReset1"，时间节点为{2}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "OptionReset1", {2}, false)
	
	
	-- 删除指定group： 133210261 ；指定config：261001；物件身上指定option：31；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210261, 261001, 31) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_261010(context, evt)
	-- 检测config_id为261003的gadget是否从GadgetState.GearStop变为GadgetState.GearStart
	if 261003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.GearStop ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_261010(context, evt)
	-- 创建标识为"changestate"，时间节点为{1,5}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "changestate", {1,5}, false)
	
	
	-- 将本组内变量名为 "Statue1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Statue1", 1, 133210510) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_261011(context, evt)
	-- 检测config_id为261003的gadget是否从GadgetState.GearStart变为GadgetState.GearStop
	if 261003 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_261011(context, evt)
	-- 创建标识为"revivestate"，时间节点为{1,5}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "revivestate", {1,5}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_261012(context, evt)
	if evt.param1 ~= 1 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_261012(context, evt)
	-- 将configid为 261001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 261001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 261004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 261004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 261005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 261005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_261013(context, evt)
	if evt.param1 ~= 1 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_261013(context, evt)
	-- 将configid为 261001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 261001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 261004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 261004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 261005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 261005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_261014(context, evt)
	if 261003 ~= evt.param1 or GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_261014(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210261, 261003, {61}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_261015(context, evt)
	-- 判断是gadgetid 261003 option_id 61
	if 261003 ~= evt.param1 then
		return false	
	end
	
	if 61 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_261015(context, evt)
	-- 将configid为 261003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 261003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133210261 ；指定config：261003；物件身上指定option：61；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210261, 261003, 61) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_261016(context, evt)
	if evt.param1 ~= 2 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_261016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210261, 261003, {62}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_261017(context, evt)
	if evt.param1 ~= 2 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_261017(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210261, 261003, {61}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_261018(context, evt)
	-- 判断是gadgetid 261003 option_id 62
	if 261003 ~= evt.param1 then
		return false	
	end
	
	if 62 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_261018(context, evt)
	-- 将configid为 261003 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 261003, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133210261 ；指定config：261003；物件身上指定option：62；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210261, 261003, 62) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_261019(context, evt)
	if 261003 ~= evt.param1 or GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_261019(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210261, 261003, {62}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_261020(context, evt)
	-- 检测config_id为261003的gadget是否从GadgetState.Default变为GadgetState.GearStop
	if 261003 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_261020(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210261, 261003, {61}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_261021(context, evt)
	if 261001 ~= evt.param1 or GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_261021(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210261, 261001, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_261022(context, evt)
	-- 检测config_id为261001的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 261001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_261022(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210261, 261001, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_261023(context, evt)
	-- 检测config_id为261001的gadget是否从GadgetState.GearStart变为GadgetState.Default
	if 261001 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_261023(context, evt)
	-- 删除指定group： 133210261 ；指定config：261001；物件身上指定option：31；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210261, 261001, 31) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_261024(context, evt)
	if evt.param1 ~= 1 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_261024(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210261, 261001, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_261025(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Statue_Rotate1"为0
	if ScriptLib.GetGroupVariableValue(context, "Statue_Rotate1") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_261025(context, evt)
	-- 将configid为 261006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 261006, GadgetState.Default) then
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
function condition_EVENT_VARIABLE_CHANGE_261026(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Statue_Rotate1"为270
	if ScriptLib.GetGroupVariableValue(context, "Statue_Rotate1") ~= 270 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_261026(context, evt)
	-- 将configid为 261006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 261006, GadgetState.GearStart) then
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
function condition_EVENT_SELECT_OPTION_261027(context, evt)
	-- 判断是gadgetid 261004 option_id 31
	if 261004 ~= evt.param1 then
		return false	
	end
	
	if 31 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_261027(context, evt)
	-- 将本组内变量名为 "Statue_Rotated2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Statue_Rotated2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "Statue_Rotated2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Statue_Rotated2", 1, 133210121) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 创建标识为"OptionReset2"，时间节点为{2}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "OptionReset2", {2}, false)
	
	
	-- 删除指定group： 133210261 ；指定config：261004；物件身上指定option：31；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210261, 261004, 31) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_261028(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Statue_Rotate2"为90
	if ScriptLib.GetGroupVariableValue(context, "Statue_Rotate2") ~= 90 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_261028(context, evt)
	-- 将configid为 261007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 261007, GadgetState.GearStart) then
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
function condition_EVENT_VARIABLE_CHANGE_261029(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Statue_Rotate2"为180
	if ScriptLib.GetGroupVariableValue(context, "Statue_Rotate2") ~= 180 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_261029(context, evt)
	-- 将configid为 261007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 261007, GadgetState.Default) then
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
function condition_EVENT_TIME_AXIS_PASS_261030(context, evt)
	if evt.param1 ~= 1 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_261030(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210261, 261004, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_261031(context, evt)
	-- 检测config_id为261004的gadget是否从GadgetState.GearStart变为GadgetState.Default
	if 261004 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_261031(context, evt)
	-- 删除指定group： 133210261 ；指定config：261004；物件身上指定option：31；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210261, 261004, 31) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_261032(context, evt)
	-- 检测config_id为261004的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 261004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_261032(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210261, 261004, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_261033(context, evt)
	if 261004 ~= evt.param1 or GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_261033(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210261, 261004, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_261034(context, evt)
	-- 判断是gadgetid 261005 option_id 31
	if 261005 ~= evt.param1 then
		return false	
	end
	
	if 31 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_261034(context, evt)
	-- 将本组内变量名为 "Statue_Rotated3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Statue_Rotated3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "Statue_Rotated3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Statue_Rotated3", 1, 133210121) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 创建标识为"OptionReset3"，时间节点为{2}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "OptionReset3", {2}, false)
	
	
	-- 删除指定group： 133210261 ；指定config：261005；物件身上指定option：31；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210261, 261005, 31) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_261035(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Statue_Rotate3"为180
	if ScriptLib.GetGroupVariableValue(context, "Statue_Rotate3") ~= 180 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_261035(context, evt)
	-- 将configid为 261008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 261008, GadgetState.GearStart) then
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
function condition_EVENT_VARIABLE_CHANGE_261036(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Statue_Rotate3"为270
	if ScriptLib.GetGroupVariableValue(context, "Statue_Rotate3") ~= 270 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_261036(context, evt)
	-- 将configid为 261008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 261008, GadgetState.Default) then
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
function condition_EVENT_TIME_AXIS_PASS_261037(context, evt)
	if evt.param1 ~= 1 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_261037(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210261, 261005, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_261038(context, evt)
	-- 检测config_id为261005的gadget是否从GadgetState.GearStart变为GadgetState.Default
	if 261005 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_261038(context, evt)
	-- 删除指定group： 133210261 ；指定config：261005；物件身上指定option：31；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210261, 261005, 31) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_261039(context, evt)
	-- 检测config_id为261005的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 261005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_261039(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210261, 261005, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_261040(context, evt)
	if 261005 ~= evt.param1 or GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_261040(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210261, 261005, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_261041(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Gadget_Count"为3
	if ScriptLib.GetGroupVariableValue(context, "Gadget_Count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_261041(context, evt)
	-- 将configid为 261002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 261002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_261042(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Gadget_Count"为2
	if ScriptLib.GetGroupVariableValue(context, "Gadget_Count") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_261042(context, evt)
	-- 将configid为 261002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 261002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_261043(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210261, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_261044(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210261, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_261045(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Success"为1
	if ScriptLib.GetGroupVariableValue(context, "Success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_261045(context, evt)
	-- 停止标识为"OptionReset1"的时间轴
	ScriptLib.EndTimeAxis(context, "OptionReset1")
	
	
	-- 停止标识为"OptionReset2"的时间轴
	ScriptLib.EndTimeAxis(context, "OptionReset2")
	
	
	-- 停止标识为"OptionReset3"的时间轴
	ScriptLib.EndTimeAxis(context, "OptionReset3")
	
	
	-- 删除指定group： 133210261 ；指定config：261001；物件身上指定option：31；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210261, 261001, 31) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 133210261 ；指定config：261004；物件身上指定option：31；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210261, 261004, 31) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 133210261 ；指定config：261005；物件身上指定option：31；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210261, 261005, 31) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 133210261 ；指定config：261003；物件身上指定option：61；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210261, 261003, 61) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 133210261 ；指定config：261003；物件身上指定option：62；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210261, 261003, 62) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
		-- 将指定group的suiteIndex设为指定suite
	  ScriptLib.SetFlowSuite(context, 133210261, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_261046(context, evt)
	-- 判断是gadgetid 261005 option_id 31
	if 261005 ~= evt.param1 then
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
function action_EVENT_SELECT_OPTION_261046(context, evt)
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
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Times", 1, 133210121) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-3474.99，201.55，-842.22），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-3474.99, y=201.55, z=-842.22}
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
function condition_EVENT_GADGET_STATE_CHANGE_261047(context, evt)
	-- 检测config_id为261002的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 261002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_261047(context, evt)
	-- 创建标识为"setsuccess"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "setsuccess", {1}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_261048(context, evt)
	-- 检测config_id为261002的gadget是否从GadgetState.GearStart变为GadgetState.Default
	if 261002 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_261048(context, evt)
	-- 针对当前group内变量名为 "Gadget_Count" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "Gadget_Count", -1, 133210120) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_261049(context, evt)
	-- 判断是gadgetid 261004 option_id 31
	if 261004 ~= evt.param1 then
		return false	
	end
	
	if 31 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发条件
function condition_EVENT_ENTER_REGION_261050(context, evt)
	if evt.param1 ~= 261050 then return false end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133210261, 261003) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_261050(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7005, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_261051(context, evt)
	if evt.param1 ~= 1 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_261051(context, evt)
	-- 针对当前group内变量名为 "Gadget_Count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "Gadget_Count", 1, 133210120) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

require "V2_1/SeaGodStatue"