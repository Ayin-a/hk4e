-- 基础信息
local base_info = {
	group_id = 199001243
}

-- Trigger变量
local defs = {
	duration = 50,
	group_id = 199001243
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
	{ config_id = 243001, gadget_id = 70211111, pos = { x = 322.090, y = 241.380, z = 178.865 }, rot = { x = 0.000, y = 23.703, z = 348.611 }, level = 16, drop_tag = "解谜中级群岛", isOneoff = true, persistent = true, autopick = true, explore = { name = "chest", exp = 1 }, area_id = 402 },
	{ config_id = 243002, gadget_id = 70350083, pos = { x = 316.320, y = 243.313, z = 178.390 }, rot = { x = 0.000, y = 54.591, z = 0.000 }, level = 20, persistent = true, area_id = 402 },
	{ config_id = 243003, gadget_id = 70360001, pos = { x = 315.928, y = 244.285, z = 177.370 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, persistent = true, area_id = 402 },
	{ config_id = 243004, gadget_id = 70360094, pos = { x = 321.881, y = 254.278, z = 134.841 }, rot = { x = 13.987, y = 29.954, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 243005, gadget_id = 70360094, pos = { x = 324.249, y = 251.887, z = 135.979 }, rot = { x = 13.987, y = 29.954, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 243006, gadget_id = 70360094, pos = { x = 326.379, y = 248.239, z = 137.688 }, rot = { x = 13.987, y = 29.954, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 243007, gadget_id = 70360094, pos = { x = 259.199, y = 257.017, z = 185.387 }, rot = { x = 13.987, y = 120.406, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 243008, gadget_id = 70360094, pos = { x = 260.594, y = 253.428, z = 181.889 }, rot = { x = 13.987, y = 120.406, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 243009, gadget_id = 70360094, pos = { x = 262.967, y = 250.756, z = 180.569 }, rot = { x = 13.987, y = 120.406, z = 0.000 }, level = 20, area_id = 402 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1243012, name = "CHALLENGE_SUCCESS_243012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_243012", trigger_count = 0 },
	{ config_id = 1243013, name = "CHALLENGE_FAIL_243013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_243013", trigger_count = 0 },
	{ config_id = 1243014, name = "GADGET_STATE_CHANGE_243014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_243014", action = "action_EVENT_GADGET_STATE_CHANGE_243014", trigger_count = 0 },
	{ config_id = 1243015, name = "ANY_GADGET_DIE_243015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
	{ config_id = 1243016, name = "GADGET_CREATE_243016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_243016", action = "action_EVENT_GADGET_CREATE_243016", trigger_count = 0 },
	{ config_id = 1243017, name = "SELECT_OPTION_243017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_243017", action = "action_EVENT_SELECT_OPTION_243017", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1243018, name = "GROUP_LOAD_243018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_243018", trigger_count = 0 }
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
		gadgets = { 243002, 243003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_243012", "CHALLENGE_FAIL_243013", "GADGET_STATE_CHANGE_243014", "ANY_GADGET_DIE_243015", "GADGET_CREATE_243016", "SELECT_OPTION_243017", "GROUP_LOAD_243018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 243004, 243005, 243006, 243007, 243008, 243009 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 243002 },
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
function action_EVENT_CHALLENGE_SUCCESS_243012(context, evt)
	-- 将configid为 243002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 243002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 199001243, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 199001243, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 创建id为243001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 243001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_243013(context, evt)
	-- 将configid为 243002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 243002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为243003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 243003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199001243, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_243014(context, evt)
	if 243002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_243014(context, evt)
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
function condition_EVENT_GADGET_CREATE_243016(context, evt)
	if 243003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_243016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 199001243, 243003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_243017(context, evt)
	-- 判断是gadgetid 243003 option_id 177
	if 243003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_243017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 243003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 243002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 243002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（321.8764，254.4762，134.8326），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=321.8764, y=254.4762, z=134.8326}
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
function action_EVENT_GROUP_LOAD_243018(context, evt)
	-- 将configid为 243002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 243002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为243003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 243003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199001243, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end