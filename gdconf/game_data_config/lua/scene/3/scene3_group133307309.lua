-- 基础信息
local base_info = {
	group_id = 133307309
}

-- Trigger变量
local defs = {
	duration = 35,
	group_id = 133307309,
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
	{ config_id = 309001, gadget_id = 70211101, pos = { x = -1489.264, y = -3.325, z = 5267.810 }, rot = { x = 17.520, y = 269.630, z = 354.841 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	{ config_id = 309002, gadget_id = 70330343, pos = { x = -1538.909, y = 17.854, z = 5193.639 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 32 },
	{ config_id = 309003, gadget_id = 70360001, pos = { x = -1538.909, y = 18.818, z = 5193.633 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 32 },
	{ config_id = 309004, gadget_id = 70290501, pos = { x = -1533.721, y = 19.568, z = 5200.508 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 32 },
	{ config_id = 309005, gadget_id = 70290501, pos = { x = -1530.744, y = 19.401, z = 5206.175 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 32 },
	{ config_id = 309006, gadget_id = 70290501, pos = { x = -1527.334, y = 19.184, z = 5211.779 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 32 },
	{ config_id = 309007, gadget_id = 70290501, pos = { x = -1526.257, y = 19.388, z = 5229.727 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 32 },
	{ config_id = 309008, gadget_id = 70290501, pos = { x = -1525.009, y = 21.117, z = 5238.932 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 32 },
	{ config_id = 309009, gadget_id = 70290501, pos = { x = -1522.171, y = 22.574, z = 5249.259 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 32 },
	{ config_id = 309010, gadget_id = 70290501, pos = { x = -1515.022, y = 18.197, z = 5267.889 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 32 },
	{ config_id = 309011, gadget_id = 70290501, pos = { x = -1503.432, y = 7.953, z = 5269.044 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 32 },
	{ config_id = 309019, gadget_id = 70290501, pos = { x = -1495.103, y = -2.211, z = 5269.374 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1309012, name = "CHALLENGE_SUCCESS_309012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_309012", trigger_count = 0 },
	{ config_id = 1309013, name = "CHALLENGE_FAIL_309013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_309013", trigger_count = 0 },
	{ config_id = 1309014, name = "GADGET_STATE_CHANGE_309014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_309014", action = "action_EVENT_GADGET_STATE_CHANGE_309014", trigger_count = 0 },
	{ config_id = 1309015, name = "ANY_GADGET_DIE_309015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
	{ config_id = 1309016, name = "GADGET_CREATE_309016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_309016", action = "action_EVENT_GADGET_CREATE_309016", trigger_count = 0 },
	{ config_id = 1309017, name = "SELECT_OPTION_309017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_309017", action = "action_EVENT_SELECT_OPTION_309017", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1309018, name = "GROUP_LOAD_309018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_309018", trigger_count = 0 }
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
		gadgets = { 309002, 309003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_309012", "CHALLENGE_FAIL_309013", "GADGET_STATE_CHANGE_309014", "ANY_GADGET_DIE_309015", "GADGET_CREATE_309016", "SELECT_OPTION_309017", "GROUP_LOAD_309018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 309004, 309005, 309006, 309007, 309008, 309009, 309010, 309011, 309019 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 309002 },
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
function action_EVENT_CHALLENGE_SUCCESS_309012(context, evt)
	-- 将configid为 309002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 309002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133307309, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133307309, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 创建id为309001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 309001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_309013(context, evt)
	-- 将configid为 309002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 309002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为309003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 309003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133307309, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_309014(context, evt)
	if 309002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_309014(context, evt)
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
function condition_EVENT_GADGET_CREATE_309016(context, evt)
	if 309003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_309016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133307309, 309003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_309017(context, evt)
	-- 判断是gadgetid 309003 option_id 177
	if 309003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_309017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 309003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 309002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 309002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（-1526.257，19.3883，5229.727），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-1526.257, y=19.3883, z=5229.727}
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
function action_EVENT_GROUP_LOAD_309018(context, evt)
	-- 将configid为 309002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 309002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为309003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 309003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133307309, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end