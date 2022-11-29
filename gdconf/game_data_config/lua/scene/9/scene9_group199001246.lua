-- 基础信息
local base_info = {
	group_id = 199001246
}

-- Trigger变量
local defs = {
	duration = 20,
	group_id = 199001246
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
	{ config_id = 246001, gadget_id = 70211101, pos = { x = 212.954, y = 126.956, z = 408.138 }, rot = { x = 334.886, y = 25.425, z = 0.149 }, level = 16, drop_tag = "解谜低级群岛", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 402 },
	{ config_id = 246002, gadget_id = 70350083, pos = { x = 161.233, y = 120.680, z = 401.417 }, rot = { x = 0.000, y = 54.591, z = 0.000 }, level = 20, persistent = true, area_id = 402 },
	{ config_id = 246003, gadget_id = 70360001, pos = { x = 161.233, y = 120.680, z = 401.417 }, rot = { x = 0.000, y = 54.591, z = 0.000 }, level = 20, persistent = true, area_id = 402 },
	{ config_id = 246004, gadget_id = 70360094, pos = { x = 185.193, y = 131.343, z = 392.046 }, rot = { x = 337.475, y = 83.306, z = 355.427 }, level = 20, area_id = 402 },
	{ config_id = 246005, gadget_id = 70360094, pos = { x = 190.549, y = 133.580, z = 392.675 }, rot = { x = 337.475, y = 83.306, z = 355.427 }, level = 20, area_id = 402 },
	{ config_id = 246006, gadget_id = 70360094, pos = { x = 195.346, y = 135.575, z = 393.182 }, rot = { x = 337.475, y = 83.306, z = 355.427 }, level = 20, area_id = 402 },
	{ config_id = 246007, gadget_id = 70360094, pos = { x = 200.735, y = 134.777, z = 394.098 }, rot = { x = 337.475, y = 83.306, z = 355.427 }, level = 20, area_id = 402 },
	{ config_id = 246008, gadget_id = 70360094, pos = { x = 207.761, y = 132.503, z = 395.312 }, rot = { x = 337.475, y = 83.306, z = 355.427 }, level = 20, area_id = 402 },
	{ config_id = 246009, gadget_id = 70360094, pos = { x = 216.234, y = 129.612, z = 396.786 }, rot = { x = 337.475, y = 83.306, z = 355.427 }, level = 20, area_id = 402 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1246012, name = "CHALLENGE_SUCCESS_246012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_246012", trigger_count = 0 },
	{ config_id = 1246013, name = "CHALLENGE_FAIL_246013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_246013", trigger_count = 0 },
	{ config_id = 1246014, name = "GADGET_STATE_CHANGE_246014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_246014", action = "action_EVENT_GADGET_STATE_CHANGE_246014", trigger_count = 0 },
	{ config_id = 1246015, name = "ANY_GADGET_DIE_246015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
	{ config_id = 1246016, name = "GADGET_CREATE_246016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_246016", action = "action_EVENT_GADGET_CREATE_246016", trigger_count = 0 },
	{ config_id = 1246017, name = "SELECT_OPTION_246017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_246017", action = "action_EVENT_SELECT_OPTION_246017", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1246018, name = "GROUP_LOAD_246018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_246018", trigger_count = 0 }
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
		gadgets = { 246002, 246003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_246012", "CHALLENGE_FAIL_246013", "GADGET_STATE_CHANGE_246014", "ANY_GADGET_DIE_246015", "GADGET_CREATE_246016", "SELECT_OPTION_246017", "GROUP_LOAD_246018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 246004, 246005, 246006, 246007, 246008, 246009 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 246002 },
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
function action_EVENT_CHALLENGE_SUCCESS_246012(context, evt)
	-- 将configid为 246002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 246002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 199001246, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 199001246, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 创建id为246001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 246001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_246013(context, evt)
	-- 将configid为 246002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 246002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为246003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 246003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199001246, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_246014(context, evt)
	if 246002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_246014(context, evt)
	-- 202号挑战,duration内开启宝箱
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 218, defs.duration, 2, 218, 6) then
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
function condition_EVENT_GADGET_CREATE_246016(context, evt)
	if 246003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_246016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 199001246, 246003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_246017(context, evt)
	-- 判断是gadgetid 246003 option_id 177
	if 246003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_246017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 246003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 246002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 246002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（190.5489，133.5797，392.6745），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=190.5489, y=133.5797, z=392.6745}
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
function action_EVENT_GROUP_LOAD_246018(context, evt)
	-- 将configid为 246002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 246002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为246003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 246003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199001246, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end