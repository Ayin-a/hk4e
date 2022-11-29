-- 基础信息
local base_info = {
	group_id = 133312099
}

-- Trigger变量
local defs = {
	duration = 100,
	group_id = 133312099,
	collectable_sum = 22
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
	{ config_id = 99001, gadget_id = 70290501, pos = { x = -3174.320, y = 14.087, z = 4287.953 }, rot = { x = 0.000, y = 329.551, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 99002, gadget_id = 70330343, pos = { x = -3197.192, y = 29.309, z = 4282.413 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 28 },
	{ config_id = 99003, gadget_id = 70360001, pos = { x = -3197.192, y = 30.274, z = 4282.407 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 28 },
	{ config_id = 99004, gadget_id = 70290501, pos = { x = -3192.495, y = 30.167, z = 4284.959 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 28 },
	{ config_id = 99005, gadget_id = 70290501, pos = { x = -3187.177, y = 28.728, z = 4280.159 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 28 },
	{ config_id = 99006, gadget_id = 70290501, pos = { x = -3184.816, y = 27.007, z = 4276.405 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 28 },
	{ config_id = 99007, gadget_id = 70290501, pos = { x = -3180.826, y = 25.935, z = 4271.397 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 28 },
	{ config_id = 99008, gadget_id = 70290501, pos = { x = -3174.723, y = 24.286, z = 4269.516 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 28 },
	{ config_id = 99009, gadget_id = 70290501, pos = { x = -3171.585, y = 23.022, z = 4273.117 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 28 },
	{ config_id = 99010, gadget_id = 70290501, pos = { x = -3171.471, y = 16.627, z = 4277.237 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 28 },
	{ config_id = 99011, gadget_id = 70290501, pos = { x = -3171.049, y = 15.164, z = 4283.003 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 28 },
	{ config_id = 99019, gadget_id = 70290501, pos = { x = -3178.889, y = 13.866, z = 4292.056 }, rot = { x = 0.000, y = 329.551, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 99020, gadget_id = 70220103, pos = { x = -3188.442, y = 19.733, z = 4307.422 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 28 },
	{ config_id = 99022, gadget_id = 70290501, pos = { x = -3188.180, y = 18.549, z = 4308.036 }, rot = { x = 0.000, y = 329.551, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 99024, gadget_id = 70290501, pos = { x = -3186.013, y = 23.330, z = 4317.477 }, rot = { x = 0.000, y = 329.551, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 99025, gadget_id = 70290501, pos = { x = -3187.737, y = 29.429, z = 4324.177 }, rot = { x = 0.000, y = 329.551, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 99026, gadget_id = 70290501, pos = { x = -3190.301, y = 31.143, z = 4324.185 }, rot = { x = 0.000, y = 329.551, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 99027, gadget_id = 70290501, pos = { x = -3194.807, y = 31.408, z = 4323.099 }, rot = { x = 0.000, y = 329.551, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 99028, gadget_id = 70290501, pos = { x = -3199.099, y = 31.647, z = 4320.706 }, rot = { x = 0.000, y = 329.551, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 99029, gadget_id = 70290501, pos = { x = -3202.346, y = 31.834, z = 4315.446 }, rot = { x = 0.000, y = 329.551, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 99030, gadget_id = 70290501, pos = { x = -3204.108, y = 31.454, z = 4309.142 }, rot = { x = 0.000, y = 329.551, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 99031, gadget_id = 70290501, pos = { x = -3200.529, y = 30.431, z = 4303.032 }, rot = { x = 0.000, y = 329.551, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 99032, gadget_id = 70290501, pos = { x = -3198.018, y = 30.290, z = 4299.234 }, rot = { x = 0.000, y = 329.551, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 99033, gadget_id = 70290501, pos = { x = -3196.820, y = 30.402, z = 4295.670 }, rot = { x = 0.000, y = 329.551, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 99034, gadget_id = 70290501, pos = { x = -3195.956, y = 30.187, z = 4291.387 }, rot = { x = 0.000, y = 329.551, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 99035, gadget_id = 70220103, pos = { x = -3186.123, y = 24.308, z = 4315.705 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 28 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1099012, name = "CHALLENGE_SUCCESS_99012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_99012", trigger_count = 0 },
	{ config_id = 1099013, name = "CHALLENGE_FAIL_99013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_99013", trigger_count = 0 },
	{ config_id = 1099014, name = "GADGET_STATE_CHANGE_99014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_99014", action = "action_EVENT_GADGET_STATE_CHANGE_99014", trigger_count = 0 },
	{ config_id = 1099015, name = "ANY_GADGET_DIE_99015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
	{ config_id = 1099016, name = "GADGET_CREATE_99016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_99016", action = "action_EVENT_GADGET_CREATE_99016", trigger_count = 0 },
	{ config_id = 1099017, name = "SELECT_OPTION_99017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_99017", action = "action_EVENT_SELECT_OPTION_99017", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1099018, name = "GROUP_LOAD_99018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_99018", trigger_count = 0 }
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
		gadgets = { 99002, 99003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_99012", "CHALLENGE_FAIL_99013", "GADGET_STATE_CHANGE_99014", "ANY_GADGET_DIE_99015", "GADGET_CREATE_99016", "SELECT_OPTION_99017", "GROUP_LOAD_99018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 99001, 99004, 99005, 99006, 99007, 99008, 99009, 99010, 99011, 99019, 99020, 99022, 99024, 99025, 99026, 99027, 99028, 99029, 99030, 99031, 99032, 99033, 99034, 99035 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 99002 },
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

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_99012(context, evt)
	-- 将configid为 99002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 99002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133312099, 2)
	
	-- 将本组内变量名为 "finish001" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "finish001", 1, 133312087) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133312099, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_99013(context, evt)
	-- 将configid为 99002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 99002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为99003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 99003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133312099, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_99014(context, evt)
	if 99002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_99014(context, evt)
	-- 247号挑战,duration内开启宝箱
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 271, defs.duration, 2, 218, defs.collectable_sum) then
	return -1
	end
	
	-- 添加suite2的新内容
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 1, 1) then
	return -1
	end
	
	return 0
	
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_99016(context, evt)
	if 99003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_99016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133312099, 99003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_99017(context, evt)
	-- 判断是gadgetid 99003 option_id 177
	if 99003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_99017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 99003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 99002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 99002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标{x=-3192.495, y=30.16663, z=4284.959}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-3192.495, y=30.16663, z=4284.959}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_99018(context, evt)
	-- 将configid为 99002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 99002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为99003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 99003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133312099, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end