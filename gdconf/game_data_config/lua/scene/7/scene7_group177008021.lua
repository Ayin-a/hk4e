-- 基础信息
local base_info = {
	group_id = 177008021
}

-- Trigger变量
local defs = {
	duration = 60,
	group_id = 177008021,
	collectable_sum = 13
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
	{ config_id = 21001, gadget_id = 70211160, pos = { x = -185.490, y = 246.778, z = 197.961 }, rot = { x = 0.000, y = 62.075, z = 0.000 }, level = 16, drop_tag = "渊下宫活动低级稻妻", isOneoff = true, persistent = true, area_id = 210 },
	{ config_id = 21002, gadget_id = 70350083, pos = { x = -94.095, y = 253.785, z = 153.418 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, persistent = true, area_id = 210 },
	{ config_id = 21003, gadget_id = 70360001, pos = { x = -94.090, y = 254.134, z = 152.960 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, persistent = true, area_id = 210 },
	{ config_id = 21004, gadget_id = 70290150, pos = { x = -94.208, y = 246.764, z = 171.770 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 210 },
	{ config_id = 21005, gadget_id = 70290150, pos = { x = -94.061, y = 243.472, z = 178.009 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 210 },
	{ config_id = 21006, gadget_id = 70290150, pos = { x = -93.436, y = 240.999, z = 189.523 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 210 },
	{ config_id = 21007, gadget_id = 70290150, pos = { x = -104.505, y = 258.548, z = 201.445 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 210 },
	{ config_id = 21008, gadget_id = 70290150, pos = { x = -106.513, y = 269.332, z = 201.445 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 210 },
	{ config_id = 21009, gadget_id = 70290150, pos = { x = -106.799, y = 279.351, z = 201.445 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 210 },
	{ config_id = 21010, gadget_id = 70290150, pos = { x = -107.622, y = 289.236, z = 201.445 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 210 },
	{ config_id = 21011, gadget_id = 70290150, pos = { x = -127.031, y = 284.435, z = 201.319 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 210 },
	{ config_id = 21019, gadget_id = 70290150, pos = { x = -128.313, y = 277.290, z = 201.319 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 210 },
	{ config_id = 21020, gadget_id = 70290150, pos = { x = -131.783, y = 265.478, z = 201.319 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 210 },
	{ config_id = 21021, gadget_id = 70290150, pos = { x = -137.361, y = 260.888, z = 201.319 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 210 },
	{ config_id = 21022, gadget_id = 70290150, pos = { x = -149.614, y = 254.944, z = 200.741 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 210 },
	{ config_id = 21023, gadget_id = 70290150, pos = { x = -163.410, y = 253.877, z = 200.237 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 210 },
	{ config_id = 21024, gadget_id = 70690001, pos = { x = -93.687, y = 252.999, z = 163.297 }, rot = { x = 36.746, y = 0.116, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 21025, gadget_id = 70690001, pos = { x = -93.676, y = 248.811, z = 168.906 }, rot = { x = 31.390, y = 0.437, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 21026, gadget_id = 70690001, pos = { x = -93.630, y = 245.177, z = 174.862 }, rot = { x = 27.389, y = 0.653, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 21027, gadget_id = 70690001, pos = { x = -93.560, y = 241.957, z = 181.076 }, rot = { x = 7.900, y = 0.983, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 21028, gadget_id = 70690001, pos = { x = -93.443, y = 241.015, z = 187.863 }, rot = { x = 0.826, y = 1.091, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 21029, gadget_id = 70690001, pos = { x = -93.310, y = 240.914, z = 194.861 }, rot = { x = 356.742, y = 1.293, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 21030, gadget_id = 70690001, pos = { x = -93.162, y = 241.286, z = 201.400 }, rot = { x = 273.023, y = 71.049, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 21031, gadget_id = 70690001, pos = { x = -92.813, y = 248.276, z = 201.520 }, rot = { x = 296.634, y = 268.892, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 21032, gadget_id = 70690001, pos = { x = -96.437, y = 252.811, z = 201.439 }, rot = { x = 343.997, y = 268.381, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 21033, gadget_id = 70690001, pos = { x = -101.869, y = 254.959, z = 201.286 }, rot = { x = 310.040, y = 268.884, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 21034, gadget_id = 70690001, pos = { x = -106.140, y = 260.042, z = 201.202 }, rot = { x = 272.946, y = 278.158, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 21035, gadget_id = 70690001, pos = { x = -106.496, y = 267.033, z = 201.253 }, rot = { x = 272.946, y = 278.161, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 21036, gadget_id = 70690001, pos = { x = -106.852, y = 274.024, z = 201.304 }, rot = { x = 272.946, y = 278.158, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 21037, gadget_id = 70690001, pos = { x = -107.208, y = 281.014, z = 201.356 }, rot = { x = 272.946, y = 278.161, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 21038, gadget_id = 70690001, pos = { x = -107.565, y = 288.005, z = 201.407 }, rot = { x = 272.946, y = 278.161, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 21039, gadget_id = 70690001, pos = { x = -107.921, y = 294.996, z = 201.458 }, rot = { x = 3.062, y = 269.054, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 21040, gadget_id = 70690001, pos = { x = -113.898, y = 294.676, z = 201.359 }, rot = { x = 15.846, y = 268.934, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 21041, gadget_id = 70690001, pos = { x = -122.729, y = 294.098, z = 201.188 }, rot = { x = 62.787, y = 268.760, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 21042, gadget_id = 70690001, pos = { x = -126.382, y = 289.238, z = 201.109 }, rot = { x = 82.974, y = 267.275, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 21043, gadget_id = 70690001, pos = { x = -127.237, y = 282.290, z = 201.068 }, rot = { x = 80.753, y = 267.760, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 21044, gadget_id = 70690001, pos = { x = -128.361, y = 275.386, z = 201.025 }, rot = { x = 77.804, y = 268.156, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 21045, gadget_id = 70690001, pos = { x = -129.833, y = 268.571, z = 200.977 }, rot = { x = 52.301, y = 269.146, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 21046, gadget_id = 70690001, pos = { x = -134.113, y = 263.032, z = 200.913 }, rot = { x = 37.968, y = 269.341, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 21047, gadget_id = 70690001, pos = { x = -139.526, y = 258.807, z = 200.851 }, rot = { x = 24.795, y = 268.808, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 21048, gadget_id = 70690001, pos = { x = -145.828, y = 255.895, z = 200.720 }, rot = { x = 13.050, y = 267.356, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 21049, gadget_id = 70690001, pos = { x = -152.640, y = 254.315, z = 200.405 }, rot = { x = 3.433, y = 268.223, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 21050, gadget_id = 70690001, pos = { x = -159.584, y = 253.898, z = 200.190 }, rot = { x = 359.487, y = 268.571, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 21051, gadget_id = 70690001, pos = { x = -166.581, y = 253.961, z = 200.015 }, rot = { x = 359.487, y = 268.571, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 21052, gadget_id = 70690001, pos = { x = -173.202, y = 254.020, z = 199.850 }, rot = { x = 359.487, y = 268.571, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 21053, gadget_id = 70690011, pos = { x = -92.353, y = 228.300, z = 201.586 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 21054, gadget_id = 70290150, pos = { x = -171.563, y = 253.914, z = 199.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 21055, gadget_id = 70290150, pos = { x = -176.424, y = 253.802, z = 199.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1021012, name = "CHALLENGE_SUCCESS_21012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_21012", trigger_count = 0 },
	{ config_id = 1021013, name = "CHALLENGE_FAIL_21013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_21013", trigger_count = 0 },
	{ config_id = 1021014, name = "GADGET_STATE_CHANGE_21014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_21014", action = "action_EVENT_GADGET_STATE_CHANGE_21014", trigger_count = 0 },
	{ config_id = 1021015, name = "ANY_GADGET_DIE_21015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
	{ config_id = 1021016, name = "GADGET_CREATE_21016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_21016", action = "action_EVENT_GADGET_CREATE_21016", trigger_count = 0 },
	{ config_id = 1021017, name = "SELECT_OPTION_21017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_21017", action = "action_EVENT_SELECT_OPTION_21017", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1021018, name = "GROUP_LOAD_21018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_21018", trigger_count = 0 }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 21002, 21003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_21012", "CHALLENGE_FAIL_21013", "GADGET_STATE_CHANGE_21014", "ANY_GADGET_DIE_21015", "GADGET_CREATE_21016", "SELECT_OPTION_21017", "GROUP_LOAD_21018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 21004, 21005, 21006, 21007, 21008, 21009, 21010, 21011, 21019, 21020, 21021, 21022, 21023, 21024, 21025, 21026, 21027, 21032, 21033, 21034, 21035, 21036, 21037, 21041, 21042, 21043, 21044, 21045, 21046, 21047, 21048, 21049, 21050, 21051, 21053, 21054, 21055 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 21002 },
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
function action_EVENT_CHALLENGE_SUCCESS_21012(context, evt)
	-- 将configid为 21002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 21002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 177008021, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 177008021, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 创建id为21001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 21001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_21013(context, evt)
	-- 将configid为 21002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 21002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为21003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 21003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 177008021, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_21014(context, evt)
	if 21002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_21014(context, evt)
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
function condition_EVENT_GADGET_CREATE_21016(context, evt)
	if 21003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_21016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 177008021, 21003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_21017(context, evt)
	-- 判断是gadgetid 21003 option_id 177
	if 21003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_21017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 21003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 21002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 21002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（-94，246，169），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-94, y=246, z=169}
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
function action_EVENT_GROUP_LOAD_21018(context, evt)
	-- 将configid为 21002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 21002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为21003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 21003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 177008021, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end