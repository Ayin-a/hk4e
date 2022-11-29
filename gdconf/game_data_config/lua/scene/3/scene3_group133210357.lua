-- 基础信息
local base_info = {
	group_id = 133210357
}

-- Trigger变量
local defs = {
	duration = 60,
	group_id = 133210357,
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
	{ config_id = 357001, gadget_id = 70220072, pos = { x = -4045.263, y = 199.999, z = -381.440 }, rot = { x = 0.000, y = 190.530, z = 0.000 }, level = 1, persistent = true, area_id = 17 },
	{ config_id = 357002, gadget_id = 70350250, pos = { x = -4043.059, y = 199.999, z = -369.643 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 17 },
	{ config_id = 357003, gadget_id = 70210105, pos = { x = -4045.503, y = 199.999, z = -372.630 }, rot = { x = 0.000, y = 58.391, z = 0.000 }, level = 26, drop_tag = "水上搜刮点稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 17 },
	{ config_id = 357004, gadget_id = 70220072, pos = { x = -4042.939, y = 199.999, z = -348.657 }, rot = { x = 0.000, y = 208.617, z = 0.000 }, level = 1, persistent = true, area_id = 17 },
	{ config_id = 357005, gadget_id = 70360001, pos = { x = -4043.050, y = 199.999, z = -369.631 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 17 },
	{ config_id = 357006, gadget_id = 70220072, pos = { x = -4066.736, y = 199.999, z = -356.440 }, rot = { x = 0.000, y = 57.767, z = 0.000 }, level = 1, persistent = true, area_id = 17 },
	{ config_id = 357007, gadget_id = 70220072, pos = { x = -4056.656, y = 199.999, z = -325.300 }, rot = { x = 0.000, y = 158.903, z = 0.000 }, level = 1, persistent = true, area_id = 17 },
	{ config_id = 357008, gadget_id = 70220072, pos = { x = -4082.691, y = 199.999, z = -379.949 }, rot = { x = 0.000, y = 123.102, z = 0.000 }, level = 1, persistent = true, area_id = 17 },
	{ config_id = 357009, gadget_id = 70220072, pos = { x = -4028.311, y = 199.999, z = -364.131 }, rot = { x = 0.000, y = 354.619, z = 0.000 }, level = 1, persistent = true, area_id = 17 },
	{ config_id = 357016, gadget_id = 70290180, pos = { x = -4037.229, y = 199.999, z = -354.533 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 357017, gadget_id = 70290180, pos = { x = -4056.355, y = 199.999, z = -373.095 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 357018, gadget_id = 70290180, pos = { x = -4094.307, y = 199.999, z = -360.045 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 357019, gadget_id = 70290180, pos = { x = -4057.241, y = 199.999, z = -335.297 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1357010, name = "CHALLENGE_SUCCESS_357010", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "56", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_357010" },
	{ config_id = 1357011, name = "CHALLENGE_FAIL_357011", event = EventType.EVENT_CHALLENGE_FAIL, source = "56", condition = "", action = "action_EVENT_CHALLENGE_FAIL_357011", trigger_count = 0 },
	{ config_id = 1357012, name = "GADGET_STATE_CHANGE_357012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_357012", action = "action_EVENT_GADGET_STATE_CHANGE_357012", trigger_count = 0 },
	{ config_id = 1357013, name = "ANY_GADGET_DIE_357013", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "201" },
	{ config_id = 1357014, name = "GADGET_CREATE_357014", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_357014", action = "action_EVENT_GADGET_CREATE_357014", trigger_count = 0 },
	{ config_id = 1357015, name = "SELECT_OPTION_357015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_357015", action = "action_EVENT_SELECT_OPTION_357015", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1357020, name = "GROUP_LOAD_357020", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_357020", trigger_count = 0 }
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
		gadgets = { 357002, 357005 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_357010", "CHALLENGE_FAIL_357011", "GADGET_STATE_CHANGE_357012", "ANY_GADGET_DIE_357013", "GADGET_CREATE_357014", "SELECT_OPTION_357015", "GROUP_LOAD_357020" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 357001, 357004, 357006, 357007, 357008, 357009, 357016, 357017, 357018, 357019 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 357002, 357003 },
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
function action_EVENT_CHALLENGE_SUCCESS_357010(context, evt)
	-- 将configid为 357002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 357002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 357005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133210357, 3) then
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
function action_EVENT_CHALLENGE_FAIL_357011(context, evt)
	-- 将configid为 357002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 357002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133210357, 2)
	
	-- 创建id为357005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 357005 }) then
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
function condition_EVENT_GADGET_STATE_CHANGE_357012(context, evt)
	if 357002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_357012(context, evt)
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
function condition_EVENT_GADGET_CREATE_357014(context, evt)
	if 357005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_357014(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210357, 357005, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_357015(context, evt)
	-- 判断是gadgetid 357005 option_id 177
	if 357005 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_357015(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 357005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 357002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 357002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_357020(context, evt)
	-- 将configid为 357002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 357002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133210357, 2)
	
	-- 创建id为357005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 357005 }) then
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