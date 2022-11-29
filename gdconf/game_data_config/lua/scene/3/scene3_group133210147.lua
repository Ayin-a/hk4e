-- 基础信息
local base_info = {
	group_id = 133210147
}

-- Trigger变量
local defs = {
	duration = 30,
	group_id = 133210147,
	gadget_sum = 3
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
	{ config_id = 147001, gadget_id = 70220005, pos = { x = -4009.359, y = 193.169, z = -774.128 }, rot = { x = 353.718, y = 214.810, z = 12.208 }, level = 2, persistent = true, area_id = 17 },
	{ config_id = 147002, gadget_id = 70350084, pos = { x = -3986.682, y = 170.366, z = -764.773 }, rot = { x = 0.000, y = 359.981, z = 0.000 }, level = 2, persistent = true, area_id = 17 },
	{ config_id = 147003, gadget_id = 70211101, pos = { x = -3986.458, y = 170.331, z = -761.591 }, rot = { x = 357.391, y = 179.751, z = 359.348 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 17 },
	{ config_id = 147004, gadget_id = 70220005, pos = { x = -4000.695, y = 169.292, z = -767.784 }, rot = { x = 0.000, y = 200.746, z = 0.000 }, level = 2, persistent = true, area_id = 17 },
	{ config_id = 147005, gadget_id = 70360001, pos = { x = -3986.673, y = 171.408, z = -764.762 }, rot = { x = 7.673, y = 0.215, z = 3.199 }, level = 2, persistent = true, area_id = 17 },
	{ config_id = 147012, gadget_id = 70220005, pos = { x = -4006.003, y = 192.128, z = -759.383 }, rot = { x = 5.461, y = 115.933, z = 351.670 }, level = 30, persistent = true, area_id = 17 },
	{ config_id = 147015, gadget_id = 70900380, pos = { x = -3989.900, y = 177.052, z = -768.195 }, rot = { x = 0.000, y = 259.963, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 147016, gadget_id = 70900380, pos = { x = -3993.725, y = 189.403, z = -768.116 }, rot = { x = 0.000, y = 215.283, z = 0.000 }, level = 30, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1147006, name = "CHALLENGE_SUCCESS_147006", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "56", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_147006", trigger_count = 0 },
	{ config_id = 1147007, name = "CHALLENGE_FAIL_147007", event = EventType.EVENT_CHALLENGE_FAIL, source = "56", condition = "", action = "action_EVENT_CHALLENGE_FAIL_147007", trigger_count = 0 },
	{ config_id = 1147008, name = "GADGET_STATE_CHANGE_147008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_147008", action = "action_EVENT_GADGET_STATE_CHANGE_147008", trigger_count = 0 },
	{ config_id = 1147009, name = "ANY_GADGET_DIE_147009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "201" },
	{ config_id = 1147010, name = "GADGET_CREATE_147010", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_147010", action = "action_EVENT_GADGET_CREATE_147010", trigger_count = 0 },
	{ config_id = 1147011, name = "SELECT_OPTION_147011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_147011", action = "action_EVENT_SELECT_OPTION_147011", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1147017, name = "GROUP_LOAD_147017", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_147017", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "gadget_start", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 147013, gadget_id = 70330100, pos = { x = -4006.498, y = 190.362, z = -764.338 }, rot = { x = 0.000, y = 135.996, z = 0.000 }, level = 30, area_id = 17 },
		{ config_id = 147014, gadget_id = 70330100, pos = { x = -3984.131, y = 193.631, z = -763.890 }, rot = { x = 0.000, y = 135.996, z = 0.000 }, level = 30, area_id = 17 }
	}
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
		gadgets = { 147002, 147005 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_147006", "CHALLENGE_FAIL_147007", "GADGET_STATE_CHANGE_147008", "ANY_GADGET_DIE_147009", "GADGET_CREATE_147010", "SELECT_OPTION_147011", "GROUP_LOAD_147017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 147001, 147004, 147012, 147015, 147016 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 147002, 147003 },
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
function action_EVENT_CHALLENGE_SUCCESS_147006(context, evt)
	-- 将configid为 147002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 147005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133210147, 3) then
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
function action_EVENT_CHALLENGE_FAIL_147007(context, evt)
	-- 将configid为 147002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133210147, 2)
	
	-- 创建id为147005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 147005 }) then
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
function condition_EVENT_GADGET_STATE_CHANGE_147008(context, evt)
	if 147002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_147008(context, evt)
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
function condition_EVENT_GADGET_CREATE_147010(context, evt)
	if 147005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_147010(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210147, 147005, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_147011(context, evt)
	-- 判断是gadgetid 147005 option_id 177
	if 147005 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_147011(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 147005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 147002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_147017(context, evt)
	-- 将configid为 147002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133210147, 2)
	
	-- 创建id为147005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 147005 }) then
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

require "V2_0/ElectricCore"