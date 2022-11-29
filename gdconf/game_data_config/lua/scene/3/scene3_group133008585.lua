-- 基础信息
local base_info = {
	group_id = 133008585
}

-- Trigger变量
local defs = {
	duration = 40,
	group_id = 133008585,
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
	{ config_id = 585002, gadget_id = 70350094, pos = { x = 1043.362, y = 408.589, z = -1031.615 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 10 },
	{ config_id = 585003, gadget_id = 70220043, pos = { x = 1071.159, y = 412.758, z = -1025.598 }, rot = { x = 353.323, y = 358.518, z = 359.568 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 585004, gadget_id = 70220043, pos = { x = 1064.036, y = 408.465, z = -1032.035 }, rot = { x = 353.323, y = 358.518, z = 359.568 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 585005, gadget_id = 70360001, pos = { x = 1043.371, y = 409.554, z = -1031.603 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 10 },
	{ config_id = 585012, gadget_id = 70220043, pos = { x = 1102.482, y = 406.773, z = -1041.561 }, rot = { x = 353.323, y = 358.518, z = 359.568 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 585013, gadget_id = 70220043, pos = { x = 1090.661, y = 417.714, z = -1030.469 }, rot = { x = 353.323, y = 358.518, z = 359.568 }, level = 30, persistent = true, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1585001, name = "GROUP_WILL_UNLOAD_585001", event = EventType.EVENT_GROUP_WILL_UNLOAD, source = "", condition = "", action = "action_EVENT_GROUP_WILL_UNLOAD_585001", trigger_count = 0 },
	{ config_id = 1585006, name = "CHALLENGE_SUCCESS_585006", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "56", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_585006" },
	{ config_id = 1585007, name = "CHALLENGE_FAIL_585007", event = EventType.EVENT_CHALLENGE_FAIL, source = "56", condition = "", action = "action_EVENT_CHALLENGE_FAIL_585007", trigger_count = 0 },
	{ config_id = 1585008, name = "GADGET_STATE_CHANGE_585008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_585008", action = "action_EVENT_GADGET_STATE_CHANGE_585008", trigger_count = 0 },
	{ config_id = 1585009, name = "ANY_GADGET_DIE_585009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "201" },
	{ config_id = 1585010, name = "GADGET_CREATE_585010", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_585010", action = "action_EVENT_GADGET_CREATE_585010", trigger_count = 0 },
	{ config_id = 1585011, name = "SELECT_OPTION_585011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_585011", action = "action_EVENT_SELECT_OPTION_585011", trigger_count = 0 }
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
		gadgets = { 585002, 585005 },
		regions = { },
		triggers = { "GROUP_WILL_UNLOAD_585001", "CHALLENGE_SUCCESS_585006", "CHALLENGE_FAIL_585007", "GADGET_STATE_CHANGE_585008", "ANY_GADGET_DIE_585009", "GADGET_CREATE_585010", "SELECT_OPTION_585011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 585003, 585004, 585012, 585013 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 585002 },
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
function action_EVENT_GROUP_WILL_UNLOAD_585001(context, evt)
	-- 将configid为 585002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 585002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133008585, 2)
	
	-- 创建id为585005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 585005 }) then
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
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133008585, 585005, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_585006(context, evt)
	-- 将configid为 585002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 585002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 585005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133008585, 3) then
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
function action_EVENT_CHALLENGE_FAIL_585007(context, evt)
	-- 将configid为 585002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 585002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133008585, 2)
	
	-- 创建id为585005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 585005 }) then
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
function condition_EVENT_GADGET_STATE_CHANGE_585008(context, evt)
	if 585002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_585008(context, evt)
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
function condition_EVENT_GADGET_CREATE_585010(context, evt)
	if 585005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_585010(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133008585, 585005, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_585011(context, evt)
	-- 判断是gadgetid 585005 option_id 177
	if 585005 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_585011(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 585005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 585002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 585002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end