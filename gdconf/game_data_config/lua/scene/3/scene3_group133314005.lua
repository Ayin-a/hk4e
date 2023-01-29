-- 基础信息
local base_info = {
	group_id = 133314005
}

-- Trigger变量
local defs = {
	point_camera = 5008,
	gadget_lookEntity = 5002,
	look_duration = 3
}

-- DEFS_MISCS
local CameraLookSetting = 
{
    blend_type = 1,  --镜头的移动路径，球面0，直线1
    blend_duration = 1, --镜头的移动时间
    is_force_walk = false, --强制玩家行走
    is_allow_input = false, --允许输入
    delay = 0, --触发延迟
}

local I_connectors = 
{
    [1] = 5002,
    [2] = 5007,
}
local L_connectors = 
{
}

local containers = 
{
    [1] = 5009
}

local lights = 
{
    [1] = 5003,
    [2] = 5012,
    [3] = 5004
}

local streams = 
{
   [containers[1]] = {I_connectors[1],lights[1],lights[2],I_connectors[2],lights[3]}
}

local L_connections = 
{

}
local base_interval = 2
local special_interval = 
{
}

local worktops = 
{
    [1] = 5005
}
local connector_to_worktop = 
{
    [I_connectors[2]] = worktops[1]
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
	[5001] = { config_id = 5001, gadget_id = 70290610, pos = { x = -830.989, y = -64.370, z = 5053.280 }, rot = { x = 0.000, y = 322.086, z = 0.000 }, level = 1, state = GadgetState.GearStop, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 32 },
	[5002] = { config_id = 5002, gadget_id = 70290454, pos = { x = -809.956, y = -80.026, z = 5036.336 }, rot = { x = 90.000, y = 233.262, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	[5003] = { config_id = 5003, gadget_id = 70290627, pos = { x = -821.377, y = -73.634, z = 5012.259 }, rot = { x = 270.902, y = 241.836, z = 173.097 }, level = 32, area_id = 32 },
	[5004] = { config_id = 5004, gadget_id = 70290461, pos = { x = -793.203, y = -53.717, z = 4943.179 }, rot = { x = 0.000, y = 69.211, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	-- 操作器2
	[5005] = { config_id = 5005, gadget_id = 70290610, pos = { x = -780.119, y = -80.905, z = 4996.601 }, rot = { x = 0.000, y = 334.499, z = 0.000 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 32 },
	[5007] = { config_id = 5007, gadget_id = 70290454, pos = { x = -769.993, y = -78.065, z = 5000.235 }, rot = { x = 89.980, y = 335.049, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	[5009] = { config_id = 5009, gadget_id = 70330416, pos = { x = -785.552, y = -58.661, z = 4942.007 }, rot = { x = 0.000, y = 341.025, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	[5012] = { config_id = 5012, gadget_id = 70290627, pos = { x = -777.245, y = -77.312, z = 5009.489 }, rot = { x = 0.871, y = 244.744, z = 180.045 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 指示灯解锁操作台
	{ config_id = 1005006, name = "GADGET_STATE_CHANGE_5006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_5006", action = "action_EVENT_GADGET_STATE_CHANGE_5006", trigger_count = 0 },
	-- 机关创建时恢复控制机关状态
	{ config_id = 1005010, name = "GADGET_CREATE_5010", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_5010", action = "action_EVENT_GADGET_CREATE_5010", trigger_count = 0 },
	-- group加载时恢复大门状态
	{ config_id = 1005011, name = "GROUP_LOAD_5011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_5011", action = "action_EVENT_GROUP_LOAD_5011", trigger_count = 0 },
	-- 大门打开时，设置玩法完成
	{ config_id = 1005013, name = "GADGET_STATE_CHANGE_5013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_5013", action = "action_EVENT_GADGET_STATE_CHANGE_5013" },
	-- 连通第一个流沙管道,并且任务状态需要正确
	{ config_id = 1005014, name = "SELECT_OPTION_5014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_5014", action = "action_EVENT_SELECT_OPTION_5014", trigger_count = 0 },
	-- 解锁第一个流沙机关
	{ config_id = 1005015, name = "GADGET_STATE_CHANGE_5015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_5015", action = "action_EVENT_GADGET_STATE_CHANGE_5015", trigger_count = 0 },
	-- 再次锁定第一个流沙机关，去除选项
	{ config_id = 1005016, name = "GADGET_STATE_CHANGE_5016", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_5016", action = "action_EVENT_GADGET_STATE_CHANGE_5016", trigger_count = 0 }
}

-- 点位
points = {
	[5008] = { config_id = 5008, pos = { x = -829.651, y = -60.066, z = 5054.019 }, rot = { x = 0.000, y = 135.223, z = 0.000 }, area_id = 32 }
}

-- 变量
variables = {
	{ config_id = 4, name = "finish", value = 0, no_refresh = true }
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
		gadgets = { 5001, 5002, 5003, 5004, 5005, 5007, 5009, 5012 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_5006", "GADGET_CREATE_5010", "GROUP_LOAD_5011", "GADGET_STATE_CHANGE_5013", "SELECT_OPTION_5014", "GADGET_STATE_CHANGE_5015", "GADGET_STATE_CHANGE_5016" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_5006(context, evt)
	if 5001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_5006(context, evt)
	-- 将configid为 5005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_5010(context, evt)
	local curQuestState = ScriptLib.GetHostQuestState(context,7318613)
	if -1 == curQuestState or 0 == curQuestState then
	  return false
	end
	if curQuestState ~= 2 then
	   return false
	end
	
	if 5001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_5010(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133314005, 5001, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_5011(context, evt)
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_5011(context, evt)
	-- 将configid为 5009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_5013(context, evt)
	if 5009 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_5013(context, evt)
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_5014(context, evt)
	-- 判断是gadgetid 5001 option_id 7
	if 5001 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	local curQuestState = ScriptLib.GetHostQuestState(context,7318613)
	if -1 == curQuestState or 0 == curQuestState then
	  return false
	end
	if curQuestState ~= 2 then
	   return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_5014(context, evt)
	-- 将configid为 5002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
	        return -1
	    end 
	
	-- 将configid为 5001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
	        return -1
	    end 
	
	-- 删除指定group： 133314005 ；指定config：5001；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133314005, 5001, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
	    return -1
	end
	
	LF_PointLook(context)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_5015(context, evt)
	-- 检测config_id为5001的gadget是否从GadgetState.GearStop变为GadgetState.Default
	if 5001 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearStop ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_5015(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133314005, 5001, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_5016(context, evt)
	-- 检测config_id为5001的gadget是否从GadgetState.Default变为GadgetState.GearStop
	if 5001 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_5016(context, evt)
	-- 删除指定group： 133314005 ；指定config：5001；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133314005, 5001, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

require "V3_4/SandPipe"
require "V3_0/CameraLook"