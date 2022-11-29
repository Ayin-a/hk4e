-- 基础信息
local base_info = {
	group_id = 133008503
}

-- Trigger变量
local defs = {
	duration = 50,
	group_id = 133008503,
	gadget_sum = 5
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
	{ config_id = 503001, gadget_id = 70220043, pos = { x = 659.982, y = 199.982, z = -1078.376 }, rot = { x = 5.373, y = 314.983, z = 0.484 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 503002, gadget_id = 70350094, pos = { x = 657.378, y = 202.158, z = -1060.742 }, rot = { x = 2.851, y = 0.000, z = 353.090 }, level = 2, persistent = true, area_id = 10 },
	{ config_id = 503003, gadget_id = 70220043, pos = { x = 621.988, y = 202.283, z = -1087.630 }, rot = { x = 352.120, y = 257.570, z = 348.755 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 503004, gadget_id = 70220043, pos = { x = 656.041, y = 199.959, z = -1093.888 }, rot = { x = 0.000, y = 215.159, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 503005, gadget_id = 70360001, pos = { x = 657.525, y = 203.302, z = -1060.776 }, rot = { x = 358.026, y = 0.584, z = 353.094 }, level = 2, persistent = true, area_id = 10 },
	{ config_id = 503012, gadget_id = 70220043, pos = { x = 623.903, y = 200.694, z = -1094.343 }, rot = { x = 0.484, y = 256.898, z = 352.226 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 503013, gadget_id = 70220043, pos = { x = 639.733, y = 200.001, z = -1101.088 }, rot = { x = 359.592, y = -0.002, z = 0.429 }, level = 30, persistent = true, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1503006, name = "CHALLENGE_SUCCESS_503006", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "56", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_503006" },
	{ config_id = 1503007, name = "CHALLENGE_FAIL_503007", event = EventType.EVENT_CHALLENGE_FAIL, source = "56", condition = "", action = "action_EVENT_CHALLENGE_FAIL_503007", trigger_count = 0 },
	{ config_id = 1503008, name = "GADGET_STATE_CHANGE_503008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_503008", action = "action_EVENT_GADGET_STATE_CHANGE_503008", trigger_count = 0 },
	{ config_id = 1503009, name = "ANY_GADGET_DIE_503009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "201" },
	{ config_id = 1503010, name = "GADGET_CREATE_503010", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_503010", action = "action_EVENT_GADGET_CREATE_503010", trigger_count = 0 },
	{ config_id = 1503011, name = "SELECT_OPTION_503011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_503011", action = "action_EVENT_SELECT_OPTION_503011", trigger_count = 0 }
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
		gadgets = { 503002, 503005 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_503006", "CHALLENGE_FAIL_503007", "GADGET_STATE_CHANGE_503008", "ANY_GADGET_DIE_503009", "GADGET_CREATE_503010", "SELECT_OPTION_503011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 503001, 503003, 503004, 503012, 503013 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 503002 },
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
function action_EVENT_CHALLENGE_SUCCESS_503006(context, evt)
	-- 将configid为 503002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 503002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 503005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133008503, 3) then
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
function action_EVENT_CHALLENGE_FAIL_503007(context, evt)
	-- 将configid为 503002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 503002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133008503, 2)
	
	-- 创建id为503005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 503005 }) then
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
function condition_EVENT_GADGET_STATE_CHANGE_503008(context, evt)
	if 503002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_503008(context, evt)
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
function condition_EVENT_GADGET_CREATE_503010(context, evt)
	if 503005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_503010(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133008503, 503005, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_503011(context, evt)
	-- 判断是gadgetid 503005 option_id 177
	if 503005 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_503011(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 503005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 503002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 503002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end