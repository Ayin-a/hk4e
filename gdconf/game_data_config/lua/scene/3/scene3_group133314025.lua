-- 基础信息
local base_info = {
	group_id = 133314025
}

-- Trigger变量
local defs = {
	point_camera = 25019,
	gadget_lookEntity = 25020,
	look_duration = 4
}

-- DEFS_MISCS
local CameraLookSetting = {
    blend_type = 1,  --镜头的移动路径，球面0，直线1
    blend_duration = 1, --镜头的移动时间
    is_force_walk = false, --强制玩家行走
    is_allow_input = false, --允许输入
    delay = 0, --触发延迟
}

local I_connectors = 
{
    [1] = 25010,
    [2] = 25012
}

local L_connectors = 
{
    [1] = 25005
}

local containers = 
{
    [1] = 25018,
    [2] = 25013
}

local lights = 
{
    [1] = 25017,
    [2] = 25003,
    [3] = 25001
}

local streams = 
{
   [containers[1]] = {I_connectors[1],lights[1],L_connectors[1],lights[3]},
   [containers[2]] = {I_connectors[1],lights[1],L_connectors[1],lights[2],I_connectors[2]}
}

local L_connections = 
{
    [L_connectors[1]] = {[201] = lights[2], [202] = lights[3]}
}

local base_interval = 1

local special_interval = 
{
}

local worktops = 
{
    [1] = 25022,
    [2] = 25023
}

local connector_to_worktop = 
{
    [L_connectors[1]] = worktops[1],
    [I_connectors[2]] = worktops[2]
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
	[25001] = { config_id = 25001, gadget_id = 70290461, pos = { x = -777.655, y = -59.197, z = 4882.767 }, rot = { x = 270.954, y = 221.014, z = 208.692 }, level = 32, persistent = true, area_id = 32 },
	[25003] = { config_id = 25003, gadget_id = 70290461, pos = { x = -786.131, y = -57.552, z = 4864.265 }, rot = { x = 0.000, y = 342.460, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	[25005] = { config_id = 25005, gadget_id = 70290455, pos = { x = -775.991, y = -60.479, z = 4876.696 }, rot = { x = 270.000, y = 70.430, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 32 },
	-- 开门机关
	[25006] = { config_id = 25006, gadget_id = 70330333, pos = { x = -785.344, y = -58.796, z = 4891.517 }, rot = { x = 359.962, y = 28.625, z = 358.403 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 32 },
	[25007] = { config_id = 25007, gadget_id = 70330416, pos = { x = -795.610, y = -58.586, z = 4899.872 }, rot = { x = 0.000, y = 69.039, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	[25008] = { config_id = 25008, gadget_id = 70290610, pos = { x = -756.383, y = -59.415, z = 4911.083 }, rot = { x = 0.000, y = 338.817, z = 0.000 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 32 },
	[25010] = { config_id = 25010, gadget_id = 70290613, pos = { x = -745.365, y = -51.808, z = 4884.798 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	[25012] = { config_id = 25012, gadget_id = 70290453, pos = { x = -788.613, y = -57.275, z = 4855.852 }, rot = { x = 90.000, y = 338.187, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	[25013] = { config_id = 25013, gadget_id = 70290459, pos = { x = -790.336, y = -58.818, z = 4845.965 }, rot = { x = 0.000, y = 249.835, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	[25014] = { config_id = 25014, gadget_id = 70330264, pos = { x = -797.454, y = -53.160, z = 4842.795 }, rot = { x = 0.293, y = 71.719, z = 359.739 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 32 },
	[25017] = { config_id = 25017, gadget_id = 70290461, pos = { x = -770.794, y = -59.170, z = 4878.973 }, rot = { x = 270.516, y = 133.285, z = 207.236 }, level = 32, persistent = true, area_id = 32 },
	-- 替代用容器
	[25018] = { config_id = 25018, gadget_id = 70360001, pos = { x = -780.084, y = -60.409, z = 4887.708 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	[25020] = { config_id = 25020, gadget_id = 70360001, pos = { x = -744.572, y = -52.554, z = 4884.514 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	-- L管道控制机关
	[25022] = { config_id = 25022, gadget_id = 70290610, pos = { x = -766.328, y = -57.867, z = 4875.496 }, rot = { x = 0.000, y = 69.317, z = 0.000 }, level = 32, area_id = 32 },
	-- I管道控制机关
	[25023] = { config_id = 25023, gadget_id = 70290610, pos = { x = -796.933, y = -58.825, z = 4857.023 }, rot = { x = 0.000, y = 342.287, z = 0.000 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 32 }
}

-- 区域
regions = {
	-- 如果机关没法使用，播Reminder
	[25027] = { config_id = 25027, shape = RegionShape.SPHERE, radius = 8, pos = { x = -796.713, y = -58.818, z = 4856.465 }, area_id = 32 }
}

-- 触发器
triggers = {
	-- 通知解锁流沙瀑布
	{ config_id = 1025002, name = "SELECT_OPTION_25002", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_25002", action = "action_EVENT_SELECT_OPTION_25002", trigger_count = 0 },
	-- 解锁开门机关
	{ config_id = 1025004, name = "GADGET_STATE_CHANGE_25004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_25004", action = "action_EVENT_GADGET_STATE_CHANGE_25004", trigger_count = 0 },
	-- 任务通知解锁
	{ config_id = 1025009, name = "QUEST_START_25009", event = EventType.EVENT_QUEST_START, source = "7318630", condition = "", action = "action_EVENT_QUEST_START_25009", trigger_count = 0 },
	-- 开启大门
	{ config_id = 1025011, name = "SELECT_OPTION_25011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_25011", action = "action_EVENT_SELECT_OPTION_25011", trigger_count = 0 },
	-- 开启大门保底
	{ config_id = 1025015, name = "GROUP_LOAD_25015", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_25015", action = "action_EVENT_GROUP_LOAD_25015", trigger_count = 0 },
	-- 开启大门机关保底
	{ config_id = 1025016, name = "GADGET_CREATE_25016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_25016", action = "action_EVENT_GADGET_CREATE_25016", trigger_count = 0 },
	-- 透明化门
	{ config_id = 1025021, name = "GADGET_STATE_CHANGE_25021", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_25021", action = "action_EVENT_GADGET_STATE_CHANGE_25021", trigger_count = 0 },
	-- 解锁第二个管道机关
	{ config_id = 1025024, name = "GADGET_STATE_CHANGE_25024", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_25024", action = "action_EVENT_GADGET_STATE_CHANGE_25024", trigger_count = 0 },
	-- 锁定第二个管道机关
	{ config_id = 1025025, name = "GADGET_STATE_CHANGE_25025", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_25025", action = "action_EVENT_GADGET_STATE_CHANGE_25025", trigger_count = 0 },
	-- 播放Reminder
	{ config_id = 1025026, name = "GADGET_STATE_CHANGE_25026", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_25026", action = "action_EVENT_GADGET_STATE_CHANGE_25026" },
	-- 如果机关没法使用，播Reminder
	{ config_id = 1025027, name = "ENTER_REGION_25027", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_25027", action = "action_EVENT_ENTER_REGION_25027" },
	-- 再次改变管道状态，并且已经踩过去圈
	{ config_id = 1025028, name = "GADGET_STATE_CHANGE_25028", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_25028", action = "action_EVENT_GADGET_STATE_CHANGE_25028" }
}

-- 点位
points = {
	[25019] = { config_id = 25019, pos = { x = -765.262, y = -57.798, z = 4902.792 }, rot = { x = 0.000, y = 132.424, z = 0.000 }, area_id = 32 }
}

-- 变量
variables = {
	{ config_id = 2, name = "door_open", value = 0, no_refresh = true },
	{ config_id = 3, name = "rmd_trigger", value = 0, no_refresh = true }
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
		gadgets = { 25001, 25003, 25005, 25006, 25007, 25008, 25010, 25012, 25013, 25014, 25017, 25018, 25022, 25023 },
		regions = { 25027 },
		triggers = { "SELECT_OPTION_25002", "GADGET_STATE_CHANGE_25004", "QUEST_START_25009", "SELECT_OPTION_25011", "GROUP_LOAD_25015", "GADGET_CREATE_25016", "GADGET_STATE_CHANGE_25021", "GADGET_STATE_CHANGE_25024", "GADGET_STATE_CHANGE_25025", "GADGET_STATE_CHANGE_25026", "ENTER_REGION_25027", "GADGET_STATE_CHANGE_25028" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_25002(context, evt)
	-- 判断是gadgetid 25008 option_id 7
	if 25008 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_25002(context, evt)
	-- 将configid为 25010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 25010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 25008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 25008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133314025 ；指定config：25008；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133314025, 25008, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	LF_PointLook(context)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_25004(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133314025, 25018) then
		return false
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133314025, 25006) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_25004(context, evt)
	-- 将configid为 25006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 25006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133314025, 25006, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_25009(context, evt)
	-- 将configid为 25008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 25008, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133314025, 25008, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_25011(context, evt)
	-- 判断是gadgetid 25006 option_id 7
	if 25006 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_25011(context, evt)
	-- 将本组内变量名为 "door_open" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "door_open", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 25007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 25007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 25006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 25006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133314025 ；指定config：25006；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133314025, 25006, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_25015(context, evt)
	-- 判断变量"door_open"为1
	if ScriptLib.GetGroupVariableValue(context, "door_open") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_25015(context, evt)
	-- 将configid为 25007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 25007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_25016(context, evt)
	if 25006 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_25016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133314025, 25006, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_25021(context, evt)
	if 25013 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_25021(context, evt)
	-- 将configid为 25014 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 25014, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_25024(context, evt)
	if 25005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133314025, 25023) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_25024(context, evt)
	-- 将configid为 25023 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 25023, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_25025(context, evt)
	if 25005 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133314025, 25023) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_25025(context, evt)
	-- 将configid为 25023 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 25023, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_25026(context, evt)
	-- 检测config_id为25005的gadget是否从GadgetState.GearStart变为GadgetState.GearStop
	if 25005 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_25026(context, evt)
	-- 调用提示id为 1000080046 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000080046) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_25027(context, evt)
	if evt.param1 ~= 25027 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133314025, 25023) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_25027(context, evt)
	-- 调用提示id为 1000080048 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000080048) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将本组内变量名为 "rmd_trigger" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "rmd_trigger", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_25028(context, evt)
	-- 判断变量"rmd_trigger"为1
	if ScriptLib.GetGroupVariableValue(context, "rmd_trigger") ~= 1 then
			return false
	end
	
	-- 检测config_id为25005的gadget是否从GadgetState.GearStop变为GadgetState.GearStart
	if 25005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.GearStop ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_25028(context, evt)
	-- 调用提示id为 1000080049 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000080049) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

require "V3_4/SandPipe"
require "V3_0/CameraLook"