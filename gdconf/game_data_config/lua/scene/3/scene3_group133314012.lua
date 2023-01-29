-- 基础信息
local base_info = {
	group_id = 133314012
}

-- DEFS_MISCS
local I_connectors = 
{
    [1] = 12002,
    [2] = 12004
}

local L_connectors = 
{

}

local containers = 
{
    [1] = 12005
}

local lights = 
{
    [1] = 12006,
    [2] = 12007,
    [3] = 12008
}

local streams = 
{
   [containers[1]] = {I_connectors[1],lights[1],I_connectors[2],lights[2],lights[3]}
}

local L_connections = 
{

}

local base_interval = 1

local special_interval = 
{
}

local worktops = 
{
    [1] = 12011
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
	{ config_id = 12002, gadget_id = 70290613, pos = { x = -857.726, y = -33.195, z = 5052.602 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 12004, gadget_id = 70290453, pos = { x = -844.091, y = -65.570, z = 5067.434 }, rot = { x = 90.000, y = 50.607, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 12005, gadget_id = 70290459, pos = { x = -863.384, y = -62.068, z = 5093.372 }, rot = { x = 0.000, y = 139.918, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 12006, gadget_id = 70290461, pos = { x = -850.775, y = -59.374, z = 5061.468 }, rot = { x = 0.003, y = 50.872, z = 89.976 }, level = 32, area_id = 32 },
	{ config_id = 12007, gadget_id = 70290461, pos = { x = -839.563, y = -64.344, z = 5071.760 }, rot = { x = 270.910, y = 139.776, z = 180.965 }, level = 32, area_id = 32 },
	{ config_id = 12008, gadget_id = 70290461, pos = { x = -840.028, y = -62.376, z = 5077.699 }, rot = { x = 271.124, y = 273.652, z = 138.056 }, level = 32, area_id = 32 },
	{ config_id = 12010, gadget_id = 70330264, pos = { x = -857.282, y = -56.262, z = 5095.405 }, rot = { x = 0.000, y = 48.333, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 32 },
	{ config_id = 12011, gadget_id = 70290610, pos = { x = -846.241, y = -64.411, z = 5062.978 }, rot = { x = 0.000, y = 54.042, z = 0.000 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 32 },
	-- 开启流沙管道
	{ config_id = 12013, gadget_id = 70290610, pos = { x = -835.723, y = -48.457, z = 5084.963 }, rot = { x = 0.000, y = 8.243, z = 0.000 }, level = 32, persistent = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 连通后播放CS，一次性
	{ config_id = 1012001, name = "GADGET_STATE_CHANGE_12001", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_12001", action = "action_EVENT_GADGET_STATE_CHANGE_12001" },
	-- 解锁控制台
	{ config_id = 1012003, name = "GADGET_STATE_CHANGE_12003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_12003", action = "action_EVENT_GADGET_STATE_CHANGE_12003", trigger_count = 0 },
	{ config_id = 1012012, name = "GADGET_STATE_CHANGE_12012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_12012", action = "action_EVENT_GADGET_STATE_CHANGE_12012", trigger_count = 0 },
	{ config_id = 1012014, name = "GADGET_CREATE_12014", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_12014", action = "action_EVENT_GADGET_CREATE_12014", trigger_count = 0 },
	-- 开启流沙
	{ config_id = 1012015, name = "SELECT_OPTION_12015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_12015", action = "action_EVENT_SELECT_OPTION_12015", trigger_count = 0 }
}

-- 变量
variables = {
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
		gadgets = { 12002, 12004, 12005, 12006, 12007, 12008, 12010, 12011, 12013 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_12001", "GADGET_STATE_CHANGE_12003", "GADGET_STATE_CHANGE_12012", "GADGET_CREATE_12014", "SELECT_OPTION_12015" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_12001(context, evt)
	if 12011 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_12001(context, evt)
	ScriptLib.PlayCutScene(context, 331410001, 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_12003(context, evt)
	if 12002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133314012, 12011) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_12003(context, evt)
	-- 将configid为 12011 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 12011, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_12012(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133314012, 12005) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_12012(context, evt)
	-- 将configid为 12010 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 12010, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_12014(context, evt)
	if 12013 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_12014(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133314012, 12013, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_12015(context, evt)
	-- 判断是gadgetid 12013 option_id 7
	if 12013 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_12015(context, evt)
	-- 将configid为 12002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 12002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 12013 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 12013, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133314012 ；指定config：12013；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133314012, 12013, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标{x=-857.7263, y=-33.19478, z=5052.602}，持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-857.7263, y=-33.19478, z=5052.602}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

require "V3_4/SandPipe"