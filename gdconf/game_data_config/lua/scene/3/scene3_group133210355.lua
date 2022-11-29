-- 基础信息
local base_info = {
	group_id = 133210355
}

-- Trigger变量
local defs = {
	duration = 120,
	sum = 10,
	group_id = 133210355
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
	{ config_id = 355001, gadget_id = 70350083, pos = { x = -3881.396, y = 156.804, z = -1046.870 }, rot = { x = 10.259, y = 2.732, z = 12.755 }, level = 1, area_id = 17 },
	{ config_id = 355002, gadget_id = 70360001, pos = { x = -3881.505, y = 157.805, z = -1046.714 }, rot = { x = 10.259, y = 2.732, z = 12.755 }, level = 1, area_id = 17 },
	{ config_id = 355003, gadget_id = 70330064, pos = { x = -3884.445, y = 156.544, z = -1048.871 }, rot = { x = 0.000, y = 0.000, z = 14.950 }, level = 1, interact_id = 35, area_id = 17 },
	{ config_id = 355004, gadget_id = 70900380, pos = { x = -3872.585, y = 163.923, z = -1045.005 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 355005, gadget_id = 70900380, pos = { x = -3868.694, y = 176.159, z = -1044.059 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 355006, gadget_id = 70290150, pos = { x = -3866.266, y = 179.526, z = -1047.193 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 355007, gadget_id = 70900380, pos = { x = -3874.350, y = 185.361, z = -1043.520 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 355008, gadget_id = 70900380, pos = { x = -3850.031, y = 187.616, z = -1043.168 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 355009, gadget_id = 70900380, pos = { x = -3841.688, y = 179.577, z = -1042.766 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 355010, gadget_id = 70290150, pos = { x = -3868.025, y = 185.622, z = -1047.193 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 355011, gadget_id = 70290150, pos = { x = -3870.000, y = 191.595, z = -1047.193 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 355012, gadget_id = 70290150, pos = { x = -3871.755, y = 197.996, z = -1047.193 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 355013, gadget_id = 70290150, pos = { x = -3865.985, y = 159.742, z = -1047.193 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 355014, gadget_id = 70290150, pos = { x = -3874.870, y = 172.465, z = -1047.193 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 355015, gadget_id = 70290150, pos = { x = -3874.777, y = 178.326, z = -1047.193 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 355016, gadget_id = 70290150, pos = { x = -3844.675, y = 173.386, z = -1047.160 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 355017, gadget_id = 70290150, pos = { x = -3844.453, y = 179.360, z = -1047.160 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 355018, gadget_id = 70290150, pos = { x = -3845.562, y = 189.339, z = -1049.823 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 355019, gadget_id = 70290150, pos = { x = -3845.562, y = 195.434, z = -1049.823 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 355020, gadget_id = 70330064, pos = { x = -3884.305, y = 184.104, z = -1049.779 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, interact_id = 35, area_id = 17 },
	{ config_id = 355021, gadget_id = 70330064, pos = { x = -3855.778, y = 200.112, z = -1053.843 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, interact_id = 35, area_id = 17 },
	{ config_id = 355022, gadget_id = 70330064, pos = { x = -3841.142, y = 157.088, z = -1046.784 }, rot = { x = 11.036, y = 0.192, z = 1.986 }, level = 1, interact_id = 35, area_id = 17 },
	{ config_id = 355023, gadget_id = 70290150, pos = { x = -3859.625, y = 154.561, z = -1047.193 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 355024, gadget_id = 70290150, pos = { x = -3859.625, y = 149.511, z = -1047.193 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 355031, gadget_id = 70290150, pos = { x = -3866.023, y = 165.335, z = -1047.193 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 355032, gadget_id = 70900380, pos = { x = -3849.887, y = 169.004, z = -1044.469 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 355033, gadget_id = 70900380, pos = { x = -3878.479, y = 196.991, z = -1048.108 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 355034, gadget_id = 70900380, pos = { x = -3860.097, y = 144.229, z = -1045.336 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 355037, gadget_id = 70900380, pos = { x = -3863.583, y = 152.271, z = -1045.528 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 355038, gadget_id = 70330064, pos = { x = -3860.189, y = 135.831, z = -1053.399 }, rot = { x = 0.000, y = 258.722, z = 0.000 }, level = 1, interact_id = 35, area_id = 17 },
	{ config_id = 355039, gadget_id = 70900380, pos = { x = -3845.205, y = 198.730, z = -1043.168 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1355025, name = "GADGET_CREATE_355025", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_355025", action = "action_EVENT_GADGET_CREATE_355025", trigger_count = 0 },
	{ config_id = 1355026, name = "SELECT_OPTION_355026", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_355026", action = "action_EVENT_SELECT_OPTION_355026", trigger_count = 0 },
	{ config_id = 1355027, name = "GADGET_STATE_CHANGE_355027", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_355027", action = "action_EVENT_GADGET_STATE_CHANGE_355027", trigger_count = 0 },
	{ config_id = 1355028, name = "CHALLENGE_SUCCESS_355028", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_355028", trigger_count = 0 },
	{ config_id = 1355029, name = "CHALLENGE_FAIL_355029", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_355029", trigger_count = 0 },
	{ config_id = 1355030, name = "ANY_GADGET_DIE_355030", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "999" }
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
	end_suite = 3,
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
		gadgets = { 355001, 355002, 355003 },
		regions = { },
		triggers = { "GADGET_CREATE_355025", "SELECT_OPTION_355026", "GADGET_STATE_CHANGE_355027", "CHALLENGE_SUCCESS_355028", "CHALLENGE_FAIL_355029", "ANY_GADGET_DIE_355030" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 355004, 355005, 355006, 355007, 355008, 355009, 355010, 355011, 355012, 355013, 355014, 355015, 355016, 355017, 355018, 355019, 355020, 355021, 355022, 355023, 355024, 355031, 355032, 355033, 355034, 355037, 355038, 355039 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_355025(context, evt)
	if 355002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_355025(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210355, 355002, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_355026(context, evt)
	-- 判断是gadgetid 355002 option_id 7
	if 355002 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_355026(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 355002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 355001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 355001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（-3868.025，178.3364，-1047.193），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-3868.025, y=178.3364, z=-1047.193}
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
function condition_EVENT_GADGET_STATE_CHANGE_355027(context, evt)
	if 355001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_355027(context, evt)
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 77, defs.duration, 2, 999, defs.sum) then
	return -1
	end
	
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_355028(context, evt)
	-- 将configid为 355001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 355001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133210355, 2)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 355003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133210355, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_355029(context, evt)
	-- 将configid为 355001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 355001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为355002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 355002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133210355, 2)
	
	return 0
end

require "V2_0/ElectricCore"