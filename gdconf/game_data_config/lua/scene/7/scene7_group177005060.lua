-- 基础信息
local base_info = {
	group_id = 177005060
}

-- Trigger变量
local defs = {
	duration = 180,
	group_id = 177005060,
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
	{ config_id = 60001, gadget_id = 70211161, pos = { x = 323.870, y = 156.785, z = 976.298 }, rot = { x = 345.519, y = 6.959, z = 4.956 }, level = 16, drop_tag = "渊下宫活动中级稻妻", isOneoff = true, persistent = true, area_id = 210 },
	{ config_id = 60002, gadget_id = 70350093, pos = { x = 449.631, y = 139.049, z = 935.559 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, persistent = true, area_id = 210 },
	{ config_id = 60003, gadget_id = 70360001, pos = { x = 449.631, y = 139.049, z = 935.559 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, persistent = true, area_id = 210 },
	{ config_id = 60004, gadget_id = 70290150, pos = { x = 448.154, y = 138.027, z = 947.425 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 210 },
	{ config_id = 60005, gadget_id = 70290150, pos = { x = 438.693, y = 135.737, z = 989.264 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 210 },
	{ config_id = 60006, gadget_id = 70290150, pos = { x = 427.613, y = 134.095, z = 995.817 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 210 },
	{ config_id = 60007, gadget_id = 70290150, pos = { x = 409.901, y = 124.297, z = 992.878 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 210 },
	{ config_id = 60008, gadget_id = 70290150, pos = { x = 363.830, y = 119.673, z = 978.478 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 210 },
	{ config_id = 60009, gadget_id = 70290150, pos = { x = 382.878, y = 122.965, z = 984.722 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 210 },
	{ config_id = 60010, gadget_id = 70290150, pos = { x = 333.961, y = 160.091, z = 975.267 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 210 },
	{ config_id = 60011, gadget_id = 70290150, pos = { x = 325.496, y = 157.717, z = 978.081 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 210 },
	{ config_id = 60019, gadget_id = 70690001, pos = { x = 385.165, y = 123.173, z = 985.455 }, rot = { x = 354.970, y = 71.768, z = 2.562 }, level = 1, area_id = 210 },
	{ config_id = 60020, gadget_id = 70690001, pos = { x = 402.572, y = 123.173, z = 991.344 }, rot = { x = 354.970, y = 71.768, z = 2.562 }, level = 1, area_id = 210 },
	{ config_id = 60021, gadget_id = 70690001, pos = { x = 375.930, y = 121.963, z = 982.120 }, rot = { x = 354.970, y = 71.768, z = 2.562 }, level = 36, area_id = 210 },
	{ config_id = 60022, gadget_id = 70690001, pos = { x = 365.759, y = 120.252, z = 978.960 }, rot = { x = 354.970, y = 71.768, z = 2.562 }, level = 36, area_id = 210 },
	{ config_id = 60023, gadget_id = 70690001, pos = { x = 444.969, y = 136.248, z = 965.406 }, rot = { x = 354.970, y = 357.073, z = 2.562 }, level = 1, area_id = 210 },
	{ config_id = 60024, gadget_id = 70690001, pos = { x = 446.555, y = 136.248, z = 954.416 }, rot = { x = 354.970, y = 348.255, z = 2.562 }, level = 1, area_id = 210 },
	{ config_id = 60025, gadget_id = 70690001, pos = { x = 357.102, y = 118.445, z = 976.222 }, rot = { x = 354.970, y = 71.768, z = 2.562 }, level = 36, area_id = 210 },
	{ config_id = 60026, gadget_id = 70690001, pos = { x = 394.777, y = 123.173, z = 988.738 }, rot = { x = 354.970, y = 71.768, z = 2.562 }, level = 1, area_id = 210 },
	{ config_id = 60030, gadget_id = 70690013, pos = { x = 342.843, y = 105.020, z = 971.308 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 210 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1060012, name = "CHALLENGE_SUCCESS_60012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_60012", trigger_count = 0 },
	{ config_id = 1060013, name = "CHALLENGE_FAIL_60013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_60013", trigger_count = 0 },
	{ config_id = 1060014, name = "GADGET_STATE_CHANGE_60014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_60014", action = "action_EVENT_GADGET_STATE_CHANGE_60014", trigger_count = 0 },
	{ config_id = 1060015, name = "ANY_GADGET_DIE_60015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
	{ config_id = 1060016, name = "GADGET_CREATE_60016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_60016", action = "action_EVENT_GADGET_CREATE_60016", trigger_count = 0 },
	{ config_id = 1060017, name = "SELECT_OPTION_60017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_60017", action = "action_EVENT_SELECT_OPTION_60017", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1060018, name = "GROUP_LOAD_60018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_60018", trigger_count = 0 }
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
		gadgets = { 60002, 60003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_60012", "CHALLENGE_FAIL_60013", "GADGET_STATE_CHANGE_60014", "ANY_GADGET_DIE_60015", "GADGET_CREATE_60016", "SELECT_OPTION_60017", "GROUP_LOAD_60018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 60004, 60005, 60006, 60007, 60008, 60009, 60010, 60011, 60019, 60020, 60021, 60022, 60023, 60024, 60025, 60026, 60030 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 60002 },
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
function action_EVENT_CHALLENGE_SUCCESS_60012(context, evt)
	-- 将configid为 60002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 60002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 177005060, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 177005060, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 创建id为60001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 60001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_60013(context, evt)
	-- 将configid为 60002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 60002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为60003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 60003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 177005060, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_60014(context, evt)
	if 60002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_60014(context, evt)
	-- 247号挑战,duration内开启宝箱
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 247, defs.duration, 2, 218, defs.collectable_sum) then
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
function condition_EVENT_GADGET_CREATE_60016(context, evt)
	if 60003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_60016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 177005060, 60003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_60017(context, evt)
	-- 判断是gadgetid 60003 option_id 177
	if 60003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_60017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 60003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 60002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 60002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（448，138，947），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=448, y=138, z=947}
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
function action_EVENT_GROUP_LOAD_60018(context, evt)
	-- 将configid为 60002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 60002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为60003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 60003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 177005060, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end