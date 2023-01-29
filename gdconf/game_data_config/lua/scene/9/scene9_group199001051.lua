-- 基础信息
local base_info = {
	group_id = 199001051
}

-- DEFS_MISCS
local defs = {
        --每个操作台config_id, 控制的markflag和它的解，最多5位数字。
        --玩家按按钮，左转写2 右转写3。
        --例如“左左右左”即为“{2,2,3,2}”
        answers = {
                [51001] = { markflag = 1, key = {2,2,3} },
                [51015] = { markflag = 2, key = {3,2} },
                [51005] = { markflag = 3, key = {3,2,3} },
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
	{ config_id = 51001, gadget_id = 70310287, pos = { x = 116.695, y = 121.212, z = -211.242 }, rot = { x = 0.000, y = 239.327, z = 0.000 }, level = 1, state = GadgetState.GearStart, persistent = true, area_id = 401 },
	{ config_id = 51002, gadget_id = 70310288, pos = { x = 125.594, y = 129.413, z = -211.392 }, rot = { x = 270.000, y = 52.865, z = 0.000 }, level = 1, persistent = true, mark_flag = 1, area_id = 401 },
	{ config_id = 51003, gadget_id = 70310286, pos = { x = 117.888, y = 123.609, z = -190.784 }, rot = { x = 346.142, y = 135.298, z = 358.615 }, level = 20, persistent = true, area_id = 401 },
	{ config_id = 51004, gadget_id = 70310291, pos = { x = 125.881, y = 126.300, z = -198.716 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 401 },
	{ config_id = 51005, gadget_id = 70310287, pos = { x = 115.495, y = 120.635, z = -175.876 }, rot = { x = 0.000, y = 337.337, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, area_id = 401 },
	{ config_id = 51014, gadget_id = 70310288, pos = { x = 117.341, y = 123.440, z = -190.351 }, rot = { x = 270.900, y = 136.822, z = 350.998 }, level = 1, persistent = true, mark_flag = 3, area_id = 401 },
	{ config_id = 51015, gadget_id = 70310287, pos = { x = 134.496, y = 120.058, z = -177.723 }, rot = { x = 0.000, y = 359.276, z = 0.000 }, level = 1, state = GadgetState.GearStart, persistent = true, area_id = 401 },
	{ config_id = 51016, gadget_id = 70310289, pos = { x = 125.881, y = 126.300, z = -198.716 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 401 },
	{ config_id = 51021, gadget_id = 70360001, pos = { x = 125.881, y = 121.493, z = -198.716 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, persistent = true, area_id = 401 },
	{ config_id = 51023, gadget_id = 70310288, pos = { x = 118.193, y = 124.486, z = -179.194 }, rot = { x = 270.904, y = 136.795, z = 248.670 }, level = 20, persistent = true, mark_flag = 3, area_id = 401 },
	{ config_id = 51024, gadget_id = 70310286, pos = { x = 117.757, y = 124.619, z = -180.019 }, rot = { x = 7.774, y = 184.801, z = 352.469 }, level = 20, persistent = true, area_id = 401 },
	{ config_id = 51025, gadget_id = 70310288, pos = { x = 132.478, y = 125.290, z = -188.680 }, rot = { x = 270.873, y = 136.838, z = 185.357 }, level = 20, persistent = true, mark_flag = 2, area_id = 401 },
	{ config_id = 51026, gadget_id = 70310288, pos = { x = 135.679, y = 123.301, z = -179.715 }, rot = { x = 270.869, y = 136.778, z = 358.235 }, level = 20, persistent = true, mark_flag = 2, area_id = 401 },
	{ config_id = 51027, gadget_id = 70310286, pos = { x = 139.870, y = 127.613, z = -180.610 }, rot = { x = 11.266, y = 221.756, z = 1.991 }, level = 20, persistent = true, area_id = 401 },
	{ config_id = 51028, gadget_id = 70310288, pos = { x = 140.876, y = 127.696, z = -180.028 }, rot = { x = 270.892, y = 136.778, z = 291.320 }, level = 20, persistent = true, mark_flag = 2, area_id = 401 },
	{ config_id = 51029, gadget_id = 70310288, pos = { x = 118.333, y = 124.524, z = -178.854 }, rot = { x = 270.901, y = 136.708, z = 69.036 }, level = 20, persistent = true, mark_flag = 3, area_id = 401 },
	{ config_id = 51030, gadget_id = 70310284, pos = { x = 136.289, y = 124.099, z = -179.568 }, rot = { x = 318.789, y = 99.158, z = 332.328 }, level = 20, persistent = true, area_id = 401 },
	{ config_id = 51031, gadget_id = 70310286, pos = { x = 131.715, y = 125.346, z = -189.189 }, rot = { x = 354.892, y = 211.540, z = 1.860 }, level = 20, persistent = true, area_id = 401 },
	{ config_id = 51033, gadget_id = 70310288, pos = { x = 126.491, y = 129.413, z = -210.713 }, rot = { x = 270.000, y = 52.865, z = 0.000 }, level = 20, persistent = true, mark_flag = 1, area_id = 401 },
	{ config_id = 51034, gadget_id = 70310288, pos = { x = 124.804, y = 122.681, z = -210.804 }, rot = { x = 270.000, y = 52.865, z = 0.000 }, level = 20, persistent = true, mark_flag = 1, area_id = 401 },
	{ config_id = 51036, gadget_id = 70310288, pos = { x = 136.033, y = 123.356, z = -180.113 }, rot = { x = 270.858, y = 136.838, z = 178.438 }, level = 20, persistent = true, mark_flag = 2, area_id = 401 },
	{ config_id = 51037, gadget_id = 70310284, pos = { x = 124.356, y = 123.476, z = -211.343 }, rot = { x = 278.107, y = 133.331, z = 191.923 }, level = 20, persistent = true, area_id = 401 },
	{ config_id = 51038, gadget_id = 70310286, pos = { x = 126.530, y = 129.104, z = -209.703 }, rot = { x = 14.976, y = 357.352, z = 0.137 }, level = 20, persistent = true, area_id = 401 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- load添加交互保底
	{ config_id = 1051010, name = "GROUP_LOAD_51010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_51010", trigger_count = 0 },
	{ config_id = 1051017, name = "VARIABLE_CHANGE_51017", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_51017", action = "action_EVENT_VARIABLE_CHANGE_51017" },
	-- 晶核解锁，单机下挂交互
	{ config_id = 1051020, name = "GADGET_STATE_CHANGE_51020", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_51020", trigger_count = 0 },
	-- 交互套一层联机判断
	{ config_id = 1051022, name = "SELECT_OPTION_51022", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_51022", action = "action_EVENT_SELECT_OPTION_51022", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 3, name = "Open", value = 0, no_refresh = true }
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
		gadgets = { 51001, 51002, 51003, 51004, 51005, 51014, 51015, 51016, 51021, 51023, 51024, 51025, 51026, 51027, 51028, 51029, 51030, 51031, 51033, 51034, 51036, 51037, 51038 },
		regions = { },
		triggers = { "GROUP_LOAD_51010", "VARIABLE_CHANGE_51017", "GADGET_STATE_CHANGE_51020", "SELECT_OPTION_51022" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_51010(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "Open") == 1 and (not ScriptLib.CheckIsInMpMode(context)) then
		ScriptLib.SetWorktopOptionsByGroupId(context, 0, 51021, {68})
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_51017(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"unlock_num"为3
	if ScriptLib.GetGroupVariableValue(context, "unlock_num") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_51017(context, evt)
	-- 将configid为 51004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 51004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 51016 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 51016, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 51031 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 51003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 51038 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 触发镜头注目，注目位置为坐标（125.8813，126.3，-198.7155），持续时间为4秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=125.8813, y=126.3, z=-198.7155}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 4, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 将本组内变量名为 "missionComplete" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "missionComplete", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_51020(context, evt)
	if ScriptLib.GetGadgetStateByConfigId(context, 199001051, 51016) == 201 then
		if ScriptLib.CheckIsInMpMode(context) then
			ScriptLib.DelWorktopOptionByGroupId(context, 0, 51021, 68)
		else
			ScriptLib.SetWorktopOptionsByGroupId(context, 0, 51021, {68})
		end
		
		ScriptLib.SetGroupVariableValue(context, "Open", 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_51022(context, evt)
	-- 判断是gadgetid 51021 option_id 68
	if 51021 ~= evt.param1 then
		return false	
	end
	
	if 68 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_51022(context, evt)
		if ScriptLib.CheckIsInMpMode(context) then
			local pos = {x=125,y=120,z=-198}
			ScriptLib.ShowReminderRadius(context, 321700501, pos, 20)
		else
		
			ScriptLib.KillEntityByConfigId(context, { config_id = 51016 }) 
			ScriptLib.DelWorktopOptionByGroupId(context, 199001051, 51021, 68)
			ScriptLib.AddQuestProgress(context, "4007702")
			ScriptLib.SetGroupVariableValue(context, "Open", 2)
		
		end
		return 0
end

require "V2_8/DreamOperation"