-- 基础信息
local base_info = {
	group_id = 133106549
}

-- Trigger变量
local defs = {
	duration = 25,
	group_id = 133106549,
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
	{ config_id = 549001, gadget_id = 70211111, pos = { x = -633.472, y = 162.556, z = 1991.131 }, rot = { x = 355.412, y = 117.497, z = 6.140 }, level = 26, drop_tag = "解谜中级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 },
	{ config_id = 549002, gadget_id = 70350093, pos = { x = -556.983, y = 152.473, z = 1929.079 }, rot = { x = 0.000, y = 340.426, z = 11.523 }, level = 19, persistent = true, area_id = 19 },
	{ config_id = 549003, gadget_id = 70360001, pos = { x = -557.163, y = 153.419, z = 1929.009 }, rot = { x = 0.000, y = 340.426, z = 11.523 }, level = 19, persistent = true, area_id = 19 },
	{ config_id = 549004, gadget_id = 70290352, pos = { x = -563.072, y = 152.171, z = 1934.180 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 19 },
	{ config_id = 549005, gadget_id = 70290352, pos = { x = -568.476, y = 152.197, z = 1943.302 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 19 },
	{ config_id = 549006, gadget_id = 70290352, pos = { x = -575.030, y = 154.401, z = 1956.391 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 19 },
	{ config_id = 549007, gadget_id = 70290352, pos = { x = -584.382, y = 155.548, z = 1972.449 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 19 },
	{ config_id = 549008, gadget_id = 70290352, pos = { x = -603.303, y = 164.848, z = 1985.633 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 19 },
	{ config_id = 549009, gadget_id = 70290352, pos = { x = -619.792, y = 163.478, z = 1990.965 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 19 },
	{ config_id = 549010, gadget_id = 70290352, pos = { x = -626.640, y = 163.678, z = 1992.242 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 19 },
	{ config_id = 549011, gadget_id = 70290352, pos = { x = -591.734, y = 160.105, z = 1979.295 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 19 },
	{ config_id = 549019, gadget_id = 70690001, pos = { x = -575.273, y = 154.262, z = 1956.649 }, rot = { x = 0.000, y = 333.774, z = 0.000 }, level = 36, area_id = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1549012, name = "CHALLENGE_SUCCESS_549012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_549012", trigger_count = 0 },
	{ config_id = 1549013, name = "CHALLENGE_FAIL_549013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_549013", trigger_count = 0 },
	{ config_id = 1549014, name = "GADGET_STATE_CHANGE_549014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_549014", action = "action_EVENT_GADGET_STATE_CHANGE_549014", trigger_count = 0 },
	{ config_id = 1549015, name = "ANY_GADGET_DIE_549015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
	{ config_id = 1549016, name = "GADGET_CREATE_549016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_549016", action = "action_EVENT_GADGET_CREATE_549016", trigger_count = 0 },
	{ config_id = 1549017, name = "SELECT_OPTION_549017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_549017", action = "action_EVENT_SELECT_OPTION_549017", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1549018, name = "GROUP_LOAD_549018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_549018", trigger_count = 0 }
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
		gadgets = { 549002, 549003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_549012", "CHALLENGE_FAIL_549013", "GADGET_STATE_CHANGE_549014", "ANY_GADGET_DIE_549015", "GADGET_CREATE_549016", "SELECT_OPTION_549017", "GROUP_LOAD_549018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 549004, 549005, 549006, 549007, 549008, 549009, 549010, 549011, 549019 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 549002 },
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
function action_EVENT_CHALLENGE_SUCCESS_549012(context, evt)
	-- 将configid为 549002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 549002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133106549, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133106549, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 创建id为549001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 549001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_549013(context, evt)
	-- 将configid为 549002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 549002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为549003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 549003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133106549, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_549014(context, evt)
	if 549002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_549014(context, evt)
	-- 247号挑战,duration内开启宝箱
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 259, defs.duration, 2, 218, defs.collectable_sum) then
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
function condition_EVENT_GADGET_CREATE_549016(context, evt)
	if 549003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_549016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133106549, 549003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_549017(context, evt)
	-- 判断是gadgetid 549003 option_id 177
	if 549003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_549017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 549003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 549002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 549002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（-575.0302，154.4008，1956.391），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-575.0302, y=154.4008, z=1956.391}
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
function action_EVENT_GROUP_LOAD_549018(context, evt)
	-- 将configid为 549002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 549002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为549003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 549003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133106549, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end