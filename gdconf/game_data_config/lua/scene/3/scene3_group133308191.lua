-- 基础信息
local base_info = {
	group_id = 133308191
}

-- Trigger变量
local defs = {
	duration = 40,
	group_id = 133308191,
	gadget_sum = 8
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
	{ config_id = 191001, gadget_id = 70220005, pos = { x = -1499.387, y = 223.862, z = 4115.877 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 26 },
	{ config_id = 191002, gadget_id = 70330344, pos = { x = -1564.080, y = 246.507, z = 4102.929 }, rot = { x = 0.000, y = 341.536, z = 0.000 }, level = 2, persistent = true, area_id = 26 },
	{ config_id = 191003, gadget_id = 70211101, pos = { x = -1561.357, y = 245.825, z = 4104.639 }, rot = { x = 350.063, y = 262.269, z = 355.158 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 26 },
	{ config_id = 191004, gadget_id = 70220005, pos = { x = -1533.319, y = 229.258, z = 4141.583 }, rot = { x = 2.544, y = 359.975, z = 358.885 }, level = 2, persistent = true, area_id = 26 },
	{ config_id = 191005, gadget_id = 70360001, pos = { x = -1564.073, y = 246.735, z = 4102.947 }, rot = { x = 7.854, y = 359.175, z = 348.027 }, level = 2, persistent = true, area_id = 26 },
	{ config_id = 191013, gadget_id = 70220005, pos = { x = -1534.529, y = 229.529, z = 4142.149 }, rot = { x = 2.544, y = 5.152, z = 356.128 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 26 },
	{ config_id = 191014, gadget_id = 70220005, pos = { x = -1527.741, y = 224.084, z = 4123.793 }, rot = { x = 12.633, y = 26.687, z = 4.183 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 26 },
	{ config_id = 191015, gadget_id = 70220005, pos = { x = -1526.601, y = 224.720, z = 4126.601 }, rot = { x = 4.972, y = 357.710, z = 353.058 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 26 },
	{ config_id = 191016, gadget_id = 70220005, pos = { x = -1524.682, y = 223.162, z = 4124.919 }, rot = { x = 13.460, y = 12.692, z = 357.683 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 26 },
	{ config_id = 191017, gadget_id = 70220005, pos = { x = -1495.376, y = 223.061, z = 4118.428 }, rot = { x = 2.169, y = 359.875, z = 353.410 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 191018, gadget_id = 70220005, pos = { x = -1496.405, y = 223.465, z = 4115.205 }, rot = { x = 5.985, y = 359.344, z = 347.496 }, level = 32, persistent = true, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1191006, name = "CHALLENGE_SUCCESS_191006", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "56", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_191006", trigger_count = 0 },
	{ config_id = 1191007, name = "CHALLENGE_FAIL_191007", event = EventType.EVENT_CHALLENGE_FAIL, source = "56", condition = "", action = "action_EVENT_CHALLENGE_FAIL_191007", trigger_count = 0 },
	{ config_id = 1191008, name = "GADGET_STATE_CHANGE_191008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_191008", action = "action_EVENT_GADGET_STATE_CHANGE_191008", trigger_count = 0 },
	{ config_id = 1191009, name = "ANY_GADGET_DIE_191009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "201" },
	{ config_id = 1191010, name = "GADGET_CREATE_191010", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_191010", action = "action_EVENT_GADGET_CREATE_191010", trigger_count = 0 },
	{ config_id = 1191011, name = "SELECT_OPTION_191011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_191011", action = "action_EVENT_SELECT_OPTION_191011", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1191012, name = "GROUP_LOAD_191012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_191012", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "gadget_start", value = 0, no_refresh = true }
}

-- 视野组
sight_groups = {
	{ 191001, 191004, 191017, 191018, 191013, 191014, 191015, 191016 }
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
		gadgets = { 191002, 191005 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_191006", "CHALLENGE_FAIL_191007", "GADGET_STATE_CHANGE_191008", "ANY_GADGET_DIE_191009", "GADGET_CREATE_191010", "SELECT_OPTION_191011", "GROUP_LOAD_191012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 191001, 191004, 191013, 191014, 191015, 191016, 191017, 191018 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 191002, 191003 },
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
function action_EVENT_CHALLENGE_SUCCESS_191006(context, evt)
	-- 将configid为 191002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 191002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 191005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133308191, 3) then
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
function action_EVENT_CHALLENGE_FAIL_191007(context, evt)
	-- 将configid为 191002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 191002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133308191, 2)
	
	-- 创建id为191005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 191005 }) then
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
function condition_EVENT_GADGET_STATE_CHANGE_191008(context, evt)
	if 191002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_191008(context, evt)
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
function condition_EVENT_GADGET_CREATE_191010(context, evt)
	if 191005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_191010(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133308191, 191005, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_191011(context, evt)
	-- 判断是gadgetid 191005 option_id 177
	if 191005 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_191011(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 191005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 191002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 191002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_191012(context, evt)
	-- 将configid为 191002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 191002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133308191, 2)
	
	-- 创建id为191005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 191005 }) then
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