-- 基础信息
local base_info = {
	group_id = 133307274
}

-- Trigger变量
local defs = {
	duration = 90,
	group_id = 133307274,
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
	{ config_id = 274001, gadget_id = 70220107, pos = { x = -1235.020, y = -26.002, z = 5436.382 }, rot = { x = 1.299, y = 339.237, z = 358.303 }, level = 2, persistent = true, area_id = 32 },
	{ config_id = 274002, gadget_id = 70330344, pos = { x = -1234.557, y = -44.391, z = 5452.578 }, rot = { x = 359.182, y = 0.024, z = 356.586 }, level = 2, persistent = true, area_id = 32 },
	{ config_id = 274003, gadget_id = 70211101, pos = { x = -1232.134, y = -25.640, z = 5461.164 }, rot = { x = 0.000, y = 156.889, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	{ config_id = 274004, gadget_id = 70220107, pos = { x = -1213.678, y = -26.516, z = 5442.886 }, rot = { x = 2.653, y = 0.016, z = 0.688 }, level = 2, persistent = true, area_id = 32 },
	{ config_id = 274005, gadget_id = 70360001, pos = { x = -1234.456, y = -43.372, z = 5452.556 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 32 },
	{ config_id = 274013, gadget_id = 70220107, pos = { x = -1262.271, y = -18.340, z = 5432.625 }, rot = { x = 357.631, y = 359.951, z = 357.539 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 274014, gadget_id = 70220107, pos = { x = -1267.085, y = -6.761, z = 5441.599 }, rot = { x = 332.059, y = 318.257, z = 336.516 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 274015, gadget_id = 70330434, pos = { x = -1234.516, y = -43.860, z = 5452.597 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 274016, gadget_id = 70220107, pos = { x = -1250.571, y = -10.876, z = 5430.273 }, rot = { x = 345.933, y = 123.271, z = 46.496 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 274017, gadget_id = 70220107, pos = { x = -1247.792, y = -0.929, z = 5455.813 }, rot = { x = 357.631, y = 359.951, z = 357.539 }, level = 32, persistent = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1274006, name = "CHALLENGE_SUCCESS_274006", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "56", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_274006", trigger_count = 0 },
	{ config_id = 1274007, name = "CHALLENGE_FAIL_274007", event = EventType.EVENT_CHALLENGE_FAIL, source = "56", condition = "", action = "action_EVENT_CHALLENGE_FAIL_274007", trigger_count = 0 },
	{ config_id = 1274008, name = "GADGET_STATE_CHANGE_274008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_274008", action = "action_EVENT_GADGET_STATE_CHANGE_274008", trigger_count = 0 },
	{ config_id = 1274009, name = "ANY_GADGET_DIE_274009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "201" },
	{ config_id = 1274010, name = "GADGET_CREATE_274010", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_274010", action = "action_EVENT_GADGET_CREATE_274010", trigger_count = 0 },
	{ config_id = 1274011, name = "SELECT_OPTION_274011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_274011", action = "action_EVENT_SELECT_OPTION_274011", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1274012, name = "GROUP_LOAD_274012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_274012", trigger_count = 0 }
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
		-- description = ,
		monsters = { },
		gadgets = { 274002, 274005 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_274006", "CHALLENGE_FAIL_274007", "GADGET_STATE_CHANGE_274008", "ANY_GADGET_DIE_274009", "GADGET_CREATE_274010", "SELECT_OPTION_274011", "GROUP_LOAD_274012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 274001, 274004, 274013, 274014, 274015, 274016, 274017 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 274002, 274003, 274015 },
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
function action_EVENT_CHALLENGE_SUCCESS_274006(context, evt)
	-- 将configid为 274002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 274002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 274005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133307274, 3) then
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
function action_EVENT_CHALLENGE_FAIL_274007(context, evt)
	-- 将configid为 274002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 274002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133307274, 2)
	
	-- 创建id为274005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 274005 }) then
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
function condition_EVENT_GADGET_STATE_CHANGE_274008(context, evt)
	if 274002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_274008(context, evt)
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
function condition_EVENT_GADGET_CREATE_274010(context, evt)
	if 274005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_274010(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133307274, 274005, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_274011(context, evt)
	-- 判断是gadgetid 274005 option_id 177
	if 274005 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_274011(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 274005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 274002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 274002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_274012(context, evt)
	-- 将configid为 274002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 274002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133307274, 2)
	
	-- 创建id为274005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 274005 }) then
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