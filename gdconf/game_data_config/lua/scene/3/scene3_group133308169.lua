-- 基础信息
local base_info = {
	group_id = 133308169
}

-- Trigger变量
local defs = {
	duration = 32,
	group_id = 133308169,
	collectable_sum = 18
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
	{ config_id = 169001, gadget_id = 70211101, pos = { x = -2069.111, y = 62.469, z = 4516.356 }, rot = { x = 335.971, y = 14.008, z = 353.304 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 26 },
	{ config_id = 169002, gadget_id = 70330343, pos = { x = -2118.671, y = 78.783, z = 4538.142 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 169003, gadget_id = 70360001, pos = { x = -2118.620, y = 79.807, z = 4538.144 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 169004, gadget_id = 70290501, pos = { x = -2117.514, y = 81.791, z = 4542.529 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 169005, gadget_id = 70290501, pos = { x = -2116.022, y = 82.944, z = 4547.216 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 169006, gadget_id = 70290501, pos = { x = -2112.997, y = 83.894, z = 4552.094 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 169007, gadget_id = 70290501, pos = { x = -2108.461, y = 85.005, z = 4556.376 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 169008, gadget_id = 70290501, pos = { x = -2102.344, y = 85.731, z = 4561.320 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 169009, gadget_id = 70290501, pos = { x = -2095.155, y = 84.099, z = 4560.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 169010, gadget_id = 70290501, pos = { x = -2094.623, y = 82.223, z = 4557.115 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 169011, gadget_id = 70290501, pos = { x = -2093.257, y = 79.736, z = 4552.408 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 169019, gadget_id = 70290501, pos = { x = -2092.209, y = 76.976, z = 4547.362 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 169020, gadget_id = 70290501, pos = { x = -2084.204, y = 75.562, z = 4546.148 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 169021, gadget_id = 70290501, pos = { x = -2076.506, y = 75.959, z = 4546.858 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 169022, gadget_id = 70290501, pos = { x = -2069.893, y = 74.655, z = 4542.936 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 169023, gadget_id = 70290501, pos = { x = -2067.610, y = 72.943, z = 4538.542 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 169024, gadget_id = 70290501, pos = { x = -2068.842, y = 71.176, z = 4534.347 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 169025, gadget_id = 70290501, pos = { x = -2069.667, y = 69.548, z = 4530.086 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 169026, gadget_id = 70290501, pos = { x = -2073.191, y = 68.237, z = 4526.569 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 169027, gadget_id = 70290501, pos = { x = -2071.126, y = 66.435, z = 4522.371 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 169028, gadget_id = 70290501, pos = { x = -2067.839, y = 64.644, z = 4518.344 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 169029, gadget_id = 70330409, pos = { x = -2105.943, y = 85.402, z = 4561.528 }, rot = { x = 339.644, y = 10.190, z = 343.266 }, level = 32, area_id = 26 },
	{ config_id = 169030, gadget_id = 70330409, pos = { x = -2088.402, y = 74.411, z = 4545.865 }, rot = { x = 329.438, y = 12.352, z = 349.022 }, level = 32, area_id = 26 },
	{ config_id = 169034, gadget_id = 70330409, pos = { x = -2070.483, y = 74.480, z = 4545.692 }, rot = { x = 339.474, y = 359.298, z = 2.759 }, level = 32, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1169012, name = "CHALLENGE_SUCCESS_169012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_169012", trigger_count = 0 },
	{ config_id = 1169013, name = "CHALLENGE_FAIL_169013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_169013", trigger_count = 0 },
	{ config_id = 1169014, name = "GADGET_STATE_CHANGE_169014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_169014", action = "action_EVENT_GADGET_STATE_CHANGE_169014", trigger_count = 0 },
	{ config_id = 1169015, name = "ANY_GADGET_DIE_169015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
	{ config_id = 1169016, name = "GADGET_CREATE_169016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_169016", action = "action_EVENT_GADGET_CREATE_169016", trigger_count = 0 },
	{ config_id = 1169017, name = "SELECT_OPTION_169017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_169017", action = "action_EVENT_SELECT_OPTION_169017", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1169018, name = "GROUP_LOAD_169018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_169018", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 169031, gadget_id = 70330409, pos = { x = -2142.875, y = 89.729, z = 4486.293 }, rot = { x = 8.520, y = 357.764, z = 330.641 }, level = 32, area_id = 26 },
		{ config_id = 169032, gadget_id = 70330409, pos = { x = -2130.549, y = 80.256, z = 4518.271 }, rot = { x = 7.789, y = 359.075, z = 346.470 }, level = 32, area_id = 26 },
		{ config_id = 169033, gadget_id = 70330409, pos = { x = -2119.680, y = 82.695, z = 4547.348 }, rot = { x = 342.560, y = 2.276, z = 345.240 }, level = 32, area_id = 26 }
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
		gadgets = { 169002, 169003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_169012", "CHALLENGE_FAIL_169013", "GADGET_STATE_CHANGE_169014", "ANY_GADGET_DIE_169015", "GADGET_CREATE_169016", "SELECT_OPTION_169017", "GROUP_LOAD_169018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 169004, 169005, 169006, 169007, 169008, 169009, 169010, 169011, 169019, 169020, 169021, 169022, 169023, 169024, 169025, 169026, 169027, 169028, 169029, 169030, 169034 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 169002 },
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
function action_EVENT_CHALLENGE_SUCCESS_169012(context, evt)
	-- 将configid为 169002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 169002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133308169, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133308169, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 创建id为169001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 169001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_169013(context, evt)
	-- 将configid为 169002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 169002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为169003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 169003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133308169, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_169014(context, evt)
	if 169002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_169014(context, evt)
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
function condition_EVENT_GADGET_CREATE_169016(context, evt)
	if 169003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_169016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133308169, 169003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_169017(context, evt)
	-- 判断是gadgetid 169003 option_id 177
	if 169003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_169017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 169003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 169002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 169002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标{x=-2117.514, y=81.79087, z=4542.529}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-2117.514, y=81.79087, z=4542.529}
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
function action_EVENT_GROUP_LOAD_169018(context, evt)
	-- 将configid为 169002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 169002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为169003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 169003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133308169, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end