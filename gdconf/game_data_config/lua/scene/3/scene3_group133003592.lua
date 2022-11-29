-- 基础信息
local base_info = {
	group_id = 133003592
}

-- Trigger变量
local defs = {
	duration = 20,
	group_id = 133003592,
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
	{ config_id = 592001, gadget_id = 70220005, pos = { x = 2323.754, y = 252.417, z = -1403.356 }, rot = { x = 0.000, y = 12.446, z = 0.000 }, level = 5, area_id = 1 },
	{ config_id = 592002, gadget_id = 70350084, pos = { x = 2341.296, y = 252.648, z = -1406.549 }, rot = { x = 5.788, y = 96.626, z = 2.286 }, level = 5, persistent = true, area_id = 1 },
	{ config_id = 592003, gadget_id = 70211111, pos = { x = 2339.143, y = 252.847, z = -1406.644 }, rot = { x = 357.209, y = 179.568, z = 354.911 }, level = 1, drop_tag = "解谜中级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 },
	{ config_id = 592004, gadget_id = 70220005, pos = { x = 2332.845, y = 248.571, z = -1390.943 }, rot = { x = 0.000, y = 47.602, z = 0.000 }, level = 5, area_id = 1 },
	{ config_id = 592005, gadget_id = 70360001, pos = { x = 2341.307, y = 253.617, z = -1406.534 }, rot = { x = 5.788, y = 96.626, z = 2.286 }, level = 5, persistent = true, area_id = 1 },
	{ config_id = 592012, gadget_id = 70220005, pos = { x = 2325.755, y = 251.812, z = -1391.188 }, rot = { x = 0.000, y = 119.369, z = 0.000 }, level = 5, area_id = 1 },
	{ config_id = 592013, gadget_id = 70220005, pos = { x = 2328.581, y = 247.661, z = -1371.290 }, rot = { x = 0.000, y = 0.547, z = 0.000 }, level = 5, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1592006, name = "CHALLENGE_SUCCESS_592006", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "56", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_592006" },
	{ config_id = 1592007, name = "CHALLENGE_FAIL_592007", event = EventType.EVENT_CHALLENGE_FAIL, source = "56", condition = "", action = "action_EVENT_CHALLENGE_FAIL_592007", trigger_count = 0 },
	{ config_id = 1592008, name = "GADGET_STATE_CHANGE_592008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_592008", action = "action_EVENT_GADGET_STATE_CHANGE_592008", trigger_count = 0 },
	{ config_id = 1592009, name = "ANY_GADGET_DIE_592009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "201" },
	{ config_id = 1592010, name = "GADGET_CREATE_592010", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_592010", action = "action_EVENT_GADGET_CREATE_592010", trigger_count = 0 },
	{ config_id = 1592011, name = "SELECT_OPTION_592011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_592011", action = "action_EVENT_SELECT_OPTION_592011", trigger_count = 0 }
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
		gadgets = { 592002, 592005 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_592006", "CHALLENGE_FAIL_592007", "GADGET_STATE_CHANGE_592008", "ANY_GADGET_DIE_592009", "GADGET_CREATE_592010", "SELECT_OPTION_592011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 592001, 592004, 592012, 592013 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 592002, 592003 },
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
function action_EVENT_CHALLENGE_SUCCESS_592006(context, evt)
	-- 将configid为 592002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 592002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 592005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133003592, 3) then
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
function action_EVENT_CHALLENGE_FAIL_592007(context, evt)
	-- 将configid为 592002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 592002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133003592, 2)
	
	-- 创建id为592005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 592005 }) then
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
function condition_EVENT_GADGET_STATE_CHANGE_592008(context, evt)
	if 592002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_592008(context, evt)
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
function condition_EVENT_GADGET_CREATE_592010(context, evt)
	if 592005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_592010(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133003592, 592005, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_592011(context, evt)
	-- 判断是gadgetid 592005 option_id 177
	if 592005 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_592011(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 592005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 592002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 592002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end