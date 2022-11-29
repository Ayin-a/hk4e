-- 基础信息
local base_info = {
	group_id = 133210360
}

-- Trigger变量
local defs = {
	duration = 60,
	group_id = 133210360,
	gadget_sum = 6
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
	{ config_id = 360001, gadget_id = 70220072, pos = { x = -3423.275, y = 199.999, z = -651.048 }, rot = { x = 0.000, y = 164.535, z = 0.000 }, level = 1, persistent = true, area_id = 17 },
	{ config_id = 360002, gadget_id = 70350250, pos = { x = -3416.277, y = 199.999, z = -633.239 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 17 },
	{ config_id = 360003, gadget_id = 70210105, pos = { x = -3419.221, y = 199.999, z = -633.635 }, rot = { x = 0.000, y = 58.391, z = 0.000 }, level = 26, drop_tag = "水上搜刮点稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 17 },
	{ config_id = 360004, gadget_id = 70220072, pos = { x = -3372.985, y = 199.999, z = -596.151 }, rot = { x = 0.000, y = 74.791, z = 0.000 }, level = 1, persistent = true, area_id = 17 },
	{ config_id = 360005, gadget_id = 70360001, pos = { x = -3416.268, y = 199.999, z = -633.227 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 17 },
	{ config_id = 360006, gadget_id = 70220072, pos = { x = -3433.014, y = 199.999, z = -589.991 }, rot = { x = 0.000, y = 153.828, z = 0.000 }, level = 1, persistent = true, area_id = 17 },
	{ config_id = 360007, gadget_id = 70220072, pos = { x = -3408.935, y = 199.999, z = -574.387 }, rot = { x = 0.000, y = 255.211, z = 0.000 }, level = 1, persistent = true, area_id = 17 },
	{ config_id = 360008, gadget_id = 70220072, pos = { x = -3448.734, y = 199.999, z = -652.079 }, rot = { x = 0.000, y = 196.236, z = 0.000 }, level = 1, persistent = true, area_id = 17 },
	{ config_id = 360009, gadget_id = 70220072, pos = { x = -3383.809, y = 199.999, z = -647.778 }, rot = { x = 0.000, y = 274.463, z = 0.000 }, level = 1, persistent = true, area_id = 17 },
	{ config_id = 360016, gadget_id = 70290179, pos = { x = -3398.464, y = 199.999, z = -579.867 }, rot = { x = 0.000, y = 150.401, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 360017, gadget_id = 70290179, pos = { x = -3421.886, y = 199.999, z = -576.782 }, rot = { x = 0.000, y = 150.401, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 360018, gadget_id = 70290179, pos = { x = -3438.002, y = 199.999, z = -646.596 }, rot = { x = 0.000, y = 150.401, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 360019, gadget_id = 70290179, pos = { x = -3378.405, y = 199.999, z = -614.623 }, rot = { x = 0.000, y = 150.401, z = 0.000 }, level = 1, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1360010, name = "CHALLENGE_SUCCESS_360010", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "56", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_360010" },
	{ config_id = 1360011, name = "CHALLENGE_FAIL_360011", event = EventType.EVENT_CHALLENGE_FAIL, source = "56", condition = "", action = "action_EVENT_CHALLENGE_FAIL_360011", trigger_count = 0 },
	{ config_id = 1360012, name = "GADGET_STATE_CHANGE_360012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_360012", action = "action_EVENT_GADGET_STATE_CHANGE_360012", trigger_count = 0 },
	{ config_id = 1360013, name = "ANY_GADGET_DIE_360013", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "201" },
	{ config_id = 1360014, name = "GADGET_CREATE_360014", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_360014", action = "action_EVENT_GADGET_CREATE_360014", trigger_count = 0 },
	{ config_id = 1360015, name = "SELECT_OPTION_360015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_360015", action = "action_EVENT_SELECT_OPTION_360015", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1360025, name = "GROUP_LOAD_360025", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_360025", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "gadget_start", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 360020, gadget_id = 70950093, pos = { x = -3383.588, y = 199.999, z = -597.769 }, rot = { x = 0.000, y = 329.032, z = 0.000 }, level = 1, area_id = 17 },
		{ config_id = 360021, gadget_id = 70950093, pos = { x = -3439.485, y = 199.999, z = -654.995 }, rot = { x = 0.000, y = 37.395, z = 0.000 }, level = 1, area_id = 17 },
		{ config_id = 360022, gadget_id = 70950093, pos = { x = -3414.244, y = 199.999, z = -584.281 }, rot = { x = 0.000, y = 320.603, z = 0.000 }, level = 1, area_id = 17 },
		{ config_id = 360023, gadget_id = 70950093, pos = { x = -3387.944, y = 199.999, z = -644.245 }, rot = { x = 0.000, y = 273.282, z = 0.000 }, level = 1, area_id = 17 },
		{ config_id = 360024, gadget_id = 70950093, pos = { x = -3384.258, y = 199.999, z = -652.723 }, rot = { x = 0.000, y = 320.346, z = 0.000 }, level = 1, area_id = 17 }
	}
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
		gadgets = { 360002, 360005 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_360010", "CHALLENGE_FAIL_360011", "GADGET_STATE_CHANGE_360012", "ANY_GADGET_DIE_360013", "GADGET_CREATE_360014", "SELECT_OPTION_360015", "GROUP_LOAD_360025" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 360001, 360004, 360006, 360007, 360008, 360009, 360016, 360017, 360018, 360019 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 360002, 360003 },
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
function action_EVENT_CHALLENGE_SUCCESS_360010(context, evt)
	-- 将configid为 360002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 360002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 360005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133210360, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3003, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_360011(context, evt)
	-- 将configid为 360002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 360002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133210360, 2)
	
	-- 创建id为360005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 360005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3003, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 将本组内变量名为 "gadget_start" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gadget_start", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_360012(context, evt)
	if 360002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_360012(context, evt)
	-- 201号挑战,duration内破坏炸药桶
	if 0 ~= ScriptLib.ActiveChallenge(context, 56, 201, defs.duration, 2, 201, defs.gadget_sum) then
	return -1
	end
	
	-- 添加suite2的新内容
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= ScriptLib.MarkPlayerAction(context, 3003, 1, 1) then
	return -1
	end
	
	return 0
	
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_360014(context, evt)
	if 360005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_360014(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210360, 360005, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_360015(context, evt)
	-- 判断是gadgetid 360005 option_id 177
	if 360005 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_360015(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 360005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 360002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 360002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_360025(context, evt)
	-- 将configid为 360002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 360002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133210360, 2)
	
	-- 创建id为360005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 360005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3003, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 将本组内变量名为 "gadget_start" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gadget_start", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end