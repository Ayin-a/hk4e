-- 基础信息
local base_info = {
	group_id = 133223170
}

-- Trigger变量
local defs = {
	duration = 120,
	group_id = 133223170,
	collectable_sum = 9
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
	{ config_id = 170001, gadget_id = 70211121, pos = { x = -5929.318, y = 247.363, z = -2573.264 }, rot = { x = 23.791, y = 343.396, z = 9.553 }, level = 26, drop_tag = "解谜高级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 170002, gadget_id = 70350093, pos = { x = -5863.652, y = 200.259, z = -2729.121 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 18 },
	{ config_id = 170003, gadget_id = 70360001, pos = { x = -5863.502, y = 201.196, z = -2728.947 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 18 },
	{ config_id = 170004, gadget_id = 70290150, pos = { x = -5882.157, y = 200.000, z = -2723.868 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 18 },
	{ config_id = 170005, gadget_id = 70290150, pos = { x = -5899.751, y = 200.794, z = -2707.539 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 18 },
	{ config_id = 170006, gadget_id = 70290150, pos = { x = -5915.176, y = 200.877, z = -2689.887 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 18 },
	{ config_id = 170007, gadget_id = 70290150, pos = { x = -5941.459, y = 206.640, z = -2667.458 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 18 },
	{ config_id = 170008, gadget_id = 70290150, pos = { x = -5951.380, y = 214.300, z = -2635.247 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 18 },
	{ config_id = 170009, gadget_id = 70290150, pos = { x = -5944.227, y = 222.381, z = -2625.994 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 18 },
	{ config_id = 170010, gadget_id = 70290150, pos = { x = -5932.617, y = 235.304, z = -2613.387 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 18 },
	{ config_id = 170011, gadget_id = 70290150, pos = { x = -5933.260, y = 239.402, z = -2598.404 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 18 },
	{ config_id = 170018, gadget_id = 70330064, pos = { x = -5956.080, y = 202.744, z = -2655.606 }, rot = { x = 353.041, y = 0.000, z = 0.000 }, level = 33, interact_id = 35, area_id = 18 },
	{ config_id = 170020, gadget_id = 70900380, pos = { x = -5954.738, y = 209.161, z = -2645.400 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 170021, gadget_id = 70900380, pos = { x = -5947.954, y = 218.851, z = -2631.091 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 170022, gadget_id = 70900380, pos = { x = -5936.777, y = 224.783, z = -2622.065 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 170023, gadget_id = 70900380, pos = { x = -5930.798, y = 231.455, z = -2617.286 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 170024, gadget_id = 70900380, pos = { x = -5932.912, y = 239.155, z = -2609.494 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 170025, gadget_id = 70290150, pos = { x = -5929.936, y = 242.477, z = -2586.085 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1170012, name = "CHALLENGE_SUCCESS_170012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_170012", trigger_count = 0 },
	{ config_id = 1170013, name = "CHALLENGE_FAIL_170013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_170013", trigger_count = 0 },
	{ config_id = 1170014, name = "GADGET_STATE_CHANGE_170014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_170014", action = "action_EVENT_GADGET_STATE_CHANGE_170014", trigger_count = 0 },
	{ config_id = 1170015, name = "ANY_GADGET_DIE_170015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
	{ config_id = 1170016, name = "GADGET_CREATE_170016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_170016", action = "action_EVENT_GADGET_CREATE_170016", trigger_count = 0 },
	{ config_id = 1170017, name = "SELECT_OPTION_170017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_170017", action = "action_EVENT_SELECT_OPTION_170017", trigger_count = 0 },
	-- 枝条
	{ config_id = 1170019, name = "GADGET_STATE_CHANGE_170019", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_170019", action = "action_EVENT_GADGET_STATE_CHANGE_170019" },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1170026, name = "GROUP_LOAD_170026", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_170026", trigger_count = 0 }
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
		gadgets = { 170002, 170003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_170012", "CHALLENGE_FAIL_170013", "GADGET_STATE_CHANGE_170014", "ANY_GADGET_DIE_170015", "GADGET_CREATE_170016", "SELECT_OPTION_170017", "GADGET_STATE_CHANGE_170019", "GROUP_LOAD_170026" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 170004, 170005, 170006, 170007, 170008, 170009, 170010, 170011, 170025 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 170002 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 雷樱枝条创生飞雷核,
		monsters = { },
		gadgets = { 170018, 170020, 170021, 170022, 170023, 170024 },
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
function action_EVENT_CHALLENGE_SUCCESS_170012(context, evt)
	-- 将configid为 170002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 170002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133223170, 2)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133223170, 4)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133223170, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 创建id为170001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 170001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_170013(context, evt)
	-- 将configid为 170002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 170002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为170003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 170003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133223170, 2)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133223170, 4)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_170014(context, evt)
	if 170002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_170014(context, evt)
	-- 247号挑战,duration内开启宝箱
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 247, defs.duration, 2, 218, defs.collectable_sum) then
	return -1
	end
	
	-- 添加suite2的新内容
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
	-- 添加suite4的新内容
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 4)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 1, 1) then
	return -1
	end
	
	return 0
	
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_170016(context, evt)
	if 170003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_170016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133223170, 170003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_170017(context, evt)
	-- 判断是gadgetid 170003 option_id 177
	if 170003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_170017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 170003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 170002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 170002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（-5899.751，200.7936，-2707.539），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-5899.751, y=200.7936, z=-2707.539}
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
function condition_EVENT_GADGET_STATE_CHANGE_170019(context, evt)
	if 170018 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_170019(context, evt)
	-- 触发镜头注目，注目位置为坐标（-5947.954，218.5854，-2629.875），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-5947.954, y=218.5854, z=-2629.875}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133223170, 4)
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_170026(context, evt)
	-- 将configid为 170002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 170002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为170003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 170003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133223170, 2)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133223170, 4)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "V2_0/ElectricCore"