-- 基础信息
local base_info = {
	group_id = 199001245
}

-- Trigger变量
local defs = {
	duration = 40,
	group_id = 199001245
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
	{ config_id = 245001, gadget_id = 70211111, pos = { x = 185.924, y = 146.453, z = 464.251 }, rot = { x = 357.650, y = 59.519, z = 4.560 }, level = 16, drop_tag = "解谜中级群岛", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 402 },
	{ config_id = 245002, gadget_id = 70350083, pos = { x = 185.123, y = 147.980, z = 457.105 }, rot = { x = 9.895, y = 53.974, z = 352.877 }, level = 20, persistent = true, area_id = 402 },
	{ config_id = 245003, gadget_id = 70360001, pos = { x = 185.123, y = 147.980, z = 457.105 }, rot = { x = 9.895, y = 53.974, z = 352.877 }, level = 20, persistent = true, area_id = 402 },
	{ config_id = 245004, gadget_id = 70360094, pos = { x = 195.050, y = 165.629, z = 469.939 }, rot = { x = 280.601, y = 22.267, z = 326.805 }, level = 20, area_id = 402 },
	{ config_id = 245005, gadget_id = 70360094, pos = { x = 195.218, y = 167.996, z = 470.349 }, rot = { x = 280.601, y = 22.267, z = 326.805 }, level = 20, area_id = 402 },
	{ config_id = 245006, gadget_id = 70360094, pos = { x = 195.364, y = 170.050, z = 470.705 }, rot = { x = 280.601, y = 22.267, z = 326.805 }, level = 20, area_id = 402 },
	{ config_id = 245007, gadget_id = 70360094, pos = { x = 195.552, y = 172.698, z = 471.164 }, rot = { x = 280.601, y = 22.267, z = 326.805 }, level = 20, area_id = 402 },
	{ config_id = 245008, gadget_id = 70360094, pos = { x = 193.801, y = 164.761, z = 470.169 }, rot = { x = 280.601, y = 22.267, z = 326.805 }, level = 20, area_id = 402 },
	{ config_id = 245009, gadget_id = 70360094, pos = { x = 193.414, y = 172.028, z = 472.170 }, rot = { x = 280.601, y = 22.267, z = 326.805 }, level = 20, area_id = 402 },
	{ config_id = 245010, gadget_id = 70360094, pos = { x = 191.984, y = 171.908, z = 473.443 }, rot = { x = 280.601, y = 22.267, z = 326.805 }, level = 20, area_id = 402 },
	{ config_id = 245011, gadget_id = 70360094, pos = { x = 190.849, y = 171.725, z = 474.969 }, rot = { x = 280.601, y = 22.267, z = 326.805 }, level = 20, area_id = 402 },
	{ config_id = 245019, gadget_id = 70360094, pos = { x = 190.670, y = 169.206, z = 474.533 }, rot = { x = 280.601, y = 22.267, z = 326.805 }, level = 20, area_id = 402 },
	{ config_id = 245020, gadget_id = 70360094, pos = { x = 190.505, y = 166.874, z = 474.129 }, rot = { x = 280.601, y = 22.267, z = 326.805 }, level = 20, area_id = 402 },
	{ config_id = 245021, gadget_id = 70360094, pos = { x = 190.369, y = 164.956, z = 473.796 }, rot = { x = 280.601, y = 22.267, z = 326.805 }, level = 20, area_id = 402 },
	{ config_id = 245022, gadget_id = 70360094, pos = { x = 189.563, y = 164.771, z = 475.190 }, rot = { x = 280.601, y = 22.267, z = 326.805 }, level = 20, area_id = 402 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1245012, name = "CHALLENGE_SUCCESS_245012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_245012", trigger_count = 0 },
	{ config_id = 1245013, name = "CHALLENGE_FAIL_245013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_245013", trigger_count = 0 },
	{ config_id = 1245014, name = "GADGET_STATE_CHANGE_245014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_245014", action = "action_EVENT_GADGET_STATE_CHANGE_245014", trigger_count = 0 },
	{ config_id = 1245015, name = "ANY_GADGET_DIE_245015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
	{ config_id = 1245016, name = "GADGET_CREATE_245016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_245016", action = "action_EVENT_GADGET_CREATE_245016", trigger_count = 0 },
	{ config_id = 1245017, name = "SELECT_OPTION_245017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_245017", action = "action_EVENT_SELECT_OPTION_245017", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1245018, name = "GROUP_LOAD_245018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_245018", trigger_count = 0 }
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
		gadgets = { 245002, 245003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_245012", "CHALLENGE_FAIL_245013", "GADGET_STATE_CHANGE_245014", "ANY_GADGET_DIE_245015", "GADGET_CREATE_245016", "SELECT_OPTION_245017", "GROUP_LOAD_245018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 245004, 245005, 245006, 245007, 245008, 245009, 245010, 245011, 245019, 245020, 245021, 245022 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 245002 },
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
function action_EVENT_CHALLENGE_SUCCESS_245012(context, evt)
	-- 将configid为 245002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 245002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 199001245, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 199001245, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 创建id为245001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 245001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_245013(context, evt)
	-- 将configid为 245002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 245002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为245003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 245003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199001245, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_245014(context, evt)
	if 245002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_245014(context, evt)
	-- 202号挑战,duration内开启宝箱
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 218, defs.duration, 2, 218, 12) then
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
function condition_EVENT_GADGET_CREATE_245016(context, evt)
	if 245003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_245016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 199001245, 245003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_245017(context, evt)
	-- 判断是gadgetid 245003 option_id 177
	if 245003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_245017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 245003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 245002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 245002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（194.6，162.02，475.6074），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=194.6, y=162.02, z=475.6074}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_245018(context, evt)
	-- 将configid为 245002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 245002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为245003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 245003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199001245, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end