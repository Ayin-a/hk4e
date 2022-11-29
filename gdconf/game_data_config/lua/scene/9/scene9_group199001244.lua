-- 基础信息
local base_info = {
	group_id = 199001244
}

-- Trigger变量
local defs = {
	duration = 30,
	group_id = 199001244
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
	{ config_id = 244001, gadget_id = 70211111, pos = { x = 257.311, y = 120.161, z = 180.461 }, rot = { x = 358.926, y = 294.531, z = 357.590 }, level = 16, drop_tag = "解谜中级群岛", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 402 },
	{ config_id = 244002, gadget_id = 70350083, pos = { x = 186.648, y = 209.114, z = 264.734 }, rot = { x = 0.000, y = 54.591, z = 0.000 }, level = 20, persistent = true, area_id = 402 },
	{ config_id = 244003, gadget_id = 70360001, pos = { x = 186.648, y = 209.114, z = 264.734 }, rot = { x = 0.000, y = 54.591, z = 0.000 }, level = 20, persistent = true, area_id = 402 },
	{ config_id = 244004, gadget_id = 70360094, pos = { x = 174.481, y = 209.720, z = 260.878 }, rot = { x = 354.291, y = 204.987, z = 15.937 }, level = 20, area_id = 402 },
	{ config_id = 244005, gadget_id = 70360094, pos = { x = 163.012, y = 209.001, z = 232.046 }, rot = { x = 14.994, y = 161.927, z = 349.635 }, level = 20, area_id = 402 },
	{ config_id = 244006, gadget_id = 70360094, pos = { x = 181.094, y = 204.036, z = 206.429 }, rot = { x = 19.901, y = 136.557, z = 344.676 }, level = 20, area_id = 402 },
	{ config_id = 244007, gadget_id = 70360094, pos = { x = 216.053, y = 192.686, z = 186.840 }, rot = { x = 7.528, y = 101.912, z = 336.169 }, level = 20, area_id = 402 },
	{ config_id = 244008, gadget_id = 70360094, pos = { x = 243.157, y = 187.000, z = 186.517 }, rot = { x = 7.528, y = 101.912, z = 336.169 }, level = 20, area_id = 402 },
	{ config_id = 244009, gadget_id = 70360094, pos = { x = 245.062, y = 179.000, z = 186.517 }, rot = { x = 7.528, y = 101.912, z = 336.169 }, level = 20, area_id = 402 },
	{ config_id = 244010, gadget_id = 70360094, pos = { x = 246.881, y = 169.318, z = 186.517 }, rot = { x = 7.528, y = 101.912, z = 336.169 }, level = 20, area_id = 402 },
	{ config_id = 244011, gadget_id = 70360094, pos = { x = 249.137, y = 154.815, z = 186.041 }, rot = { x = 7.528, y = 101.912, z = 336.169 }, level = 20, area_id = 402 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1244012, name = "CHALLENGE_SUCCESS_244012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_244012", trigger_count = 0 },
	{ config_id = 1244013, name = "CHALLENGE_FAIL_244013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_244013", trigger_count = 0 },
	{ config_id = 1244014, name = "GADGET_STATE_CHANGE_244014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_244014", action = "action_EVENT_GADGET_STATE_CHANGE_244014", trigger_count = 0 },
	{ config_id = 1244015, name = "ANY_GADGET_DIE_244015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
	{ config_id = 1244016, name = "GADGET_CREATE_244016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_244016", action = "action_EVENT_GADGET_CREATE_244016", trigger_count = 0 },
	{ config_id = 1244017, name = "SELECT_OPTION_244017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_244017", action = "action_EVENT_SELECT_OPTION_244017", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1244018, name = "GROUP_LOAD_244018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_244018", trigger_count = 0 }
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
		gadgets = { 244002, 244003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_244012", "CHALLENGE_FAIL_244013", "GADGET_STATE_CHANGE_244014", "ANY_GADGET_DIE_244015", "GADGET_CREATE_244016", "SELECT_OPTION_244017", "GROUP_LOAD_244018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 244004, 244005, 244006, 244007, 244008, 244009, 244010, 244011 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 244002 },
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
function action_EVENT_CHALLENGE_SUCCESS_244012(context, evt)
	-- 将configid为 244002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 244002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 199001244, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 199001244, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 创建id为244001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 244001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_244013(context, evt)
	-- 将configid为 244002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 244002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为244003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 244003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199001244, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_244014(context, evt)
	if 244002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_244014(context, evt)
	-- 202号挑战,duration内开启宝箱
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 218, defs.duration, 2, 218, 8) then
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
function condition_EVENT_GADGET_CREATE_244016(context, evt)
	if 244003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_244016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 199001244, 244003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_244017(context, evt)
	-- 判断是gadgetid 244003 option_id 177
	if 244003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_244017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 244003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 244002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 244002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（161.4586，207.5385，238.6745），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=161.4586, y=207.5385, z=238.6745}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_244018(context, evt)
	-- 将configid为 244002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 244002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为244003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 244003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199001244, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end