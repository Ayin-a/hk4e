-- 基础信息
local base_info = {
	group_id = 199001052
}

-- DEFS_MISCS
local defs = {
        --每个操作台config_id, 控制的markflag和它的解，最多5位数字。
        --玩家按按钮，左转写2 右转写3。
        --例如“左左右左”即为“{2,2,3,2}”
        answers = {
                [52001] = { markflag = 1, key = {3,2,2} },
                [52002] = { markflag = 2, key = {3,3,2} },
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
	{ config_id = 52001, gadget_id = 70310287, pos = { x = 510.606, y = 121.354, z = -47.078 }, rot = { x = 0.000, y = 359.004, z = 0.000 }, level = 1, state = GadgetState.GearStart, persistent = true, area_id = 402 },
	{ config_id = 52002, gadget_id = 70310287, pos = { x = 502.645, y = 123.045, z = -65.074 }, rot = { x = 357.879, y = 241.024, z = 352.795 }, level = 1, state = GadgetState.GearStart, persistent = true, area_id = 402 },
	{ config_id = 52003, gadget_id = 70310291, pos = { x = 511.105, y = 128.224, z = -59.363 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 402 },
	{ config_id = 52004, gadget_id = 70310288, pos = { x = 507.620, y = 129.650, z = -50.813 }, rot = { x = 88.513, y = 195.613, z = 289.605 }, level = 20, persistent = true, mark_flag = 2, area_id = 402 },
	{ config_id = 52005, gadget_id = 70360001, pos = { x = 511.014, y = 122.741, z = -59.291 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, persistent = true, area_id = 402 },
	{ config_id = 52010, gadget_id = 70310289, pos = { x = 511.105, y = 128.224, z = -59.363 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 402 },
	{ config_id = 52012, gadget_id = 70310288, pos = { x = 506.883, y = 123.848, z = -50.850 }, rot = { x = 88.511, y = 195.513, z = 107.341 }, level = 20, persistent = true, mark_flag = 2, area_id = 402 },
	{ config_id = 52014, gadget_id = 70310288, pos = { x = 515.341, y = 126.909, z = -54.738 }, rot = { x = 88.501, y = 195.584, z = 278.417 }, level = 20, persistent = true, mark_flag = 1, area_id = 402 },
	{ config_id = 52016, gadget_id = 70310288, pos = { x = 514.310, y = 130.052, z = -59.195 }, rot = { x = 88.422, y = 197.680, z = 109.710 }, level = 20, persistent = true, mark_flag = 1, area_id = 402 },
	{ config_id = 52020, gadget_id = 70310284, pos = { x = 506.890, y = 129.962, z = -59.377 }, rot = { x = 89.298, y = 149.432, z = 142.300 }, level = 20, persistent = true, area_id = 402 },
	{ config_id = 52022, gadget_id = 70310288, pos = { x = 507.533, y = 124.446, z = -59.569 }, rot = { x = 87.758, y = 128.954, z = 214.632 }, level = 20, persistent = true, mark_flag = 2, area_id = 402 },
	{ config_id = 52023, gadget_id = 70310284, pos = { x = 507.026, y = 129.445, z = -50.817 }, rot = { x = 84.668, y = 257.183, z = 272.954 }, level = 20, persistent = true, area_id = 402 },
	{ config_id = 52024, gadget_id = 70310288, pos = { x = 515.037, y = 124.653, z = -58.965 }, rot = { x = 88.428, y = 197.688, z = 288.320 }, level = 20, persistent = true, mark_flag = 1, area_id = 402 },
	{ config_id = 52025, gadget_id = 70310288, pos = { x = 514.787, y = 124.138, z = -51.079 }, rot = { x = 88.505, y = 195.510, z = 95.517 }, level = 20, persistent = true, mark_flag = 1, area_id = 402 },
	{ config_id = 52027, gadget_id = 70310288, pos = { x = 506.958, y = 130.057, z = -59.343 }, rot = { x = 88.425, y = 197.680, z = 109.710 }, level = 20, persistent = true, mark_flag = 2, area_id = 402 },
	{ config_id = 52028, gadget_id = 70310288, pos = { x = 507.343, y = 126.924, z = -55.079 }, rot = { x = 88.498, y = 195.509, z = 108.768 }, level = 20, persistent = true, mark_flag = 2, area_id = 402 },
	{ config_id = 52029, gadget_id = 70310285, pos = { x = 465.803, y = 120.165, z = -19.559 }, rot = { x = 0.000, y = 221.598, z = 0.000 }, level = 20, persistent = true, area_id = 402 },
	{ config_id = 52031, gadget_id = 70310284, pos = { x = 515.028, y = 129.996, z = -58.982 }, rot = { x = 36.943, y = 3.980, z = 0.724 }, level = 20, persistent = true, area_id = 402 },
	{ config_id = 52032, gadget_id = 70310284, pos = { x = 515.093, y = 124.717, z = -58.973 }, rot = { x = 272.022, y = 231.856, z = 127.052 }, level = 20, persistent = true, area_id = 402 },
	{ config_id = 52033, gadget_id = 70310285, pos = { x = 515.628, y = 124.534, z = -51.518 }, rot = { x = 359.208, y = 184.370, z = 180.414 }, level = 20, persistent = true, area_id = 402 },
	{ config_id = 52034, gadget_id = 70310288, pos = { x = 515.284, y = 129.908, z = -50.932 }, rot = { x = 88.513, y = 195.571, z = 280.209 }, level = 20, persistent = true, mark_flag = 1, area_id = 402 },
	{ config_id = 52035, gadget_id = 70310284, pos = { x = 515.331, y = 129.884, z = -50.859 }, rot = { x = 87.103, y = 141.583, z = 130.999 }, level = 20, persistent = true, area_id = 402 },
	{ config_id = 52036, gadget_id = 70310284, pos = { x = 506.808, y = 123.860, z = -50.883 }, rot = { x = 323.818, y = 172.202, z = 189.937 }, level = 20, persistent = true, area_id = 402 },
	{ config_id = 52037, gadget_id = 70310284, pos = { x = 506.887, y = 124.367, z = -59.460 }, rot = { x = 329.269, y = 7.080, z = 0.893 }, level = 20, persistent = true, area_id = 402 },
	{ config_id = 52038, gadget_id = 70310284, pos = { x = 514.485, y = 126.931, z = -54.638 }, rot = { x = 346.267, y = 215.703, z = 14.520 }, level = 20, persistent = true, area_id = 402 },
	{ config_id = 52039, gadget_id = 70310284, pos = { x = 508.000, y = 126.929, z = -54.948 }, rot = { x = 346.480, y = 144.807, z = 179.836 }, level = 20, persistent = true, area_id = 402 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 状态切换套一层单机刷交互
	{ config_id = 1052006, name = "GADGET_STATE_CHANGE_52006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_52006", trigger_count = 0 },
	-- 交互后判断单机可拾取
	{ config_id = 1052007, name = "SELECT_OPTION_52007", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_52007", action = "action_EVENT_SELECT_OPTION_52007", trigger_count = 0 },
	-- Load后判单机挂操作台
	{ config_id = 1052008, name = "GROUP_LOAD_52008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_52008", trigger_count = 0 },
	{ config_id = 1052017, name = "VARIABLE_CHANGE_52017", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_52017", action = "action_EVENT_VARIABLE_CHANGE_52017", trigger_count = 0 }
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
		gadgets = { 52001, 52002, 52003, 52004, 52005, 52010, 52012, 52014, 52016, 52020, 52022, 52023, 52024, 52025, 52027, 52028, 52029, 52031, 52032, 52033, 52034, 52035, 52036, 52037, 52038, 52039 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_52006", "SELECT_OPTION_52007", "GROUP_LOAD_52008", "VARIABLE_CHANGE_52017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_52006(context, evt)
	if ScriptLib.GetGadgetStateByConfigId(context, 0, 52010) == 201 then
		if ScriptLib.CheckIsInMpMode(context) then
			ScriptLib.DelWorktopOptionByGroupId(context, 0, 52005, 68)
		else
			ScriptLib.SetWorktopOptionsByGroupId(context, 0, 52005, {68})
		end
		
		ScriptLib.SetGroupVariableValue(context, "Open", 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_52007(context, evt)
	-- 判断是gadgetid 52005 option_id 68
	if 52005 ~= evt.param1 then
		return false	
	end
	
	if 68 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_52007(context, evt)
	if  ScriptLib.CheckIsInMpMode(context) then
		local pos = {x=511,y=122,z=-59}
		ScriptLib.ShowReminderRadius(context, 321700501, pos, 20)
	else
		ScriptLib.KillEntityByConfigId(context, { config_id = 52010 })
		ScriptLib.DelWorktopOptionByGroupId(context, 199001052, 52005, 68)
		ScriptLib.AddQuestProgress(context, "4007703")
		ScriptLib.SetGroupVariableValue(context, "Open", 2)
		
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_52008(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "Open") == 1 and (not ScriptLib.CheckIsInMpMode(context)) then
		ScriptLib.SetWorktopOptionsByGroupId(context, 0, 52005, {68})
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_52017(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"unlock_num"为2
	if ScriptLib.GetGroupVariableValue(context, "unlock_num") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_52017(context, evt)
	-- 将configid为 52003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 52003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 52010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 52010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 52038 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 52039 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 触发镜头注目，注目位置为坐标（511.0614，128.3273，-59.19723），持续时间为4秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=511.0614, y=128.3273, z=-59.19723}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 4, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

require "V2_8/DreamOperation"