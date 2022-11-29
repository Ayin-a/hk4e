-- 基础信息
local base_info = {
	group_id = 133107125
}

-- Trigger变量
local defs = {
	duration = 30,
	group_id = 133107125,
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
	{ config_id = 125001, gadget_id = 70360001, pos = { x = -227.351, y = 409.543, z = 494.192 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 7 },
	{ config_id = 125002, gadget_id = 70350084, pos = { x = -227.399, y = 408.589, z = 494.012 }, rot = { x = 3.134, y = 359.979, z = 359.223 }, level = 18, persistent = true, area_id = 7 },
	{ config_id = 125003, gadget_id = 70211111, pos = { x = -219.765, y = 408.218, z = 482.296 }, rot = { x = 6.686, y = 346.032, z = 23.327 }, level = 16, drop_tag = "解谜中级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 },
	{ config_id = 125009, gadget_id = 70220005, pos = { x = -205.041, y = 414.766, z = 488.904 }, rot = { x = 25.884, y = 0.967, z = 4.205 }, level = 18, area_id = 7 },
	{ config_id = 125010, gadget_id = 70220005, pos = { x = -211.248, y = 414.734, z = 512.310 }, rot = { x = 357.857, y = 359.742, z = 13.726 }, level = 18, area_id = 7 },
	{ config_id = 125011, gadget_id = 70220005, pos = { x = -217.932, y = 408.737, z = 481.244 }, rot = { x = 355.484, y = 359.574, z = 10.771 }, level = 18, area_id = 7 },
	{ config_id = 125012, gadget_id = 70220005, pos = { x = -242.604, y = 409.580, z = 499.981 }, rot = { x = 355.743, y = 359.560, z = 11.788 }, level = 18, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1125004, name = "GADGET_CREATE_125004", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_125004", action = "action_EVENT_GADGET_CREATE_125004", trigger_count = 0 },
	{ config_id = 1125005, name = "CHALLENGE_SUCCESS_125005", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "56", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_125005" },
	{ config_id = 1125006, name = "CHALLENGE_FAIL_125006", event = EventType.EVENT_CHALLENGE_FAIL, source = "56", condition = "", action = "action_EVENT_CHALLENGE_FAIL_125006", trigger_count = 0 },
	{ config_id = 1125007, name = "GADGET_STATE_CHANGE_125007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_125007", action = "action_EVENT_GADGET_STATE_CHANGE_125007", trigger_count = 0 },
	{ config_id = 1125008, name = "ANY_GADGET_DIE_125008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "201" },
	{ config_id = 1125013, name = "SELECT_OPTION_125013", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_125013", action = "action_EVENT_SELECT_OPTION_125013", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "gadget_sum", value = 4, no_refresh = true },
	{ config_id = 2, name = "gadget_start", value = 0, no_refresh = true }
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
		gadgets = { 125001, 125002 },
		regions = { },
		triggers = { "GADGET_CREATE_125004", "CHALLENGE_SUCCESS_125005", "CHALLENGE_FAIL_125006", "GADGET_STATE_CHANGE_125007", "ANY_GADGET_DIE_125008", "SELECT_OPTION_125013" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 125009, 125010, 125011, 125012 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 125002, 125003 },
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

-- 触发条件
function condition_EVENT_GADGET_CREATE_125004(context, evt)
	if 125001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_125004(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133107125, 125001, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_125005(context, evt)
	-- 将configid为 125002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 125002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 125001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133107125, 3) then
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
function action_EVENT_CHALLENGE_FAIL_125006(context, evt)
	-- 将configid为 125002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 125002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133107125, 2)
	
	-- 创建id为125001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 125001 }) then
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
function condition_EVENT_GADGET_STATE_CHANGE_125007(context, evt)
	if 125002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_125007(context, evt)
	-- 202号挑战,duration内开启宝箱
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
function condition_EVENT_SELECT_OPTION_125013(context, evt)
	-- 判断是gadgetid 125001 option_id 177
	if 125001 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_125013(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 125001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 125002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 125002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end