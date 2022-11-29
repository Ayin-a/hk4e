-- 基础信息
local base_info = {
	group_id = 133003595
}

-- Trigger变量
local defs = {
	duration = 30,
	group_id = 133003595,
	gadget_sum = 4
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
	{ config_id = 595001, gadget_id = 70380002, pos = { x = 2654.676, y = 236.975, z = -1132.972 }, rot = { x = 0.000, y = 262.227, z = 0.000 }, level = 30, route_id = 3003193, area_id = 1 },
	{ config_id = 595002, gadget_id = 70350084, pos = { x = 2655.644, y = 239.074, z = -1123.342 }, rot = { x = 354.626, y = 337.835, z = 354.489 }, level = 30, persistent = true, area_id = 1 },
	{ config_id = 595003, gadget_id = 70211111, pos = { x = 2667.080, y = 236.654, z = -1130.552 }, rot = { x = 355.093, y = 346.059, z = 358.330 }, level = 26, drop_tag = "解谜中级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 },
	{ config_id = 595004, gadget_id = 70380002, pos = { x = 2657.676, y = 236.975, z = -1132.972 }, rot = { x = 0.000, y = 262.227, z = 0.000 }, level = 30, route_id = 3003193, area_id = 1 },
	{ config_id = 595005, gadget_id = 70360001, pos = { x = 2655.730, y = 240.048, z = -1123.421 }, rot = { x = 357.502, y = 337.738, z = 1.630 }, level = 30, persistent = true, area_id = 1 },
	{ config_id = 595012, gadget_id = 70380002, pos = { x = 2660.676, y = 236.975, z = -1132.972 }, rot = { x = 0.000, y = 262.227, z = 0.000 }, level = 30, route_id = 3003193, area_id = 1 },
	{ config_id = 595013, gadget_id = 70380002, pos = { x = 2663.676, y = 236.975, z = -1132.972 }, rot = { x = 0.000, y = 262.227, z = 0.000 }, level = 30, route_id = 3003193, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1595006, name = "CHALLENGE_SUCCESS_595006", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "56", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_595006" },
	{ config_id = 1595007, name = "CHALLENGE_FAIL_595007", event = EventType.EVENT_CHALLENGE_FAIL, source = "56", condition = "", action = "action_EVENT_CHALLENGE_FAIL_595007", trigger_count = 0 },
	{ config_id = 1595008, name = "GADGET_STATE_CHANGE_595008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_595008", action = "action_EVENT_GADGET_STATE_CHANGE_595008", trigger_count = 0 },
	{ config_id = 1595009, name = "ANY_GADGET_DIE_595009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "201" },
	{ config_id = 1595010, name = "GADGET_CREATE_595010", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_595010", action = "action_EVENT_GADGET_CREATE_595010", trigger_count = 0 },
	{ config_id = 1595011, name = "SELECT_OPTION_595011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_595011", action = "action_EVENT_SELECT_OPTION_595011", trigger_count = 0 }
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
		gadgets = { 595002, 595005 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_595006", "CHALLENGE_FAIL_595007", "GADGET_STATE_CHANGE_595008", "ANY_GADGET_DIE_595009", "GADGET_CREATE_595010", "SELECT_OPTION_595011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 595001, 595004, 595012, 595013 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 595002, 595003 },
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
function action_EVENT_CHALLENGE_SUCCESS_595006(context, evt)
	-- 将configid为 595002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 595002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 595005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133003595, 3) then
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
function action_EVENT_CHALLENGE_FAIL_595007(context, evt)
	-- 将configid为 595002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 595002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133003595, 2)
	
	-- 创建id为595005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 595005 }) then
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
function condition_EVENT_GADGET_STATE_CHANGE_595008(context, evt)
	if 595002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_595008(context, evt)
	-- 201号挑战,duration内破坏炸药桶
	if 0 ~= ScriptLib.ActiveChallenge(context, 56, 132, defs.duration, 2, 201, defs.gadget_sum) then
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
function condition_EVENT_GADGET_CREATE_595010(context, evt)
	if 595005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_595010(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133003595, 595005, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_595011(context, evt)
	-- 判断是gadgetid 595005 option_id 177
	if 595005 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_595011(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 595005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 595002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 595002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end