-- 基础信息
local base_info = {
	group_id = 133213446
}

-- Trigger变量
local defs = {
	duration = 60,
	kill_sum = 2,
	group_id = 133213446,
	gadget_controller_id = 446004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 446001, monster_id = 23050101, pos = { x = -3586.591, y = 216.492, z = -3305.909 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_id = 1000100, area_id = 12 },
	{ config_id = 446009, monster_id = 23050101, pos = { x = -3584.137, y = 216.380, z = -3301.760 }, rot = { x = 0.000, y = 275.004, z = 0.000 }, level = 27, drop_id = 1000100, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 446002, gadget_id = 70350082, pos = { x = -3586.792, y = 216.492, z = -3302.465 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 12 },
	{ config_id = 446003, gadget_id = 70211011, pos = { x = -3586.756, y = 216.709, z = -3299.220 }, rot = { x = 5.691, y = 167.677, z = 5.125 }, level = 26, drop_tag = "战斗中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 },
	{ config_id = 446004, gadget_id = 70360001, pos = { x = -3586.801, y = 216.961, z = -3302.479 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1446005, name = "CHALLENGE_SUCCESS_446005", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_446005", trigger_count = 0 },
	{ config_id = 1446006, name = "CHALLENGE_FAIL_446006", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_446006", trigger_count = 0 },
	{ config_id = 1446007, name = "GADGET_CREATE_446007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_446007", action = "action_EVENT_GADGET_CREATE_446007", trigger_count = 0 },
	{ config_id = 1446008, name = "SELECT_OPTION_446008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_446008", action = "action_EVENT_SELECT_OPTION_446008", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1446010, name = "GROUP_LOAD_446010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_446010", action = "action_EVENT_GROUP_LOAD_446010", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "isFinish", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 0,
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
		gadgets = { 446002, 446004 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_446005", "CHALLENGE_FAIL_446006", "GADGET_CREATE_446007", "SELECT_OPTION_446008", "GROUP_LOAD_446010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 446001, 446009 },
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
function action_EVENT_CHALLENGE_SUCCESS_446005(context, evt)
	-- 将configid为 446002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 446002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为446003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 446003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 将本组内变量名为 "isFinish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isFinish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_446006(context, evt)
	-- 将configid为 446002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 446002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为446004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 446004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213446, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_446007(context, evt)
	if 446004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_446007(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133213446, 446004, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_446008(context, evt)
	-- 判断是gadgetid 446004 option_id 177
	if 446004 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_446008(context, evt)
	-- 180号挑战,duration内击杀kill_sum的怪物
	if 0 ~= ScriptLib.ActiveChallenge(context, 180, 180, defs.duration, defs.group_id, defs.kill_sum, 0) then
	return -1
	end
	
	-- 添加suite2的新内容
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
		--永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
	if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_controller_id }) then
	return -1
	end
		
	
	-- 将configid为 2002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 446002, GadgetState.GearStart) then
	return -1
	end 
	
	
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 1, 1) then
	return -1
	end
	
	return 0
	
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_446010(context, evt)
	-- 判断变量"isFinish"为0
	if ScriptLib.GetGroupVariableValue(context, "isFinish") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_446010(context, evt)
	-- 将configid为 446002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 446002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为446004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 446004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213446, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end