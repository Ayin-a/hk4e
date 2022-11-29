-- 基础信息
local base_info = {
	group_id = 133222318
}

-- Trigger变量
local defs = {
	duration = 40,
	group_id = 133222318,
	gadget_sum = 13
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
	{ config_id = 318001, gadget_id = 70220005, pos = { x = -4733.008, y = 442.176, z = -4123.134 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 14 },
	{ config_id = 318002, gadget_id = 70350084, pos = { x = -4712.122, y = 444.434, z = -4127.222 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 14 },
	{ config_id = 318003, gadget_id = 70211111, pos = { x = -4712.816, y = 444.512, z = -4129.396 }, rot = { x = 356.306, y = 67.848, z = 4.254 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, autopick = true, explore = { name = "chest", exp = 1 }, area_id = 14 },
	{ config_id = 318004, gadget_id = 70220005, pos = { x = -4735.087, y = 442.170, z = -4118.029 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 14 },
	{ config_id = 318005, gadget_id = 70360001, pos = { x = -4712.113, y = 444.434, z = -4127.210 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 14 },
	{ config_id = 318013, gadget_id = 70330100, pos = { x = -4739.426, y = 441.850, z = -4123.446 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 318014, gadget_id = 70330100, pos = { x = -4734.857, y = 441.850, z = -4118.481 }, rot = { x = 0.000, y = 314.739, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 318015, gadget_id = 70330100, pos = { x = -4732.891, y = 441.850, z = -4123.520 }, rot = { x = 0.000, y = 314.739, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 318016, gadget_id = 70330100, pos = { x = -4729.261, y = 436.185, z = -4106.443 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 318017, gadget_id = 70330100, pos = { x = -4724.692, y = 436.185, z = -4101.479 }, rot = { x = 0.000, y = 314.739, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 318018, gadget_id = 70330100, pos = { x = -4722.726, y = 436.185, z = -4106.517 }, rot = { x = 0.000, y = 314.739, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 318019, gadget_id = 70330100, pos = { x = -4710.007, y = 433.134, z = -4098.516 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 318020, gadget_id = 70330100, pos = { x = -4705.438, y = 433.134, z = -4093.550 }, rot = { x = 0.000, y = 314.739, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 318021, gadget_id = 70330100, pos = { x = -4703.472, y = 433.134, z = -4098.589 }, rot = { x = 0.000, y = 314.739, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 318022, gadget_id = 70220005, pos = { x = -4739.407, y = 442.171, z = -4122.926 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 318026, gadget_id = 70220005, pos = { x = -4728.433, y = 436.503, z = -4107.881 }, rot = { x = 0.000, y = 106.129, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 318028, gadget_id = 70220005, pos = { x = -4723.200, y = 436.521, z = -4102.477 }, rot = { x = 0.000, y = 106.129, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 318029, gadget_id = 70220005, pos = { x = -4723.126, y = 436.511, z = -4106.255 }, rot = { x = 0.000, y = 106.129, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 318030, gadget_id = 70220005, pos = { x = -4726.886, y = 436.412, z = -4106.206 }, rot = { x = 0.000, y = 106.129, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 318031, gadget_id = 70220005, pos = { x = -4725.776, y = 436.460, z = -4103.421 }, rot = { x = 0.000, y = 106.129, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 318032, gadget_id = 70220005, pos = { x = -4710.328, y = 433.488, z = -4098.467 }, rot = { x = 0.000, y = 70.193, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 318034, gadget_id = 70220005, pos = { x = -4708.592, y = 433.386, z = -4097.233 }, rot = { x = 0.000, y = 70.193, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 318035, gadget_id = 70220005, pos = { x = -4705.494, y = 433.315, z = -4097.098 }, rot = { x = 0.000, y = 70.193, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 318037, gadget_id = 70220005, pos = { x = -4703.646, y = 433.495, z = -4098.856 }, rot = { x = 0.000, y = 70.193, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 318039, gadget_id = 70220005, pos = { x = -4705.876, y = 433.473, z = -4093.592 }, rot = { x = 0.000, y = 70.193, z = 0.000 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1318006, name = "CHALLENGE_SUCCESS_318006", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "56", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_318006", trigger_count = 0 },
	{ config_id = 1318007, name = "CHALLENGE_FAIL_318007", event = EventType.EVENT_CHALLENGE_FAIL, source = "56", condition = "", action = "action_EVENT_CHALLENGE_FAIL_318007", trigger_count = 0 },
	{ config_id = 1318008, name = "GADGET_STATE_CHANGE_318008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_318008", action = "action_EVENT_GADGET_STATE_CHANGE_318008", trigger_count = 0 },
	{ config_id = 1318009, name = "ANY_GADGET_DIE_318009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "201" },
	{ config_id = 1318010, name = "GADGET_CREATE_318010", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_318010", action = "action_EVENT_GADGET_CREATE_318010", trigger_count = 0 },
	{ config_id = 1318011, name = "SELECT_OPTION_318011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_318011", action = "action_EVENT_SELECT_OPTION_318011", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1318012, name = "GROUP_LOAD_318012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_318012", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "gadget_start", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 318023, gadget_id = 70220005, pos = { x = -4734.588, y = 442.060, z = -4117.433 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 318024, gadget_id = 70220005, pos = { x = -4731.806, y = 442.071, z = -4124.081 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 318025, gadget_id = 70220005, pos = { x = -4740.711, y = 442.053, z = -4123.254 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 318027, gadget_id = 70220005, pos = { x = -4721.631, y = 436.459, z = -4107.629 }, rot = { x = 0.000, y = 106.129, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 318033, gadget_id = 70220005, pos = { x = -4710.076, y = 433.368, z = -4098.763 }, rot = { x = 0.000, y = 70.193, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 318036, gadget_id = 70220005, pos = { x = -4703.691, y = 433.360, z = -4098.840 }, rot = { x = 0.000, y = 70.193, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 318038, gadget_id = 70220005, pos = { x = -4707.381, y = 433.248, z = -4093.559 }, rot = { x = 0.000, y = 70.193, z = 0.000 }, level = 30, area_id = 14 }
	}
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 4,
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
		gadgets = { 318002, 318005 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_318006", "CHALLENGE_FAIL_318007", "GADGET_STATE_CHANGE_318008", "ANY_GADGET_DIE_318009", "GADGET_CREATE_318010", "SELECT_OPTION_318011", "GROUP_LOAD_318012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 318001, 318004, 318013, 318014, 318015, 318016, 318017, 318018, 318019, 318020, 318021, 318022, 318026, 318028, 318029, 318030, 318031, 318032, 318034, 318035, 318037, 318039 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 318002, 318003 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { },
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
function action_EVENT_CHALLENGE_SUCCESS_318006(context, evt)
	-- 将configid为 318002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 318002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 318005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133222318, 3) then
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
function action_EVENT_CHALLENGE_FAIL_318007(context, evt)
	-- 将configid为 318002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 318002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133222318, 2)
	
	-- 创建id为318005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 318005 }) then
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
function condition_EVENT_GADGET_STATE_CHANGE_318008(context, evt)
	if 318002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_318008(context, evt)
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
function condition_EVENT_GADGET_CREATE_318010(context, evt)
	if 318005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_318010(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133222318, 318005, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_318011(context, evt)
	-- 判断是gadgetid 318005 option_id 177
	if 318005 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_318011(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 318005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 318002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 318002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_318012(context, evt)
	-- 将configid为 318002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 318002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133222318, 2)
	
	-- 创建id为318005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 318005 }) then
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