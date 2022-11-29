-- 基础信息
local base_info = {
	group_id = 199003104
}

-- Trigger变量
local defs = {
	duration = 180,
	group_id = 199003104
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
	{ config_id = 104001, gadget_id = 70211101, pos = { x = -698.398, y = 190.883, z = -44.860 }, rot = { x = 0.000, y = 344.365, z = 0.000 }, level = 16, drop_tag = "解谜低级群岛", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 403 },
	{ config_id = 104002, gadget_id = 70350083, pos = { x = -738.254, y = 129.212, z = -253.709 }, rot = { x = 0.470, y = 0.000, z = 0.000 }, level = 20, persistent = true, area_id = 403 },
	{ config_id = 104003, gadget_id = 70360001, pos = { x = -738.254, y = 130.624, z = -253.761 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, persistent = true, area_id = 403 },
	{ config_id = 104004, gadget_id = 70360094, pos = { x = -737.945, y = 133.058, z = -248.083 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 104005, gadget_id = 70360094, pos = { x = -710.309, y = 164.319, z = -210.360 }, rot = { x = 356.203, y = 50.015, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 104006, gadget_id = 70360094, pos = { x = -693.742, y = 157.602, z = -197.969 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 104007, gadget_id = 70360094, pos = { x = -684.457, y = 167.827, z = -172.753 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 104008, gadget_id = 70360094, pos = { x = -687.912, y = 172.587, z = -137.223 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 104009, gadget_id = 70360094, pos = { x = -686.073, y = 169.805, z = -158.197 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 104010, gadget_id = 70360094, pos = { x = -698.546, y = 191.609, z = -49.622 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 104011, gadget_id = 70360094, pos = { x = -682.684, y = 164.844, z = -180.876 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 104020, gadget_id = 70360001, pos = { x = -697.979, y = 190.852, z = -46.404 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1104012, name = "CHALLENGE_SUCCESS_104012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_104012", trigger_count = 0 },
	{ config_id = 1104013, name = "CHALLENGE_FAIL_104013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_104013", trigger_count = 0 },
	{ config_id = 1104014, name = "GADGET_STATE_CHANGE_104014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_104014", action = "action_EVENT_GADGET_STATE_CHANGE_104014", trigger_count = 0 },
	{ config_id = 1104015, name = "ANY_GADGET_DIE_104015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
	{ config_id = 1104016, name = "GADGET_CREATE_104016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_104016", action = "action_EVENT_GADGET_CREATE_104016", trigger_count = 0 },
	{ config_id = 1104017, name = "SELECT_OPTION_104017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_104017", action = "action_EVENT_SELECT_OPTION_104017", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1104018, name = "GROUP_LOAD_104018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_104018", trigger_count = 0 }
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
		gadgets = { 104002, 104003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_104012", "CHALLENGE_FAIL_104013", "GADGET_STATE_CHANGE_104014", "ANY_GADGET_DIE_104015", "GADGET_CREATE_104016", "SELECT_OPTION_104017", "GROUP_LOAD_104018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 104004, 104005, 104006, 104007, 104008, 104009, 104010, 104011, 104020 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 104001, 104002 },
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
function action_EVENT_CHALLENGE_SUCCESS_104012(context, evt)
	-- 将configid为 104002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 104002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 199003104, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 199003104, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 创建id为104001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 104001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_104013(context, evt)
	-- 将configid为 104002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 104002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为104003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 104003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199003104, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_104014(context, evt)
	if 104002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_104014(context, evt)
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
function condition_EVENT_GADGET_CREATE_104016(context, evt)
	if 104003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_104016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 199003104, 104003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_104017(context, evt)
	-- 判断是gadgetid 104003 option_id 177
	if 104003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_104017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 104003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 104002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 104002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（-737，133，-248），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-737, y=133, z=-248}
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
function action_EVENT_GROUP_LOAD_104018(context, evt)
	-- 将configid为 104002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 104002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为104003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 104003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199003104, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end