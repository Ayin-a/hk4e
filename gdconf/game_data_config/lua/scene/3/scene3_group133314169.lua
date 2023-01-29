-- 基础信息
local base_info = {
	group_id = 133314169
}

-- Trigger变量
local defs = {
	duration = 80,
	group_id = 133314169,
	collectable_sum = 12
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
	{ config_id = 169001, gadget_id = 70211101, pos = { x = -145.441, y = 55.674, z = 4841.425 }, rot = { x = 356.190, y = 159.410, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	{ config_id = 169002, gadget_id = 70350093, pos = { x = -301.335, y = 59.443, z = 4606.120 }, rot = { x = 348.735, y = 10.362, z = 358.550 }, level = 30, persistent = true, area_id = 32 },
	{ config_id = 169003, gadget_id = 70360001, pos = { x = -301.336, y = 59.442, z = 4606.112 }, rot = { x = 348.735, y = 10.362, z = 358.550 }, level = 30, persistent = true, area_id = 32 },
	-- 无钩
	{ config_id = 169004, gadget_id = 70290501, pos = { x = -285.520, y = 63.706, z = 4615.155 }, rot = { x = 0.000, y = 11.835, z = 0.000 }, level = 30, area_id = 32 },
	-- 无钩
	{ config_id = 169005, gadget_id = 70290501, pos = { x = -254.977, y = 66.399, z = 4645.491 }, rot = { x = 0.000, y = 11.835, z = 0.000 }, level = 30, area_id = 32 },
	{ config_id = 169006, gadget_id = 70290501, pos = { x = -186.603, y = 79.666, z = 4676.298 }, rot = { x = 0.000, y = 11.835, z = 0.000 }, level = 30, area_id = 32 },
	{ config_id = 169007, gadget_id = 70290501, pos = { x = -217.348, y = 73.166, z = 4655.925 }, rot = { x = 0.000, y = 11.835, z = 0.000 }, level = 30, area_id = 32 },
	{ config_id = 169008, gadget_id = 70290501, pos = { x = -161.985, y = 74.329, z = 4715.547 }, rot = { x = 0.000, y = 11.835, z = 0.000 }, level = 30, area_id = 32 },
	{ config_id = 169009, gadget_id = 70290501, pos = { x = -146.012, y = 68.283, z = 4756.035 }, rot = { x = 0.000, y = 11.835, z = 0.000 }, level = 30, area_id = 32 },
	-- 无钩
	{ config_id = 169010, gadget_id = 70290501, pos = { x = -143.812, y = 57.030, z = 4836.200 }, rot = { x = 0.000, y = 11.835, z = 0.000 }, level = 30, area_id = 32 },
	{ config_id = 169011, gadget_id = 70290501, pos = { x = -142.047, y = 54.846, z = 4798.291 }, rot = { x = 0.000, y = 11.835, z = 0.000 }, level = 30, area_id = 32 },
	{ config_id = 169019, gadget_id = 70220103, pos = { x = -186.603, y = 78.828, z = 4676.298 }, rot = { x = 0.000, y = 11.835, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 169020, gadget_id = 70220103, pos = { x = -217.348, y = 72.328, z = 4655.925 }, rot = { x = 0.000, y = 11.835, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 169021, gadget_id = 70220103, pos = { x = -161.985, y = 73.491, z = 4715.547 }, rot = { x = 0.000, y = 11.835, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 169022, gadget_id = 70220103, pos = { x = -146.012, y = 67.445, z = 4756.035 }, rot = { x = 0.000, y = 11.835, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 169023, gadget_id = 70220103, pos = { x = -142.047, y = 54.008, z = 4798.291 }, rot = { x = 0.000, y = 11.835, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	-- 无钩
	{ config_id = 169024, gadget_id = 70290501, pos = { x = -271.773, y = 68.113, z = 4636.284 }, rot = { x = 0.000, y = 11.835, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 169025, gadget_id = 70330434, pos = { x = -141.541, y = 46.031, z = 4798.244 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	-- 风圈上升
	{ config_id = 169026, gadget_id = 70290501, pos = { x = -142.047, y = 63.930, z = 4798.291 }, rot = { x = 0.000, y = 11.835, z = 0.000 }, level = 32, area_id = 32 },
	-- 风圈上升
	{ config_id = 169027, gadget_id = 70290501, pos = { x = -142.047, y = 74.591, z = 4798.291 }, rot = { x = 0.000, y = 11.835, z = 0.000 }, level = 32, area_id = 32 },
	-- 风圈上升
	{ config_id = 169028, gadget_id = 70290501, pos = { x = -142.853, y = 65.771, z = 4819.295 }, rot = { x = 0.000, y = 11.835, z = 0.000 }, level = 32, area_id = 32 }
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
		gadgets = { 169004, 169005, 169006, 169007, 169008, 169009, 169010, 169011, 169019, 169020, 169021, 169022, 169023, 169024, 169025, 169026, 169027, 169028 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 169002, 169019, 169020, 169021, 169022, 169023, 169025 },
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
	    ScriptLib.KillExtraGroupSuite(context, 133314169, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133314169, 3) then
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
	    ScriptLib.RemoveExtraGroupSuite(context, 133314169, 2)
	
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
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133314169, 169003, {177}) then
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
	
	-- 触发镜头注目，注目位置为坐标（-285，63，4615），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-285, y=63, z=4615}
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
	    ScriptLib.RemoveExtraGroupSuite(context, 133314169, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end