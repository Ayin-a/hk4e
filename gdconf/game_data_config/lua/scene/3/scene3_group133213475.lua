-- 基础信息
local base_info = {
	group_id = 133213475
}

-- Trigger变量
local defs = {
	duration = 50,
	group_id = 133213475
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
	{ config_id = 475001, gadget_id = 70211121, pos = { x = -3772.321, y = 200.215, z = -3132.378 }, rot = { x = 5.437, y = 136.065, z = 2.328 }, level = 26, drop_tag = "解谜高级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 },
	{ config_id = 475002, gadget_id = 70350093, pos = { x = -3770.285, y = 198.733, z = -3135.823 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 12 },
	{ config_id = 475003, gadget_id = 70360001, pos = { x = -3770.285, y = 199.698, z = -3135.830 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 12 },
	{ config_id = 475004, gadget_id = 70290150, pos = { x = -3755.938, y = 200.000, z = -3149.598 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 12 },
	{ config_id = 475005, gadget_id = 70290150, pos = { x = -3743.624, y = 200.000, z = -3165.744 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 12 },
	{ config_id = 475006, gadget_id = 70290150, pos = { x = -3730.543, y = 200.000, z = -3178.379 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 12 },
	{ config_id = 475007, gadget_id = 70290150, pos = { x = -3713.943, y = 200.000, z = -3184.705 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 12 },
	{ config_id = 475008, gadget_id = 70290150, pos = { x = -3703.444, y = 200.000, z = -3175.562 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 12 },
	{ config_id = 475009, gadget_id = 70290150, pos = { x = -3695.186, y = 200.000, z = -3166.707 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 12 },
	{ config_id = 475010, gadget_id = 70290150, pos = { x = -3687.033, y = 200.000, z = -3160.124 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 12 },
	{ config_id = 475011, gadget_id = 70290150, pos = { x = -3673.498, y = 200.000, z = -3150.770 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 12 },
	{ config_id = 475018, gadget_id = 70290150, pos = { x = -3669.584, y = 200.000, z = -3137.495 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 475019, gadget_id = 70290150, pos = { x = -3669.098, y = 200.000, z = -3123.611 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 475020, gadget_id = 70290150, pos = { x = -3675.805, y = 200.000, z = -3113.641 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 475021, gadget_id = 70290150, pos = { x = -3690.639, y = 200.000, z = -3100.837 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 475022, gadget_id = 70290150, pos = { x = -3709.985, y = 200.000, z = -3096.032 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 475023, gadget_id = 70290150, pos = { x = -3726.353, y = 200.000, z = -3099.896 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 475024, gadget_id = 70290150, pos = { x = -3737.700, y = 200.000, z = -3112.878 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 475025, gadget_id = 70290150, pos = { x = -3750.044, y = 200.000, z = -3126.508 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1475012, name = "CHALLENGE_SUCCESS_475012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_475012", trigger_count = 0 },
	{ config_id = 1475013, name = "CHALLENGE_FAIL_475013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_475013", trigger_count = 0 },
	{ config_id = 1475014, name = "GADGET_STATE_CHANGE_475014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_475014", action = "action_EVENT_GADGET_STATE_CHANGE_475014", trigger_count = 0 },
	{ config_id = 1475015, name = "ANY_GADGET_DIE_475015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
	{ config_id = 1475016, name = "GADGET_CREATE_475016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_475016", action = "action_EVENT_GADGET_CREATE_475016", trigger_count = 0 },
	{ config_id = 1475017, name = "SELECT_OPTION_475017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_475017", action = "action_EVENT_SELECT_OPTION_475017", trigger_count = 0 },
	{ config_id = 1475026, name = "ANY_GADGET_DIE_475026", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_475026", action = "action_EVENT_ANY_GADGET_DIE_475026" },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1475027, name = "GROUP_LOAD_475027", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_475027", trigger_count = 0 }
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
		gadgets = { 475002, 475003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_475012", "CHALLENGE_FAIL_475013", "GADGET_STATE_CHANGE_475014", "ANY_GADGET_DIE_475015", "GADGET_CREATE_475016", "SELECT_OPTION_475017", "GROUP_LOAD_475027" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 475004, 475005, 475006, 475007, 475008, 475009, 475010, 475011 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_475026" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 475002 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 475018, 475019, 475020, 475021, 475022, 475023, 475024, 475025 },
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
function action_EVENT_CHALLENGE_SUCCESS_475012(context, evt)
	-- 将configid为 475002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 475002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133213475, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133213475, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 创建id为475001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 475001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_475013(context, evt)
	-- 将configid为 475002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 475002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为475003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 475003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213475, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213475, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_475014(context, evt)
	if 475002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_475014(context, evt)
	-- 202号挑战,duration内开启宝箱
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 247, defs.duration, 2, 218, 16) then
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
function condition_EVENT_GADGET_CREATE_475016(context, evt)
	if 475003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_475016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133213475, 475003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_475017(context, evt)
	-- 判断是gadgetid 475003 option_id 177
	if 475003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_475017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 475003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 475002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 475002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（-3755.938，200，-3149.598），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-3755.938, y=200, z=-3149.598}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_475026(context, evt)
	-- 判断指定group组剩余gadget数量是否是1 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133213475}) ~= 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_475026(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213475, 4)
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_475027(context, evt)
	-- 将configid为 475002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 475002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为475003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 475003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213475, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end