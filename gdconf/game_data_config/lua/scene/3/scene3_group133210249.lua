-- 基础信息
local base_info = {
	group_id = 133210249
}

-- Trigger变量
local defs = {
	duration = 60,
	group_id = 133210249
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
	{ config_id = 249001, gadget_id = 70211111, pos = { x = -3931.727, y = 139.948, z = -687.672 }, rot = { x = 0.797, y = 322.586, z = 357.890 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 17 },
	{ config_id = 249002, gadget_id = 70350093, pos = { x = -3937.459, y = 199.334, z = -678.163 }, rot = { x = 0.000, y = 359.943, z = 0.000 }, level = 30, persistent = true, area_id = 17 },
	{ config_id = 249003, gadget_id = 70360001, pos = { x = -3937.462, y = 200.300, z = -678.057 }, rot = { x = 3.216, y = 0.215, z = 7.640 }, level = 30, persistent = true, area_id = 17 },
	{ config_id = 249004, gadget_id = 70290150, pos = { x = -3934.690, y = 200.051, z = -672.898 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 249005, gadget_id = 70290150, pos = { x = -3920.523, y = 196.150, z = -640.312 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 249006, gadget_id = 70290150, pos = { x = -3917.594, y = 202.092, z = -634.852 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 249007, gadget_id = 70290150, pos = { x = -3891.910, y = 200.767, z = -631.961 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 249008, gadget_id = 70290150, pos = { x = -3894.844, y = 167.958, z = -636.868 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 249009, gadget_id = 70290150, pos = { x = -3937.192, y = 167.135, z = -663.867 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 249010, gadget_id = 70290150, pos = { x = -3945.480, y = 147.822, z = -687.987 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 249011, gadget_id = 70290150, pos = { x = -3932.681, y = 141.401, z = -685.200 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 249018, gadget_id = 70900380, pos = { x = -3931.636, y = 200.661, z = -666.773 }, rot = { x = 0.000, y = 314.195, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 249019, gadget_id = 70900380, pos = { x = -3925.190, y = 200.149, z = -652.502 }, rot = { x = 0.000, y = 151.678, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 249020, gadget_id = 70900380, pos = { x = -3906.730, y = 167.963, z = -644.556 }, rot = { x = 0.000, y = 309.063, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 249021, gadget_id = 70900380, pos = { x = -3919.650, y = 169.712, z = -653.281 }, rot = { x = 0.000, y = 331.732, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 249023, gadget_id = 70290150, pos = { x = -3907.179, y = 187.310, z = -642.893 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 249024, gadget_id = 70290150, pos = { x = -3902.315, y = 177.913, z = -639.905 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1249012, name = "CHALLENGE_SUCCESS_249012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_249012", trigger_count = 0 },
	{ config_id = 1249013, name = "CHALLENGE_FAIL_249013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_249013", trigger_count = 0 },
	{ config_id = 1249014, name = "GADGET_STATE_CHANGE_249014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_249014", action = "action_EVENT_GADGET_STATE_CHANGE_249014", trigger_count = 0 },
	{ config_id = 1249015, name = "ANY_GADGET_DIE_249015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
	{ config_id = 1249016, name = "GADGET_CREATE_249016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_249016", action = "action_EVENT_GADGET_CREATE_249016", trigger_count = 0 },
	{ config_id = 1249017, name = "SELECT_OPTION_249017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_249017", action = "action_EVENT_SELECT_OPTION_249017", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1249022, name = "GROUP_LOAD_249022", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_249022", trigger_count = 0 }
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
		gadgets = { 249002, 249003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_249012", "CHALLENGE_FAIL_249013", "GADGET_STATE_CHANGE_249014", "ANY_GADGET_DIE_249015", "GADGET_CREATE_249016", "SELECT_OPTION_249017", "GROUP_LOAD_249022" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 249004, 249005, 249006, 249007, 249008, 249009, 249010, 249011, 249018, 249019, 249020, 249021, 249023, 249024 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 249002 },
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
function action_EVENT_CHALLENGE_SUCCESS_249012(context, evt)
	-- 将configid为 249002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 249002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133210249, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133210249, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 创建id为249001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 249001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_249013(context, evt)
	-- 将configid为 249002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 249002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为249003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 249003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133210249, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_249014(context, evt)
	if 249002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_249014(context, evt)
	-- 202号挑战,duration内开启宝箱
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 247, defs.duration, 2, 218, 10) then
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
function condition_EVENT_GADGET_CREATE_249016(context, evt)
	if 249003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_249016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210249, 249003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_249017(context, evt)
	-- 判断是gadgetid 249003 option_id 177
	if 249003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_249017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 249003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 249002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 249002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（-3934，200，-673），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-3934, y=200, z=-673}
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
function action_EVENT_GROUP_LOAD_249022(context, evt)
	-- 将configid为 249002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 249002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为249003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 249003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133210249, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "V2_0/ElectricCore"