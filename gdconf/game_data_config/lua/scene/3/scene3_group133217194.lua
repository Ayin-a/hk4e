-- 基础信息
local base_info = {
	group_id = 133217194
}

-- Trigger变量
local defs = {
	duration = 15,
	group_id = 133217194,
	gadget_sum = 12
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
	{ config_id = 194001, gadget_id = 70220045, pos = { x = -4929.689, y = 200.000, z = -3815.844 }, rot = { x = 0.000, y = 152.188, z = 0.000 }, level = 2, persistent = true, area_id = 14 },
	{ config_id = 194002, gadget_id = 70350084, pos = { x = -4926.036, y = 202.792, z = -3804.920 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 14 },
	{ config_id = 194003, gadget_id = 70211101, pos = { x = -4903.365, y = 200.900, z = -3812.738 }, rot = { x = 22.986, y = 267.404, z = 0.000 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 },
	{ config_id = 194004, gadget_id = 70220045, pos = { x = -4927.065, y = 200.000, z = -3815.198 }, rot = { x = 0.000, y = 152.188, z = 0.000 }, level = 2, persistent = true, area_id = 14 },
	{ config_id = 194005, gadget_id = 70360001, pos = { x = -4926.027, y = 203.757, z = -3804.908 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 14 },
	{ config_id = 194012, gadget_id = 70220045, pos = { x = -4914.071, y = 200.000, z = -3813.854 }, rot = { x = 0.000, y = 330.690, z = 0.000 }, level = 30, persistent = true, area_id = 14 },
	{ config_id = 194013, gadget_id = 70220045, pos = { x = -4916.680, y = 200.000, z = -3814.568 }, rot = { x = 0.000, y = 330.690, z = 0.000 }, level = 30, persistent = true, area_id = 14 },
	{ config_id = 194014, gadget_id = 70220045, pos = { x = -4928.704, y = 200.000, z = -3818.406 }, rot = { x = 0.000, y = 152.188, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 194015, gadget_id = 70220045, pos = { x = -4915.124, y = 200.000, z = -3811.316 }, rot = { x = 0.000, y = 330.690, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 194016, gadget_id = 70220045, pos = { x = -4916.275, y = 200.000, z = -3827.389 }, rot = { x = 0.000, y = 330.690, z = 0.000 }, level = 30, persistent = true, area_id = 14 },
	{ config_id = 194017, gadget_id = 70220045, pos = { x = -4918.881, y = 200.000, z = -3828.104 }, rot = { x = 0.000, y = 330.690, z = 0.000 }, level = 30, persistent = true, area_id = 14 },
	{ config_id = 194018, gadget_id = 70220045, pos = { x = -4917.324, y = 200.000, z = -3824.852 }, rot = { x = 0.000, y = 330.690, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 194019, gadget_id = 70220045, pos = { x = -4936.031, y = 200.000, z = -3822.290 }, rot = { x = 0.000, y = 330.690, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 194020, gadget_id = 70220045, pos = { x = -4935.858, y = 200.000, z = -3825.021 }, rot = { x = 0.000, y = 330.690, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 194021, gadget_id = 70220045, pos = { x = -4933.191, y = 200.000, z = -3823.793 }, rot = { x = 0.000, y = 330.690, z = 0.000 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1194006, name = "CHALLENGE_SUCCESS_194006", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "56", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_194006", trigger_count = 0 },
	{ config_id = 1194007, name = "CHALLENGE_FAIL_194007", event = EventType.EVENT_CHALLENGE_FAIL, source = "56", condition = "", action = "action_EVENT_CHALLENGE_FAIL_194007", trigger_count = 0 },
	{ config_id = 1194008, name = "GADGET_STATE_CHANGE_194008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_194008", action = "action_EVENT_GADGET_STATE_CHANGE_194008", trigger_count = 0 },
	{ config_id = 1194009, name = "ANY_GADGET_DIE_194009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "201" },
	{ config_id = 1194010, name = "GADGET_CREATE_194010", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_194010", action = "action_EVENT_GADGET_CREATE_194010", trigger_count = 0 },
	{ config_id = 1194011, name = "SELECT_OPTION_194011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_194011", action = "action_EVENT_SELECT_OPTION_194011", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1194022, name = "GROUP_LOAD_194022", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_194022", trigger_count = 0 }
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
		gadgets = { 194002, 194005 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_194006", "CHALLENGE_FAIL_194007", "GADGET_STATE_CHANGE_194008", "ANY_GADGET_DIE_194009", "GADGET_CREATE_194010", "SELECT_OPTION_194011", "GROUP_LOAD_194022" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 194001, 194004, 194012, 194013, 194014, 194015, 194016, 194017, 194018, 194019, 194020, 194021 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 194002, 194003 },
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
function action_EVENT_CHALLENGE_SUCCESS_194006(context, evt)
	-- 将configid为 194002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 194002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 194005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133217194, 3) then
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
function action_EVENT_CHALLENGE_FAIL_194007(context, evt)
	-- 将configid为 194002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 194002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133217194, 2)
	
	-- 创建id为194005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 194005 }) then
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
function condition_EVENT_GADGET_STATE_CHANGE_194008(context, evt)
	if 194002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_194008(context, evt)
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
function condition_EVENT_GADGET_CREATE_194010(context, evt)
	if 194005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_194010(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133217194, 194005, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_194011(context, evt)
	-- 判断是gadgetid 194005 option_id 177
	if 194005 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_194011(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 194005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 194002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 194002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_194022(context, evt)
	-- 将configid为 194002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 194002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133217194, 2)
	
	-- 创建id为194005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 194005 }) then
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