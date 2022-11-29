-- 基础信息
local base_info = {
	group_id = 133310491
}

-- Trigger变量
local defs = {
	duration = 50,
	group_id = 133310491
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
	{ config_id = 491001, gadget_id = 70211101, pos = { x = -3277.063, y = 287.291, z = 4500.735 }, rot = { x = 16.979, y = 37.093, z = 3.765 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 28 },
	{ config_id = 491002, gadget_id = 70330343, pos = { x = -3240.995, y = 279.079, z = 4643.656 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 28 },
	{ config_id = 491003, gadget_id = 70360001, pos = { x = -3240.886, y = 280.204, z = 4643.742 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 28 },
	{ config_id = 491004, gadget_id = 70330392, pos = { x = -3242.669, y = 276.858, z = 4632.539 }, rot = { x = 0.000, y = 351.614, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 491005, gadget_id = 70330392, pos = { x = -3241.210, y = 276.858, z = 4622.646 }, rot = { x = 0.000, y = 351.614, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 491006, gadget_id = 70330392, pos = { x = -3231.316, y = 276.858, z = 4624.104 }, rot = { x = 0.000, y = 351.614, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 491014, gadget_id = 70330392, pos = { x = -3232.775, y = 276.858, z = 4633.997 }, rot = { x = 0.000, y = 351.614, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 491015, gadget_id = 70220103, pos = { x = -3230.620, y = 286.646, z = 4594.290 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 28 },
	{ config_id = 491016, gadget_id = 70330392, pos = { x = -3237.520, y = 283.457, z = 4582.762 }, rot = { x = 0.000, y = 9.076, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 491017, gadget_id = 70330392, pos = { x = -3235.942, y = 283.457, z = 4592.636 }, rot = { x = 0.000, y = 9.076, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 491018, gadget_id = 70330392, pos = { x = -3226.068, y = 283.457, z = 4591.059 }, rot = { x = 0.000, y = 9.076, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 491019, gadget_id = 70330392, pos = { x = -3227.645, y = 283.457, z = 4581.185 }, rot = { x = 0.000, y = 9.076, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 491020, gadget_id = 70330392, pos = { x = -3251.147, y = 287.347, z = 4546.665 }, rot = { x = 0.000, y = 28.401, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 491021, gadget_id = 70330392, pos = { x = -3246.391, y = 287.347, z = 4555.460 }, rot = { x = 0.000, y = 28.401, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 491022, gadget_id = 70330392, pos = { x = -3237.594, y = 287.347, z = 4550.705 }, rot = { x = 0.000, y = 28.401, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 491023, gadget_id = 70330392, pos = { x = -3242.350, y = 287.347, z = 4541.909 }, rot = { x = 0.000, y = 28.401, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 491024, gadget_id = 70220103, pos = { x = -3239.803, y = 290.276, z = 4556.706 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 28 },
	{ config_id = 491025, gadget_id = 70220103, pos = { x = -3271.650, y = 287.116, z = 4508.040 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 28 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1491007, name = "CHALLENGE_SUCCESS_491007", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_491007", trigger_count = 0 },
	{ config_id = 1491008, name = "CHALLENGE_FAIL_491008", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_491008", trigger_count = 0 },
	{ config_id = 1491009, name = "GADGET_STATE_CHANGE_491009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_491009", action = "action_EVENT_GADGET_STATE_CHANGE_491009", trigger_count = 0 },
	{ config_id = 1491010, name = "GADGET_STATE_CHANGE_491010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_491010", action = "", tag = "202" },
	{ config_id = 1491011, name = "GADGET_CREATE_491011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_491011", action = "action_EVENT_GADGET_CREATE_491011", trigger_count = 0 },
	{ config_id = 1491012, name = "SELECT_OPTION_491012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_491012", action = "action_EVENT_SELECT_OPTION_491012", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1491013, name = "GROUP_LOAD_491013", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_491013", trigger_count = 0 },
	-- 保底，宝箱被打开改chestOpen变量为1
	{ config_id = 1491026, name = "GADGET_STATE_CHANGE_491026", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_491026", action = "action_EVENT_GADGET_STATE_CHANGE_491026" },
	-- chestOpen改变，走挑战成功逻辑
	{ config_id = 1491027, name = "VARIABLE_CHANGE_491027", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_491027", action = "action_EVENT_VARIABLE_CHANGE_491027", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "chestOpen", value = 0, no_refresh = true }
}

-- 视野组
sight_groups = {
	{ 491002, 491001 }
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
		gadgets = { 491002, 491003, 491024, 491025 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_491007", "CHALLENGE_FAIL_491008", "GADGET_STATE_CHANGE_491009", "GADGET_STATE_CHANGE_491010", "GADGET_CREATE_491011", "SELECT_OPTION_491012", "GROUP_LOAD_491013", "GADGET_STATE_CHANGE_491026", "VARIABLE_CHANGE_491027" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 491001, 491004, 491005, 491006, 491014, 491015, 491016, 491017, 491018, 491019, 491020, 491021, 491022, 491023 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 491002 },
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
function action_EVENT_CHALLENGE_SUCCESS_491007(context, evt)
	-- 将configid为 491002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 491002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133310491, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133310491, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_491008(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133310491, 2)
	
	-- 将configid为 491002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 491002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为491003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 491003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_491009(context, evt)
	if 491002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_491009(context, evt)
	-- 202号挑战,duration内开启宝箱
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 202, defs.duration, 7, 202, 1) then
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
function condition_EVENT_GADGET_STATE_CHANGE_491010(context, evt)
	if 491001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_491011(context, evt)
	if 491003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_491011(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133310491, 491003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_491012(context, evt)
	-- 判断是gadgetid 491003 option_id 177
	if 491003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_491012(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 491003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 491002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 491002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标{x=-3280.065, y=288.7919, z=4495.209}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-3280.065, y=288.7919, z=4495.209}
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
function action_EVENT_GROUP_LOAD_491013(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133310491, 2)
	
	-- 将configid为 491002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 491002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为491003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 491003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_491026(context, evt)
	if 491001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_491026(context, evt)
	-- 将本组内变量名为 "chestOpen" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "chestOpen", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_491027(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"chestOpen"为1
	if ScriptLib.GetGroupVariableValue(context, "chestOpen") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_491027(context, evt)
	-- 将configid为 491002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 491002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133310491, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133310491, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end