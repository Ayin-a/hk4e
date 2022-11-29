-- 基础信息
local base_info = {
	group_id = 133309143
}

-- Trigger变量
local defs = {
	duration = 40,
	group_id = 133309143,
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
	{ config_id = 143001, gadget_id = 70220107, pos = { x = -2142.264, y = -50.357, z = 5855.204 }, rot = { x = 9.579, y = 0.165, z = 350.251 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 143002, gadget_id = 70330344, pos = { x = -2171.317, y = -35.914, z = 5860.424 }, rot = { x = 0.000, y = 104.994, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 143003, gadget_id = 70211101, pos = { x = -2174.566, y = -34.603, z = 5862.749 }, rot = { x = 24.725, y = 103.810, z = 23.701 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 },
	{ config_id = 143004, gadget_id = 70220107, pos = { x = -2165.381, y = -32.134, z = 5841.969 }, rot = { x = 9.734, y = 359.695, z = 356.424 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 143005, gadget_id = 70360001, pos = { x = -2171.317, y = -35.914, z = 5860.424 }, rot = { x = 0.000, y = 104.994, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 143013, gadget_id = 70220107, pos = { x = -2141.436, y = -50.767, z = 5861.320 }, rot = { x = 9.159, y = 358.316, z = 350.682 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 143014, gadget_id = 70220107, pos = { x = -2160.594, y = -32.676, z = 5877.940 }, rot = { x = 359.029, y = 5.003, z = 352.705 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 143015, gadget_id = 70220107, pos = { x = -2141.860, y = -50.916, z = 5858.105 }, rot = { x = 9.542, y = 359.945, z = 350.214 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 143016, gadget_id = 70220107, pos = { x = -2182.382, y = -26.057, z = 5857.656 }, rot = { x = 359.208, y = 6.128, z = 343.877 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 143017, gadget_id = 70220103, pos = { x = -2160.720, y = -30.053, z = 5877.539 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 143018, gadget_id = 70220103, pos = { x = -2159.566, y = -18.961, z = 5849.108 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1143006, name = "CHALLENGE_SUCCESS_143006", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "56", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_143006", trigger_count = 0 },
	{ config_id = 1143007, name = "CHALLENGE_FAIL_143007", event = EventType.EVENT_CHALLENGE_FAIL, source = "56", condition = "", action = "action_EVENT_CHALLENGE_FAIL_143007", trigger_count = 0 },
	{ config_id = 1143008, name = "GADGET_STATE_CHANGE_143008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_143008", action = "action_EVENT_GADGET_STATE_CHANGE_143008", trigger_count = 0 },
	{ config_id = 1143009, name = "ANY_GADGET_DIE_143009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "201" },
	{ config_id = 1143010, name = "GADGET_CREATE_143010", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_143010", action = "action_EVENT_GADGET_CREATE_143010", trigger_count = 0 },
	{ config_id = 1143011, name = "SELECT_OPTION_143011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_143011", action = "action_EVENT_SELECT_OPTION_143011", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1143012, name = "GROUP_LOAD_143012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_143012", trigger_count = 0 }
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
		gadgets = { 143002, 143005 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_143006", "CHALLENGE_FAIL_143007", "GADGET_STATE_CHANGE_143008", "ANY_GADGET_DIE_143009", "GADGET_CREATE_143010", "SELECT_OPTION_143011", "GROUP_LOAD_143012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 143001, 143004, 143013, 143014, 143015, 143016, 143017, 143018 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 143002, 143003 },
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
function action_EVENT_CHALLENGE_SUCCESS_143006(context, evt)
	-- 将configid为 143002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 143002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 143005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133309143, 3) then
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
function action_EVENT_CHALLENGE_FAIL_143007(context, evt)
	-- 将configid为 143002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 143002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133309143, 2)
	
	-- 创建id为143005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 143005 }) then
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
function condition_EVENT_GADGET_STATE_CHANGE_143008(context, evt)
	if 143002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_143008(context, evt)
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
function condition_EVENT_GADGET_CREATE_143010(context, evt)
	if 143005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_143010(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133309143, 143005, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_143011(context, evt)
	-- 判断是gadgetid 143005 option_id 177
	if 143005 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_143011(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 143005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 143002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 143002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_143012(context, evt)
	-- 将configid为 143002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 143002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133309143, 2)
	
	-- 创建id为143005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 143005 }) then
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