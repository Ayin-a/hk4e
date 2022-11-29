-- 基础信息
local base_info = {
	group_id = 155007105
}

-- Trigger变量
local defs = {
	duration = 50,
	group_id = 155007105,
	gadget_sum = 7
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
	{ config_id = 105001, gadget_id = 70220043, pos = { x = -168.045, y = 203.170, z = 1635.972 }, rot = { x = 0.000, y = 239.585, z = 0.000 }, level = 1, persistent = true, area_id = 200 },
	{ config_id = 105002, gadget_id = 70350094, pos = { x = -183.877, y = 206.801, z = 1628.442 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 200 },
	{ config_id = 105003, gadget_id = 70211101, pos = { x = -178.902, y = 204.558, z = 1622.877 }, rot = { x = 349.005, y = 282.117, z = 4.833 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
	{ config_id = 105004, gadget_id = 70220043, pos = { x = -175.159, y = 202.733, z = 1634.794 }, rot = { x = 14.845, y = 207.026, z = 2.978 }, level = 1, persistent = true, area_id = 200 },
	{ config_id = 105005, gadget_id = 70360001, pos = { x = -183.868, y = 207.963, z = 1628.454 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 200 },
	{ config_id = 105013, gadget_id = 70220043, pos = { x = -169.180, y = 210.290, z = 1649.598 }, rot = { x = 4.330, y = 238.045, z = 6.792 }, level = 36, area_id = 200 },
	{ config_id = 105014, gadget_id = 70220043, pos = { x = -183.284, y = 203.170, z = 1640.822 }, rot = { x = 0.000, y = 202.693, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 105015, gadget_id = 70220043, pos = { x = -173.188, y = 213.655, z = 1658.226 }, rot = { x = 4.828, y = 215.791, z = 7.626 }, level = 36, area_id = 200 },
	{ config_id = 105016, gadget_id = 70220043, pos = { x = -166.051, y = 222.614, z = 1659.227 }, rot = { x = 11.162, y = 194.510, z = 3.170 }, level = 36, area_id = 200 },
	{ config_id = 105017, gadget_id = 70220043, pos = { x = -178.695, y = 211.777, z = 1656.539 }, rot = { x = 359.552, y = 196.167, z = 9.034 }, level = 36, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1105006, name = "CHALLENGE_SUCCESS_105006", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "56", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_105006", trigger_count = 0 },
	{ config_id = 1105007, name = "CHALLENGE_FAIL_105007", event = EventType.EVENT_CHALLENGE_FAIL, source = "56", condition = "", action = "action_EVENT_CHALLENGE_FAIL_105007", trigger_count = 0 },
	{ config_id = 1105008, name = "GADGET_STATE_CHANGE_105008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_105008", action = "action_EVENT_GADGET_STATE_CHANGE_105008", trigger_count = 0 },
	{ config_id = 1105009, name = "ANY_GADGET_DIE_105009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "201" },
	{ config_id = 1105010, name = "GADGET_CREATE_105010", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_105010", action = "action_EVENT_GADGET_CREATE_105010", trigger_count = 0 },
	{ config_id = 1105011, name = "SELECT_OPTION_105011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_105011", action = "action_EVENT_SELECT_OPTION_105011", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1105012, name = "GROUP_LOAD_105012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_105012", trigger_count = 0 }
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
		gadgets = { 105002, 105005 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_105006", "CHALLENGE_FAIL_105007", "GADGET_STATE_CHANGE_105008", "ANY_GADGET_DIE_105009", "GADGET_CREATE_105010", "SELECT_OPTION_105011", "GROUP_LOAD_105012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 105001, 105004, 105013, 105014, 105015, 105016, 105017 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 105002, 105003 },
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
function action_EVENT_CHALLENGE_SUCCESS_105006(context, evt)
	-- 将configid为 105002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 105002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 105005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 155007105, 3) then
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
function action_EVENT_CHALLENGE_FAIL_105007(context, evt)
	-- 将configid为 105002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 105002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 155007105, 2)
	
	-- 创建id为105005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 105005 }) then
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
function condition_EVENT_GADGET_STATE_CHANGE_105008(context, evt)
	if 105002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_105008(context, evt)
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
function condition_EVENT_GADGET_CREATE_105010(context, evt)
	if 105005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_105010(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 155007105, 105005, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_105011(context, evt)
	-- 判断是gadgetid 105005 option_id 177
	if 105005 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_105011(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 105005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 105002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 105002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_105012(context, evt)
	-- 将configid为 105002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 105002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 155007105, 2)
	
	-- 创建id为105005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 105005 }) then
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