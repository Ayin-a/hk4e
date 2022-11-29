-- 基础信息
local base_info = {
	group_id = 133315313
}

-- Trigger变量
local defs = {
	duration = 30,
	group_id = 133315313
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
	{ config_id = 313001, gadget_id = 70211101, pos = { x = 52.339, y = 292.246, z = 2318.463 }, rot = { x = 354.914, y = 331.709, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 20 },
	{ config_id = 313002, gadget_id = 70350083, pos = { x = -8.365, y = 260.780, z = 2368.553 }, rot = { x = 345.406, y = 282.176, z = 1.680 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 313003, gadget_id = 70360001, pos = { x = -8.365, y = 261.745, z = 2368.546 }, rot = { x = 345.406, y = 282.176, z = 1.680 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 313018, gadget_id = 70220103, pos = { x = 19.817, y = 274.473, z = 2346.903 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 313020, gadget_id = 70220103, pos = { x = 45.559, y = 293.097, z = 2327.103 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1313004, name = "SELECT_OPTION_313004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_313004", action = "action_EVENT_SELECT_OPTION_313004", trigger_count = 0 },
	{ config_id = 1313005, name = "CHALLENGE_SUCCESS_313005", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_313005", trigger_count = 0 },
	{ config_id = 1313006, name = "CHALLENGE_FAIL_313006", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_313006", trigger_count = 0 },
	{ config_id = 1313007, name = "GADGET_STATE_CHANGE_313007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_313007", action = "action_EVENT_GADGET_STATE_CHANGE_313007", trigger_count = 0 },
	{ config_id = 1313008, name = "GADGET_STATE_CHANGE_313008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_313008", action = "", tag = "202" },
	{ config_id = 1313009, name = "GADGET_CREATE_313009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_313009", action = "action_EVENT_GADGET_CREATE_313009", trigger_count = 0 },
	-- 开启后注目
	{ config_id = 1313010, name = "SELECT_OPTION_313010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_313010", action = "action_EVENT_SELECT_OPTION_313010", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1313011, name = "GROUP_LOAD_313011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_313011", trigger_count = 0 },
	-- 保底开宝箱，加变量
	{ config_id = 1313013, name = "GADGET_STATE_CHANGE_313013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_313013", action = "action_EVENT_GADGET_STATE_CHANGE_313013" },
	-- 保底取变量后成功
	{ config_id = 1313014, name = "VARIABLE_CHANGE_313014", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_313014", action = "action_EVENT_VARIABLE_CHANGE_313014", trigger_count = 0 }
}

-- 点位
points = {
	{ config_id = 313012, pos = { x = 42.520, y = 288.519, z = 2334.160 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 20 }
}

-- 变量
variables = {
	{ config_id = 1, name = "isopen", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 313015, gadget_id = 70330197, pos = { x = 9.342, y = 260.700, z = 2354.824 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 313016, gadget_id = 70330197, pos = { x = 19.817, y = 266.880, z = 2346.903 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 313017, gadget_id = 70220103, pos = { x = 9.231, y = 264.365, z = 2354.915 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 313019, gadget_id = 70220103, pos = { x = 29.228, y = 287.346, z = 2342.864 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 }
	}
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
		gadgets = { 313002, 313003 },
		regions = { },
		triggers = { "SELECT_OPTION_313004", "CHALLENGE_SUCCESS_313005", "CHALLENGE_FAIL_313006", "GADGET_STATE_CHANGE_313007", "GADGET_STATE_CHANGE_313008", "GADGET_CREATE_313009", "SELECT_OPTION_313010", "GROUP_LOAD_313011", "GADGET_STATE_CHANGE_313013", "VARIABLE_CHANGE_313014" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 313001 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 313002 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 313018, 313020 },
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
function condition_EVENT_SELECT_OPTION_313004(context, evt)
	-- 判断是gadgetid 313003 option_id 177
	if 313003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_313004(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 313003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 313002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 313002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133315313, 4)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_313005(context, evt)
	-- 将configid为 313002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 313002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133315313, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133315313, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133315313, 4)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_313006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133315313, 2)
	
	-- 将configid为 313002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 313002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为313003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 313003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133315313, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_313007(context, evt)
	if 313002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_313007(context, evt)
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
function condition_EVENT_GADGET_STATE_CHANGE_313008(context, evt)
	if 313001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_313009(context, evt)
	if 313003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_313009(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133315313, 313003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_313010(context, evt)
	-- 判断是gadgetid 313003 option_id 177
	if 313003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_313010(context, evt)
	-- 触发镜头注目，注目位置为坐标{x=42.52002, y=288.5188, z=2334.16}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=42.52002, y=288.5188, z=2334.16}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 1,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_313011(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133315313, 2)
	
	-- 将configid为 313002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 313002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为313003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 313003 }) then
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
function condition_EVENT_GADGET_STATE_CHANGE_313013(context, evt)
	if GadgetState.ChestOpened ~= ScriptLib.GetGadgetStateByConfigId(context, 133315313, 313001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_313013(context, evt)
	-- 将本组内变量名为 "isopen" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isopen", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_313014(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"isopen"为1
	if ScriptLib.GetGroupVariableValue(context, "isopen") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_313014(context, evt)
	-- 将configid为 313002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 313002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133315313, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133315313, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133315313, 4)
	
	return 0
end