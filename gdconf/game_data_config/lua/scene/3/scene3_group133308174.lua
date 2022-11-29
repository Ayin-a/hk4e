-- 基础信息
local base_info = {
	group_id = 133308174
}

-- Trigger变量
local defs = {
	duration = 50,
	group_id = 133308174
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
	{ config_id = 174001, gadget_id = 70211101, pos = { x = -2321.697, y = 367.265, z = 4119.358 }, rot = { x = 0.000, y = 69.597, z = 1.836 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 26 },
	{ config_id = 174002, gadget_id = 70330343, pos = { x = -2264.971, y = 356.660, z = 4159.530 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 174003, gadget_id = 70360001, pos = { x = -2264.854, y = 357.673, z = 4159.528 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 174004, gadget_id = 70330392, pos = { x = -2283.340, y = 355.569, z = 4150.840 }, rot = { x = 0.000, y = 335.193, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 174012, gadget_id = 70330392, pos = { x = -2274.241, y = 355.569, z = 4155.046 }, rot = { x = 0.000, y = 335.193, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 174013, gadget_id = 70330392, pos = { x = -2292.459, y = 355.569, z = 4146.625 }, rot = { x = 0.000, y = 335.193, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 174014, gadget_id = 70330393, pos = { x = -2288.862, y = 359.055, z = 4136.440 }, rot = { x = 0.000, y = 244.180, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 174015, gadget_id = 70330392, pos = { x = -2285.955, y = 361.727, z = 4127.752 }, rot = { x = 0.000, y = 335.193, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 174016, gadget_id = 70330392, pos = { x = -2294.911, y = 361.818, z = 4123.612 }, rot = { x = 0.000, y = 335.193, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 174017, gadget_id = 70330392, pos = { x = -2287.539, y = 355.569, z = 4159.924 }, rot = { x = 0.000, y = 335.193, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 174018, gadget_id = 70330392, pos = { x = -2291.723, y = 355.569, z = 4168.975 }, rot = { x = 0.000, y = 335.193, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 174019, gadget_id = 70330392, pos = { x = -2300.800, y = 355.569, z = 4164.779 }, rot = { x = 0.000, y = 335.193, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 174020, gadget_id = 70330392, pos = { x = -2305.031, y = 360.966, z = 4162.882 }, rot = { x = 90.000, y = 65.364, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 174021, gadget_id = 70220103, pos = { x = -2270.516, y = 358.276, z = 4168.917 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 26 },
	{ config_id = 174022, gadget_id = 70220103, pos = { x = -2302.011, y = 365.272, z = 4127.156 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1174005, name = "CHALLENGE_SUCCESS_174005", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_174005", trigger_count = 0 },
	{ config_id = 1174006, name = "CHALLENGE_FAIL_174006", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_174006", trigger_count = 0 },
	{ config_id = 1174007, name = "GADGET_STATE_CHANGE_174007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_174007", action = "action_EVENT_GADGET_STATE_CHANGE_174007", trigger_count = 0 },
	{ config_id = 1174008, name = "GADGET_STATE_CHANGE_174008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_174008", action = "", tag = "202" },
	{ config_id = 1174009, name = "GADGET_CREATE_174009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_174009", action = "action_EVENT_GADGET_CREATE_174009", trigger_count = 0 },
	{ config_id = 1174010, name = "SELECT_OPTION_174010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_174010", action = "action_EVENT_SELECT_OPTION_174010", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1174011, name = "GROUP_LOAD_174011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_174011", trigger_count = 0 }
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
		gadgets = { 174002, 174003, 174021 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_174005", "CHALLENGE_FAIL_174006", "GADGET_STATE_CHANGE_174007", "GADGET_STATE_CHANGE_174008", "GADGET_CREATE_174009", "SELECT_OPTION_174010", "GROUP_LOAD_174011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 174001, 174004, 174012, 174013, 174014, 174015, 174016, 174017, 174018, 174019, 174020 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 174002, 174021, 174022 },
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
function action_EVENT_CHALLENGE_SUCCESS_174005(context, evt)
	-- 将configid为 174002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 174002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133308174, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133308174, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_174006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133308174, 2)
	
	-- 将configid为 174002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 174002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为174003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 174003 }) then
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
function condition_EVENT_GADGET_STATE_CHANGE_174007(context, evt)
	if 174002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_174007(context, evt)
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
function condition_EVENT_GADGET_STATE_CHANGE_174008(context, evt)
	if 174001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_174009(context, evt)
	if 174003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_174009(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133308174, 174003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_174010(context, evt)
	-- 判断是gadgetid 174003 option_id 177
	if 174003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_174010(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 174003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 174002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 174002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标{x=-2321.699, y=367.4146, z=4119.363}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-2321.699, y=367.4146, z=4119.363}
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
function action_EVENT_GROUP_LOAD_174011(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133308174, 2)
	
	-- 将configid为 174002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 174002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为174003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 174003 }) then
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