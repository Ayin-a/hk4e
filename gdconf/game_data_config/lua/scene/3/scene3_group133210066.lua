-- 基础信息
local base_info = {
	group_id = 133210066
}

-- Trigger变量
local defs = {
	duration = 60,
	group_id = 133210066
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
	{ config_id = 66001, gadget_id = 70211111, pos = { x = -3842.764, y = 174.288, z = -721.823 }, rot = { x = 358.333, y = 3.765, z = 0.697 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 17 },
	{ config_id = 66002, gadget_id = 70350093, pos = { x = -3754.181, y = 170.368, z = -722.299 }, rot = { x = 0.000, y = 0.670, z = 0.000 }, level = 30, persistent = true, area_id = 17 },
	{ config_id = 66003, gadget_id = 70360001, pos = { x = -3754.181, y = 170.538, z = -722.299 }, rot = { x = 357.093, y = 359.854, z = 357.553 }, level = 30, persistent = true, area_id = 17 },
	{ config_id = 66004, gadget_id = 70290150, pos = { x = -3749.073, y = 173.410, z = -711.210 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 66005, gadget_id = 70900380, pos = { x = -3770.508, y = 160.484, z = -678.365 }, rot = { x = 0.000, y = 275.862, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 66006, gadget_id = 70290150, pos = { x = -3754.568, y = 165.416, z = -698.948 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 66007, gadget_id = 70290150, pos = { x = -3761.140, y = 159.369, z = -688.294 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 66011, gadget_id = 70900380, pos = { x = -3782.085, y = 159.749, z = -670.310 }, rot = { x = 0.000, y = 275.862, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 66018, gadget_id = 70900380, pos = { x = -3796.591, y = 161.127, z = -665.369 }, rot = { x = 0.000, y = 275.862, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 66019, gadget_id = 70900380, pos = { x = -3810.676, y = 165.118, z = -662.361 }, rot = { x = 0.000, y = 275.862, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 66020, gadget_id = 70900380, pos = { x = -3824.065, y = 170.868, z = -664.530 }, rot = { x = 0.000, y = 275.862, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 66021, gadget_id = 70290150, pos = { x = -3840.205, y = 171.246, z = -679.345 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 66022, gadget_id = 70290150, pos = { x = -3839.510, y = 177.725, z = -686.850 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 66023, gadget_id = 70290150, pos = { x = -3839.238, y = 177.510, z = -699.614 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 66024, gadget_id = 70290150, pos = { x = -3841.224, y = 176.873, z = -716.300 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1066008, name = "GROUP_LOAD_66008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_66008", trigger_count = 0 },
	{ config_id = 1066012, name = "CHALLENGE_SUCCESS_66012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_66012", trigger_count = 0 },
	{ config_id = 1066013, name = "CHALLENGE_FAIL_66013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_66013", trigger_count = 0 },
	{ config_id = 1066014, name = "GADGET_STATE_CHANGE_66014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_66014", action = "action_EVENT_GADGET_STATE_CHANGE_66014", trigger_count = 0 },
	{ config_id = 1066015, name = "ANY_GADGET_DIE_66015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
	{ config_id = 1066016, name = "GADGET_CREATE_66016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_66016", action = "action_EVENT_GADGET_CREATE_66016", trigger_count = 0 },
	{ config_id = 1066017, name = "SELECT_OPTION_66017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_66017", action = "action_EVENT_SELECT_OPTION_66017", trigger_count = 0 }
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
		gadgets = { 66002, 66003 },
		regions = { },
		triggers = { "GROUP_LOAD_66008", "CHALLENGE_SUCCESS_66012", "CHALLENGE_FAIL_66013", "GADGET_STATE_CHANGE_66014", "ANY_GADGET_DIE_66015", "GADGET_CREATE_66016", "SELECT_OPTION_66017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 66004, 66005, 66006, 66007, 66011, 66018, 66019, 66020, 66021, 66022, 66023, 66024 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 66002 },
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
function action_EVENT_GROUP_LOAD_66008(context, evt)
	-- 将configid为 66002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 66002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为66003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 66003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133210066, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_66012(context, evt)
	-- 将configid为 66002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 66002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133210066, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133210066, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 创建id为66001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 66001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_66013(context, evt)
	-- 将configid为 66002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 66002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为66003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 66003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133210066, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_66014(context, evt)
	if 66002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_66014(context, evt)
	-- 202号挑战,duration内开启宝箱
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 247, defs.duration, 2, 218, 7) then
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
function condition_EVENT_GADGET_CREATE_66016(context, evt)
	if 66003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_66016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210066, 66003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_66017(context, evt)
	-- 判断是gadgetid 66003 option_id 177
	if 66003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_66017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 66003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 66002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 66002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（-3749，173.4，-711.2），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-3749, y=173.4, z=-711.2}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

require "V2_0/ElectricCore"