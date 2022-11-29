-- 基础信息
local base_info = {
	group_id = 133310144
}

-- Trigger变量
local defs = {
	duration = 180,
	group_id = 133310144,
	collectable_sum = 20
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
	{ config_id = 144001, gadget_id = 70211121, pos = { x = -2359.751, y = 173.036, z = 4535.677 }, rot = { x = 0.000, y = 285.000, z = 0.000 }, level = 26, drop_tag = "解谜高级须弥", isOneoff = true, persistent = true, autopick = true, explore = { name = "chest", exp = 10 }, area_id = 26 },
	{ config_id = 144002, gadget_id = 70330343, pos = { x = -2379.875, y = 149.402, z = 4541.226 }, rot = { x = 0.000, y = 105.000, z = 0.000 }, level = 30, persistent = true, area_id = 26 },
	{ config_id = 144003, gadget_id = 70360001, pos = { x = -2379.909, y = 150.367, z = 4541.165 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 26 },
	{ config_id = 144004, gadget_id = 70290501, pos = { x = -2382.542, y = 154.062, z = 4531.526 }, rot = { x = 0.000, y = 105.000, z = 0.000 }, level = 30, area_id = 26 },
	{ config_id = 144005, gadget_id = 70290501, pos = { x = -2381.620, y = 157.021, z = 4520.997 }, rot = { x = 0.000, y = 105.000, z = 0.000 }, level = 30, area_id = 26 },
	{ config_id = 144006, gadget_id = 70290501, pos = { x = -2394.557, y = 157.021, z = 4524.744 }, rot = { x = 0.000, y = 105.000, z = 0.000 }, level = 30, area_id = 26 },
	{ config_id = 144007, gadget_id = 70290501, pos = { x = -2393.793, y = 157.021, z = 4532.359 }, rot = { x = 0.000, y = 105.000, z = 0.000 }, level = 30, area_id = 26 },
	{ config_id = 144008, gadget_id = 70290501, pos = { x = -2402.083, y = 157.021, z = 4536.858 }, rot = { x = 0.000, y = 105.000, z = 0.000 }, level = 30, area_id = 26 },
	{ config_id = 144009, gadget_id = 70290501, pos = { x = -2399.608, y = 160.053, z = 4546.352 }, rot = { x = 0.000, y = 105.000, z = 0.000 }, level = 30, area_id = 26 },
	{ config_id = 144010, gadget_id = 70290501, pos = { x = -2395.843, y = 165.919, z = 4559.574 }, rot = { x = 0.000, y = 105.000, z = 0.000 }, level = 30, area_id = 26 },
	-- 触发钩爪
	{ config_id = 144011, gadget_id = 70290501, pos = { x = -2400.113, y = 163.021, z = 4554.935 }, rot = { x = 0.000, y = 105.000, z = 0.000 }, level = 30, area_id = 26 },
	{ config_id = 144019, gadget_id = 70330393, pos = { x = -2382.722, y = 152.702, z = 4530.601 }, rot = { x = 0.000, y = 285.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 144020, gadget_id = 70330392, pos = { x = -2385.103, y = 155.202, z = 4521.714 }, rot = { x = 0.000, y = 15.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 144021, gadget_id = 70330392, pos = { x = -2394.762, y = 155.202, z = 4524.302 }, rot = { x = 0.000, y = 15.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 144022, gadget_id = 70330392, pos = { x = -2392.174, y = 155.202, z = 4533.961 }, rot = { x = 0.000, y = 15.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 144023, gadget_id = 70330392, pos = { x = -2401.833, y = 155.202, z = 4536.549 }, rot = { x = 0.000, y = 15.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 144024, gadget_id = 70330393, pos = { x = -2398.987, y = 158.702, z = 4547.175 }, rot = { x = 0.000, y = 105.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 144025, gadget_id = 70330393, pos = { x = -2395.730, y = 164.202, z = 4559.995 }, rot = { x = 0.000, y = 162.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 144026, gadget_id = 70330392, pos = { x = -2397.887, y = 161.202, z = 4556.300 }, rot = { x = 0.000, y = 15.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 144027, gadget_id = 70330392, pos = { x = -2383.458, y = 166.301, z = 4556.825 }, rot = { x = 0.000, y = 72.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 144028, gadget_id = 70330392, pos = { x = -2380.368, y = 166.301, z = 4547.314 }, rot = { x = 0.000, y = 72.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 144029, gadget_id = 70330392, pos = { x = -2399.389, y = 166.301, z = 4541.133 }, rot = { x = 0.000, y = 72.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 144030, gadget_id = 70330392, pos = { x = -2389.878, y = 166.301, z = 4544.224 }, rot = { x = 0.000, y = 72.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 144031, gadget_id = 70330392, pos = { x = -2360.357, y = 172.716, z = 4536.038 }, rot = { x = 0.000, y = 105.000, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 144032, gadget_id = 70330392, pos = { x = -2375.417, y = 166.684, z = 4568.605 }, rot = { x = 0.000, y = 73.000, z = 0.000 }, level = 30, area_id = 26 },
	{ config_id = 144033, gadget_id = 70330392, pos = { x = -2396.299, y = 166.301, z = 4531.622 }, rot = { x = 0.000, y = 72.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 144034, gadget_id = 70330392, pos = { x = -2393.209, y = 166.301, z = 4522.112 }, rot = { x = 0.000, y = 72.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 144035, gadget_id = 70330392, pos = { x = -2383.698, y = 166.301, z = 4525.202 }, rot = { x = 0.000, y = 72.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 144036, gadget_id = 70330392, pos = { x = -2374.187, y = 166.301, z = 4528.292 }, rot = { x = 0.000, y = 72.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 144037, gadget_id = 70330392, pos = { x = -2391.874, y = 159.689, z = 4557.525 }, rot = { x = 32.110, y = 252.340, z = 268.268 }, level = 32, area_id = 26 },
	{ config_id = 144038, gadget_id = 70290501, pos = { x = -2384.744, y = 168.121, z = 4555.151 }, rot = { x = 0.000, y = 105.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 144039, gadget_id = 70290501, pos = { x = -2385.017, y = 168.121, z = 4549.983 }, rot = { x = 0.000, y = 105.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 144040, gadget_id = 70290501, pos = { x = -2389.524, y = 168.121, z = 4546.572 }, rot = { x = 0.000, y = 105.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 144041, gadget_id = 70290501, pos = { x = -2396.947, y = 168.121, z = 4543.332 }, rot = { x = 0.000, y = 105.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 144042, gadget_id = 70290501, pos = { x = -2396.568, y = 168.121, z = 4532.152 }, rot = { x = 0.000, y = 105.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 144043, gadget_id = 70290501, pos = { x = -2383.448, y = 168.121, z = 4524.220 }, rot = { x = 0.000, y = 105.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 144044, gadget_id = 70290501, pos = { x = -2373.819, y = 168.121, z = 4526.987 }, rot = { x = 0.000, y = 105.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 144045, gadget_id = 70290501, pos = { x = -2370.539, y = 171.022, z = 4535.152 }, rot = { x = 0.000, y = 105.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 144046, gadget_id = 70290501, pos = { x = -2372.804, y = 168.504, z = 4566.079 }, rot = { x = 0.000, y = 105.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 144047, gadget_id = 70290501, pos = { x = -2392.523, y = 168.121, z = 4522.719 }, rot = { x = 0.000, y = 105.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 144048, gadget_id = 70290501, pos = { x = -2363.200, y = 174.536, z = 4536.729 }, rot = { x = 0.000, y = 105.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 144049, gadget_id = 70290501, pos = { x = -2367.788, y = 174.450, z = 4539.557 }, rot = { x = 0.000, y = 105.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 144050, gadget_id = 70330392, pos = { x = -2404.421, y = 155.202, z = 4526.890 }, rot = { x = 0.000, y = 15.000, z = 0.000 }, level = 30, area_id = 26 },
	{ config_id = 144051, gadget_id = 70220103, pos = { x = -2379.612, y = 169.483, z = 4562.791 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 26 },
	{ config_id = 144053, gadget_id = 70330393, pos = { x = -2370.507, y = 169.201, z = 4535.578 }, rot = { x = 0.000, y = 117.000, z = 0.000 }, level = 30, area_id = 26 },
	{ config_id = 144056, gadget_id = 70220103, pos = { x = -2377.528, y = 169.121, z = 4531.729 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 26 },
	{ config_id = 144057, gadget_id = 70220103, pos = { x = -2371.261, y = 173.892, z = 4542.691 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 26 }
}

-- 区域
regions = {
	-- 钩爪1
	{ config_id = 144052, shape = RegionShape.SPHERE, radius = 5, pos = { x = -2385.312, y = 166.739, z = 4562.247 }, area_id = 26 },
	-- 钩爪2
	{ config_id = 144055, shape = RegionShape.SPHERE, radius = 5, pos = { x = -2374.358, y = 166.814, z = 4527.835 }, area_id = 26 }
}

-- 触发器
triggers = {
	{ config_id = 1144012, name = "CHALLENGE_SUCCESS_144012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_144012", trigger_count = 0 },
	{ config_id = 1144013, name = "CHALLENGE_FAIL_144013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_144013", trigger_count = 0 },
	{ config_id = 1144014, name = "GADGET_STATE_CHANGE_144014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_144014", action = "action_EVENT_GADGET_STATE_CHANGE_144014", trigger_count = 0 },
	{ config_id = 1144015, name = "ANY_GADGET_DIE_144015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
	{ config_id = 1144016, name = "GADGET_CREATE_144016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_144016", action = "action_EVENT_GADGET_CREATE_144016", trigger_count = 0 },
	{ config_id = 1144017, name = "SELECT_OPTION_144017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_144017", action = "action_EVENT_SELECT_OPTION_144017", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1144018, name = "GROUP_LOAD_144018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_144018", trigger_count = 0 },
	-- 钩爪1
	{ config_id = 1144052, name = "ENTER_REGION_144052", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_144052", action = "action_EVENT_ENTER_REGION_144052" },
	-- 钩爪2
	{ config_id = 1144055, name = "ENTER_REGION_144055", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_144055", action = "action_EVENT_ENTER_REGION_144055" }
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
		gadgets = { 144002, 144003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_144012", "CHALLENGE_FAIL_144013", "GADGET_STATE_CHANGE_144014", "ANY_GADGET_DIE_144015", "GADGET_CREATE_144016", "SELECT_OPTION_144017", "GROUP_LOAD_144018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 144004, 144005, 144006, 144007, 144008, 144009, 144010, 144011, 144038, 144039, 144040, 144041, 144042, 144043, 144044, 144045, 144046, 144047, 144048, 144049 },
		regions = { 144052, 144055 },
		triggers = { "ENTER_REGION_144052", "ENTER_REGION_144055" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = end_suite,
		monsters = { },
		gadgets = { 144002, 144031, 144057 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 144019, 144020, 144021, 144022, 144023, 144024, 144025, 144026, 144027, 144028, 144029, 144030, 144031, 144032, 144033, 144034, 144035, 144036, 144037, 144050, 144053 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 144051, 144056 },
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
function action_EVENT_CHALLENGE_SUCCESS_144012(context, evt)
	-- 将本组内变量名为 "isLocked" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "isLocked", 0, 133310121) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将configid为 144002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 144002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133310144, 2)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133310144, 4)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133310144, 5)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133310144, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 创建id为144001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 144001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_144013(context, evt)
	-- 将configid为 144002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 144002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为144003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 144003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133310144, 2)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133310144, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133310144, 5)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_144014(context, evt)
	if 144002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_144014(context, evt)
	-- 247号挑战,duration内开启宝箱
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 271, defs.duration, 2, 218, defs.collectable_sum) then
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
function condition_EVENT_GADGET_CREATE_144016(context, evt)
	if 144003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_144016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133310144, 144003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_144017(context, evt)
	-- 判断是gadgetid 144003 option_id 177
	if 144003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_144017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 144003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 144002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 144002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（-2382.542，154.062，4531.526），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-2382.542, y=154.062, z=4531.526}
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
function action_EVENT_GROUP_LOAD_144018(context, evt)
	-- 将configid为 144002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 144002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为144003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 144003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133310144, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_144052(context, evt)
	if evt.param1 ~= 144052 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_144052(context, evt)
	-- 创建id为144051的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 144051 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_144055(context, evt)
	if evt.param1 ~= 144055 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_144055(context, evt)
	-- 创建id为144056的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 144056 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end