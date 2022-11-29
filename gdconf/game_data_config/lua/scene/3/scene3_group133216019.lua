-- 基础信息
local base_info = {
	group_id = 133216019
}

-- Trigger变量
local defs = {
	duration = 120,
	group_id = 133216019,
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
	{ config_id = 19001, gadget_id = 70220005, pos = { x = -5033.031, y = 206.049, z = -2719.570 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 18 },
	{ config_id = 19002, gadget_id = 70350084, pos = { x = -5015.197, y = 200.104, z = -2687.153 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 18 },
	{ config_id = 19003, gadget_id = 70211101, pos = { x = -5014.251, y = 200.199, z = -2681.465 }, rot = { x = 0.000, y = 188.917, z = 0.000 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 19004, gadget_id = 70220005, pos = { x = -5033.458, y = 206.044, z = -2714.178 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 18 },
	{ config_id = 19005, gadget_id = 70360001, pos = { x = -5015.188, y = 201.069, z = -2687.141 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 18 },
	{ config_id = 19013, gadget_id = 70220005, pos = { x = -4976.031, y = 205.980, z = -2708.716 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, area_id = 18 },
	{ config_id = 19014, gadget_id = 70220005, pos = { x = -5038.896, y = 205.987, z = -2713.459 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, area_id = 18 },
	{ config_id = 19015, gadget_id = 70220005, pos = { x = -4987.853, y = 205.982, z = -2720.832 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, area_id = 18 },
	{ config_id = 19016, gadget_id = 70220005, pos = { x = -4983.790, y = 206.071, z = -2716.950 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1019006, name = "CHALLENGE_SUCCESS_19006", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "56", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_19006", trigger_count = 0 },
	{ config_id = 1019007, name = "CHALLENGE_FAIL_19007", event = EventType.EVENT_CHALLENGE_FAIL, source = "56", condition = "", action = "action_EVENT_CHALLENGE_FAIL_19007", trigger_count = 0 },
	{ config_id = 1019008, name = "GADGET_STATE_CHANGE_19008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_19008", action = "action_EVENT_GADGET_STATE_CHANGE_19008", trigger_count = 0 },
	{ config_id = 1019009, name = "ANY_GADGET_DIE_19009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "201" },
	{ config_id = 1019010, name = "GADGET_CREATE_19010", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_19010", action = "action_EVENT_GADGET_CREATE_19010", trigger_count = 0 },
	{ config_id = 1019011, name = "SELECT_OPTION_19011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_19011", action = "action_EVENT_SELECT_OPTION_19011", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1019012, name = "GROUP_LOAD_19012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_19012", trigger_count = 0 },
	-- 增加地城保底
	{ config_id = 1019017, name = "GROUP_LOAD_19017", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_19017", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "gadget_start", value = 0, no_refresh = true }
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
		gadgets = { 19002, 19005 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_19006", "CHALLENGE_FAIL_19007", "GADGET_STATE_CHANGE_19008", "ANY_GADGET_DIE_19009", "GADGET_CREATE_19010", "SELECT_OPTION_19011", "GROUP_LOAD_19012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 19001, 19004, 19013, 19014, 19015, 19016 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 19002, 19003 },
		regions = { },
		triggers = { "GROUP_LOAD_19017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_19006(context, evt)
	-- 将本组内变量名为 "challenge_finish_3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "challenge_finish_3", 1, 133216006) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将configid为 19002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 19002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 19005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133216019, 3) then
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
function action_EVENT_CHALLENGE_FAIL_19007(context, evt)
	-- 将configid为 19002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 19002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133216019, 2)
	
	-- 创建id为19005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 19005 }) then
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
function condition_EVENT_GADGET_STATE_CHANGE_19008(context, evt)
	if 19002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_19008(context, evt)
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
function condition_EVENT_GADGET_CREATE_19010(context, evt)
	if 19005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_19010(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133216019, 19005, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_19011(context, evt)
	-- 判断是gadgetid 19005 option_id 177
	if 19005 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_19011(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 19005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 19002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 19002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_19012(context, evt)
	-- 将configid为 19002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 19002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133216019, 2)
	
	-- 创建id为19005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 19005 }) then
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

-- 触发操作
function action_EVENT_GROUP_LOAD_19017(context, evt)
	-- 将本组内变量名为 "challenge_finish_3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "challenge_finish_3", 1, 133216006) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end