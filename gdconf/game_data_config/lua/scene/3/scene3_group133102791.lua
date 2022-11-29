-- 基础信息
local base_info = {
	group_id = 133102791
}

-- Trigger变量
local defs = {
	duration = 60,
	group_id = 133102791,
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
	{ config_id = 791001, gadget_id = 70690006, pos = { x = 1744.100, y = 210.500, z = 585.300 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 791002, gadget_id = 70350084, pos = { x = 1736.772, y = 210.873, z = 591.079 }, rot = { x = 6.335, y = 28.693, z = 3.410 }, level = 18, persistent = true, area_id = 5 },
	{ config_id = 791003, gadget_id = 70211121, pos = { x = 1754.617, y = 255.895, z = 555.804 }, rot = { x = 358.619, y = 36.537, z = 1.783 }, level = 16, drop_tag = "解谜高级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 791004, gadget_id = 70690006, pos = { x = 1769.171, y = 226.792, z = 579.558 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 791005, gadget_id = 70360001, pos = { x = 1736.770, y = 211.830, z = 591.203 }, rot = { x = 6.335, y = 28.693, z = 3.410 }, level = 18, persistent = true, area_id = 5 },
	{ config_id = 791012, gadget_id = 70690006, pos = { x = 1759.602, y = 239.900, z = 603.303 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 791013, gadget_id = 70690006, pos = { x = 1779.248, y = 260.200, z = 586.680 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 791014, gadget_id = 70310013, pos = { x = 1744.084, y = 210.485, z = 585.346 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 791015, gadget_id = 70220005, pos = { x = 1744.081, y = 210.900, z = 585.386 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 791016, gadget_id = 70220005, pos = { x = 1764.039, y = 227.170, z = 580.755 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 791017, gadget_id = 70220005, pos = { x = 1760.653, y = 240.306, z = 597.986 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 791018, gadget_id = 70220005, pos = { x = 1774.443, y = 260.545, z = 589.680 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 791019, gadget_id = 70220005, pos = { x = 1764.996, y = 271.376, z = 568.872 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 791025, gadget_id = 70310013, pos = { x = 1763.998, y = 226.792, z = 580.787 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 791026, gadget_id = 70310013, pos = { x = 1760.541, y = 239.916, z = 597.946 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 791027, gadget_id = 70310013, pos = { x = 1774.468, y = 260.151, z = 589.647 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 791028, gadget_id = 70310013, pos = { x = 1764.872, y = 270.967, z = 568.930 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1791006, name = "CHALLENGE_SUCCESS_791006", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "56", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_791006" },
	{ config_id = 1791007, name = "CHALLENGE_FAIL_791007", event = EventType.EVENT_CHALLENGE_FAIL, source = "56", condition = "", action = "action_EVENT_CHALLENGE_FAIL_791007", trigger_count = 0 },
	{ config_id = 1791008, name = "GADGET_STATE_CHANGE_791008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_791008", action = "action_EVENT_GADGET_STATE_CHANGE_791008", trigger_count = 0 },
	{ config_id = 1791010, name = "GADGET_CREATE_791010", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_791010", action = "action_EVENT_GADGET_CREATE_791010", trigger_count = 0 },
	{ config_id = 1791011, name = "SELECT_OPTION_791011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_791011", action = "action_EVENT_SELECT_OPTION_791011", trigger_count = 0 },
	{ config_id = 1791029, name = "ANY_GADGET_DIE_791029", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_791029", action = "", trigger_count = 5, tag = "647" }
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
		gadgets = { 791002, 791005 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_791006", "CHALLENGE_FAIL_791007", "GADGET_STATE_CHANGE_791008", "GADGET_CREATE_791010", "SELECT_OPTION_791011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 791001, 791004, 791012, 791013, 791014, 791015, 791016, 791017, 791018, 791019, 791025, 791026, 791027, 791028 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_791029" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 791002, 791003 },
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
function action_EVENT_CHALLENGE_SUCCESS_791006(context, evt)
	-- 将configid为 791002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 791002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 791005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133102791, 3) then
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
function action_EVENT_CHALLENGE_FAIL_791007(context, evt)
	-- 将configid为 791002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 791002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102791, 2)
	
	-- 创建id为791005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 791005 }) then
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
function condition_EVENT_GADGET_STATE_CHANGE_791008(context, evt)
	if 791002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_791008(context, evt)
	-- 201号挑战,duration内破坏炸药桶
	if 0 ~= ScriptLib.ActiveChallenge(context, 56, 200, defs.duration, 2, 647, defs.gadget_sum) then
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
function condition_EVENT_GADGET_CREATE_791010(context, evt)
	if 791005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_791010(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133102791, 791005, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_791011(context, evt)
	-- 判断是gadgetid 791005 option_id 177
	if 791005 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_791011(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 791005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 791002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 791002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_791029(context, evt)
	if evt.param1 == 791015 or evt.param1 == 791016 or evt.param1 == 791017 or evt.param1 == 791018 or evt.param1 == 791019 then
		return true
	else
		return false
	end
end