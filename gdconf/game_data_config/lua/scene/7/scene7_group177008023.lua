-- 基础信息
local base_info = {
	group_id = 177008023
}

-- Trigger变量
local defs = {
	duration = 80,
	group_id = 177008023,
	collectable_sum = 8
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
	{ config_id = 23001, gadget_id = 70211160, pos = { x = -471.568, y = 215.939, z = 372.022 }, rot = { x = 3.350, y = 86.964, z = 359.980 }, level = 16, drop_tag = "渊下宫活动低级稻妻", isOneoff = true, persistent = true, area_id = 210 },
	{ config_id = 23002, gadget_id = 70350083, pos = { x = -347.505, y = 266.129, z = 365.812 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, persistent = true, area_id = 210 },
	{ config_id = 23003, gadget_id = 70360001, pos = { x = -347.505, y = 267.153, z = 365.787 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, persistent = true, area_id = 210 },
	{ config_id = 23004, gadget_id = 70290150, pos = { x = -349.619, y = 266.952, z = 365.366 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 210 },
	{ config_id = 23005, gadget_id = 70290150, pos = { x = -462.099, y = 236.612, z = 365.366 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 23006, gadget_id = 70290150, pos = { x = -385.922, y = 265.255, z = 365.366 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 23007, gadget_id = 70290150, pos = { x = -389.432, y = 264.531, z = 365.366 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 23008, gadget_id = 70290150, pos = { x = -411.993, y = 260.743, z = 365.366 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 23009, gadget_id = 70290150, pos = { x = -414.644, y = 260.288, z = 365.366 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 23010, gadget_id = 70290150, pos = { x = -450.468, y = 244.254, z = 365.366 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 23011, gadget_id = 70290150, pos = { x = -457.203, y = 241.277, z = 365.366 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 23019, gadget_id = 70690001, pos = { x = -353.367, y = 265.855, z = 365.504 }, rot = { x = 0.603, y = 270.795, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 23020, gadget_id = 70690001, pos = { x = -358.452, y = 265.782, z = 365.601 }, rot = { x = 0.603, y = 270.795, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 23021, gadget_id = 70690001, pos = { x = -365.451, y = 265.708, z = 365.698 }, rot = { x = 0.603, y = 270.795, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 23023, gadget_id = 70690001, pos = { x = -395.073, y = 263.282, z = 365.778 }, rot = { x = 6.804, y = 269.807, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 23024, gadget_id = 70690001, pos = { x = -402.023, y = 262.453, z = 365.755 }, rot = { x = 6.804, y = 269.807, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 23025, gadget_id = 70690001, pos = { x = -421.873, y = 257.639, z = 365.827 }, rot = { x = 26.539, y = 269.868, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 23026, gadget_id = 70690001, pos = { x = -428.136, y = 254.511, z = 365.813 }, rot = { x = 26.539, y = 269.868, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 23027, gadget_id = 70690001, pos = { x = -434.398, y = 251.384, z = 365.798 }, rot = { x = 26.539, y = 269.867, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 23028, gadget_id = 70690001, pos = { x = -440.661, y = 248.256, z = 365.784 }, rot = { x = 26.539, y = 269.867, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 23029, gadget_id = 70290150, pos = { x = -453.435, y = 243.093, z = 365.366 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 23030, gadget_id = 70290150, pos = { x = -417.285, y = 259.460, z = 365.334 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1023012, name = "CHALLENGE_SUCCESS_23012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_23012", trigger_count = 0 },
	{ config_id = 1023013, name = "CHALLENGE_FAIL_23013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_23013", trigger_count = 0 },
	{ config_id = 1023014, name = "GADGET_STATE_CHANGE_23014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_23014", action = "action_EVENT_GADGET_STATE_CHANGE_23014", trigger_count = 0 },
	{ config_id = 1023015, name = "ANY_GADGET_DIE_23015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
	{ config_id = 1023016, name = "GADGET_CREATE_23016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_23016", action = "action_EVENT_GADGET_CREATE_23016", trigger_count = 0 },
	{ config_id = 1023017, name = "SELECT_OPTION_23017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_23017", action = "action_EVENT_SELECT_OPTION_23017", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1023018, name = "GROUP_LOAD_23018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_23018", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 23022, gadget_id = 70690001, pos = { x = -372.450, y = 265.635, z = 365.795 }, rot = { x = 0.603, y = 270.795, z = 0.000 }, level = 36, area_id = 210 }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 23002, 23003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_23012", "CHALLENGE_FAIL_23013", "GADGET_STATE_CHANGE_23014", "ANY_GADGET_DIE_23015", "GADGET_CREATE_23016", "SELECT_OPTION_23017", "GROUP_LOAD_23018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 23004, 23005, 23006, 23007, 23008, 23009, 23010, 23011, 23019, 23020, 23021, 23023, 23024, 23025, 23026, 23027, 23028, 23029, 23030 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 23002 },
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
function action_EVENT_CHALLENGE_SUCCESS_23012(context, evt)
	-- 将configid为 23002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 23002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 177008023, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 177008023, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 创建id为23001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 23001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_23013(context, evt)
	-- 将configid为 23002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 23002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为23003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 23003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 177008023, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_23014(context, evt)
	if 23002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_23014(context, evt)
	-- 247号挑战,duration内开启宝箱
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 2005019, defs.duration, 2, 218, defs.collectable_sum) then
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
function condition_EVENT_GADGET_CREATE_23016(context, evt)
	if 23003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_23016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 177008023, 23003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_23017(context, evt)
	-- 判断是gadgetid 23003 option_id 177
	if 23003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_23017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 23003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 23002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 23002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（-349.6，267，365.4），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-349.6, y=267, z=365.4}
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
function action_EVENT_GROUP_LOAD_23018(context, evt)
	-- 将configid为 23002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 23002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为23003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 23003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 177008023, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end