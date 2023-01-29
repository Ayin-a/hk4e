-- 基础信息
local base_info = {
	group_id = 199001053
}

-- DEFS_MISCS
local defs = {
        --每个操作台config_id, 控制的markflag和它的解，最多5位数字。
        --玩家按按钮，左转写2 右转写3。
        --例如“左左右左”即为“{2,2,3,2}”
        answers = {
                [53003] = { markflag = 1, key = {3,2,3} },
                [53014] = { markflag = 2, key = {2,2,3} },
        }

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
	{ config_id = 53001, gadget_id = 70310291, pos = { x = 75.438, y = 141.663, z = -757.063 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 401 },
	{ config_id = 53002, gadget_id = 70310289, pos = { x = 75.438, y = 141.663, z = -757.063 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 401 },
	{ config_id = 53003, gadget_id = 70310287, pos = { x = 54.640, y = 133.697, z = -762.679 }, rot = { x = 357.786, y = 231.302, z = 354.809 }, level = 1, state = GadgetState.GearStart, persistent = true, area_id = 401 },
	{ config_id = 53004, gadget_id = 70310288, pos = { x = 70.751, y = 143.684, z = -750.841 }, rot = { x = 84.308, y = 77.844, z = 298.793 }, level = 1, persistent = true, mark_flag = 1, area_id = 401 },
	{ config_id = 53005, gadget_id = 70310284, pos = { x = 72.071, y = 139.818, z = -747.367 }, rot = { x = 313.561, y = 199.590, z = 352.799 }, level = 20, persistent = true, area_id = 401 },
	{ config_id = 53006, gadget_id = 70310288, pos = { x = 62.216, y = 139.315, z = -747.507 }, rot = { x = 80.131, y = 234.717, z = 172.983 }, level = 20, persistent = true, mark_flag = 1, area_id = 401 },
	{ config_id = 53007, gadget_id = 70310284, pos = { x = 65.407, y = 139.742, z = -752.098 }, rot = { x = 4.630, y = 324.126, z = 0.409 }, level = 20, persistent = true, area_id = 401 },
	{ config_id = 53008, gadget_id = 70310284, pos = { x = 62.741, y = 139.487, z = -746.608 }, rot = { x = 358.289, y = 37.267, z = 1.050 }, level = 20, persistent = true, area_id = 401 },
	{ config_id = 53009, gadget_id = 70310285, pos = { x = 66.633, y = 139.353, z = -742.237 }, rot = { x = 358.111, y = 126.842, z = 0.232 }, level = 20, persistent = true, area_id = 401 },
	{ config_id = 53010, gadget_id = 70310285, pos = { x = 71.144, y = 143.748, z = -751.651 }, rot = { x = 16.168, y = 140.946, z = 9.758 }, level = 20, persistent = true, area_id = 401 },
	{ config_id = 53011, gadget_id = 70310288, pos = { x = 89.596, y = 135.770, z = -754.215 }, rot = { x = 75.713, y = 275.873, z = 327.960 }, level = 1, persistent = true, mark_flag = 2, area_id = 401 },
	{ config_id = 53012, gadget_id = 70310288, pos = { x = 65.897, y = 139.741, z = -752.359 }, rot = { x = 80.130, y = 234.717, z = 186.800 }, level = 20, persistent = true, mark_flag = 1, area_id = 401 },
	{ config_id = 53013, gadget_id = 70310288, pos = { x = 89.411, y = 135.598, z = -764.465 }, rot = { x = 78.590, y = 348.448, z = 183.513 }, level = 20, persistent = true, mark_flag = 2, area_id = 401 },
	{ config_id = 53014, gadget_id = 70310287, pos = { x = 102.241, y = 130.521, z = -775.598 }, rot = { x = 0.000, y = 131.346, z = 0.000 }, level = 1, state = GadgetState.GearStart, persistent = true, area_id = 401 },
	{ config_id = 53016, gadget_id = 70310288, pos = { x = 66.579, y = 139.381, z = -741.968 }, rot = { x = 73.839, y = 228.467, z = 6.551 }, level = 20, persistent = true, mark_flag = 1, area_id = 401 },
	{ config_id = 53017, gadget_id = 70310288, pos = { x = 98.867, y = 133.908, z = -770.238 }, rot = { x = 82.169, y = 340.714, z = 37.591 }, level = 20, persistent = true, mark_flag = 2, area_id = 401 },
	{ config_id = 53018, gadget_id = 70310288, pos = { x = 72.199, y = 139.509, z = -747.177 }, rot = { x = 65.640, y = 162.001, z = 115.146 }, level = 20, persistent = true, mark_flag = 1, area_id = 401 },
	{ config_id = 53019, gadget_id = 70310286, pos = { x = 98.168, y = 134.223, z = -770.166 }, rot = { x = 353.311, y = 300.022, z = 1.111 }, level = 20, persistent = true, area_id = 401 },
	{ config_id = 53020, gadget_id = 70310286, pos = { x = 89.441, y = 135.627, z = -764.248 }, rot = { x = 358.308, y = 358.476, z = 358.786 }, level = 20, persistent = true, area_id = 401 },
	{ config_id = 53021, gadget_id = 70310288, pos = { x = 82.287, y = 138.931, z = -754.258 }, rot = { x = 73.280, y = 271.013, z = 180.296 }, level = 20, persistent = true, mark_flag = 2, area_id = 401 },
	{ config_id = 53022, gadget_id = 70310285, pos = { x = 89.112, y = 135.757, z = -753.752 }, rot = { x = 333.264, y = 265.290, z = 180.376 }, level = 20, persistent = true, area_id = 401 },
	{ config_id = 53023, gadget_id = 70310285, pos = { x = 82.000, y = 138.898, z = -754.413 }, rot = { x = 338.681, y = 247.668, z = 3.408 }, level = 20, persistent = true, area_id = 401 },
	{ config_id = 53024, gadget_id = 70360001, pos = { x = 75.438, y = 135.963, z = -757.063 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, persistent = true, area_id = 401 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1053015, name = "VARIABLE_CHANGE_53015", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_53015", action = "action_EVENT_VARIABLE_CHANGE_53015" },
	-- 解谜后判单机挂交互
	{ config_id = 1053025, name = "GADGET_STATE_CHANGE_53025", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_53025", trigger_count = 0 },
	-- 仅单机下操作台可操作成功
	{ config_id = 1053026, name = "SELECT_OPTION_53026", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_53026", action = "action_EVENT_SELECT_OPTION_53026", trigger_count = 0 },
	-- 套一层判定单机保底
	{ config_id = 1053027, name = "GROUP_LOAD_53027", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_53027", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "Open", value = 0, no_refresh = true }
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
		gadgets = { 53001, 53002, 53003, 53004, 53005, 53006, 53007, 53008, 53009, 53010, 53011, 53012, 53013, 53014, 53016, 53017, 53018, 53019, 53020, 53021, 53022, 53023, 53024 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_53015", "GADGET_STATE_CHANGE_53025", "SELECT_OPTION_53026", "GROUP_LOAD_53027" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_53015(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"unlock_num"为2
	if ScriptLib.GetGroupVariableValue(context, "unlock_num") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_53015(context, evt)
	-- 将configid为 53001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 53001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 53002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 53002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 53010 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 53023 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 触发镜头注目，注目位置为坐标（75.438，141.6627，-757.0629），持续时间为4秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=75.438, y=141.6627, z=-757.0629}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 4, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_53025(context, evt)
	if ScriptLib.GetGadgetStateByConfigId(context, 0, 53002) == 201 then
		if ScriptLib.CheckIsInMpMode(context) then
			ScriptLib.DelWorktopOptionByGroupId(context, 0, 53024, 68)
		else
			ScriptLib.SetWorktopOptionsByGroupId(context, 0, 53024, {68})
		end
		
		ScriptLib.SetGroupVariableValue(context, "Open", 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_53026(context, evt)
	-- 判断是gadgetid 53024 option_id 68
	if 53024 ~= evt.param1 then
		return false	
	end
	
	if 68 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_53026(context, evt)
	if  ScriptLib.CheckIsInMpMode(context) then
		local pos = {x=75,y=135,z=-757}
		ScriptLib.ShowReminderRadius(context, 321700501, pos, 20)
	else
		ScriptLib.KillEntityByConfigId(context, { config_id = 53002 })
		ScriptLib.DelWorktopOptionByGroupId(context, 199001053, 53024, 68)
		ScriptLib.AddQuestProgress(context, "4007704")
		ScriptLib.SetGroupVariableValue(context, "Open", 2)
	
	end
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_53027(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "Open") == 1 and (not ScriptLib.CheckIsInMpMode(context)) then
		ScriptLib.SetWorktopOptionsByGroupId(context, 0, 53024, {68})
	end
	
	return 0
end

require "V2_8/DreamOperation"