-- 基础信息
local base_info = {
	group_id = 133210356
}

-- Trigger变量
local defs = {
	duration = 60,
	group_id = 133210356,
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
	{ config_id = 356001, gadget_id = 70220072, pos = { x = -4252.473, y = 199.991, z = -895.585 }, rot = { x = 0.000, y = 109.232, z = 0.000 }, level = 1, persistent = true, area_id = 17 },
	{ config_id = 356002, gadget_id = 70350250, pos = { x = -4204.604, y = 199.991, z = -864.114 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 17 },
	{ config_id = 356003, gadget_id = 70210105, pos = { x = -4207.548, y = 199.991, z = -864.509 }, rot = { x = 0.000, y = 58.391, z = 0.000 }, level = 26, drop_tag = "水上搜刮点稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 17 },
	{ config_id = 356004, gadget_id = 70220072, pos = { x = -4221.563, y = 199.991, z = -841.257 }, rot = { x = 0.000, y = 164.933, z = 0.000 }, level = 1, persistent = true, area_id = 17 },
	{ config_id = 356005, gadget_id = 70360001, pos = { x = -4204.595, y = 199.991, z = -864.102 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 17 },
	{ config_id = 356006, gadget_id = 70220072, pos = { x = -4244.906, y = 199.991, z = -847.386 }, rot = { x = 0.000, y = 171.309, z = 0.000 }, level = 1, persistent = true, area_id = 17 },
	{ config_id = 356007, gadget_id = 70220072, pos = { x = -4274.839, y = 199.991, z = -851.988 }, rot = { x = 0.000, y = 146.142, z = 0.000 }, level = 1, persistent = true, area_id = 17 },
	{ config_id = 356008, gadget_id = 70220072, pos = { x = -4289.751, y = 199.991, z = -880.572 }, rot = { x = 0.000, y = 187.059, z = 0.000 }, level = 1, persistent = true, area_id = 17 },
	{ config_id = 356009, gadget_id = 70220072, pos = { x = -4226.148, y = 199.991, z = -877.503 }, rot = { x = 0.000, y = 63.971, z = 0.000 }, level = 1, persistent = true, area_id = 17 },
	{ config_id = 356017, gadget_id = 70290180, pos = { x = -4241.202, y = 199.990, z = -881.119 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 356018, gadget_id = 70290180, pos = { x = -4281.396, y = 199.990, z = -865.530 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 356019, gadget_id = 70290180, pos = { x = -4231.721, y = 199.990, z = -849.477 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1356010, name = "CHALLENGE_SUCCESS_356010", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "56", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_356010" },
	{ config_id = 1356011, name = "CHALLENGE_FAIL_356011", event = EventType.EVENT_CHALLENGE_FAIL, source = "56", condition = "", action = "action_EVENT_CHALLENGE_FAIL_356011", trigger_count = 0 },
	{ config_id = 1356012, name = "GADGET_STATE_CHANGE_356012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_356012", action = "action_EVENT_GADGET_STATE_CHANGE_356012", trigger_count = 0 },
	{ config_id = 1356013, name = "ANY_GADGET_DIE_356013", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "201" },
	{ config_id = 1356014, name = "GADGET_CREATE_356014", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_356014", action = "action_EVENT_GADGET_CREATE_356014", trigger_count = 0 },
	{ config_id = 1356015, name = "SELECT_OPTION_356015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_356015", action = "action_EVENT_SELECT_OPTION_356015", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1356016, name = "GROUP_LOAD_356016", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_356016", trigger_count = 0 }
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
		gadgets = { 356002, 356005 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_356010", "CHALLENGE_FAIL_356011", "GADGET_STATE_CHANGE_356012", "ANY_GADGET_DIE_356013", "GADGET_CREATE_356014", "SELECT_OPTION_356015", "GROUP_LOAD_356016" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 356001, 356004, 356006, 356007, 356008, 356009, 356017, 356018, 356019 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 356002, 356003 },
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
function action_EVENT_CHALLENGE_SUCCESS_356010(context, evt)
	-- 将configid为 356002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 356002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 356005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133210356, 3) then
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
function action_EVENT_CHALLENGE_FAIL_356011(context, evt)
	-- 将configid为 356002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 356002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133210356, 2)
	
	-- 创建id为356005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 356005 }) then
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
function condition_EVENT_GADGET_STATE_CHANGE_356012(context, evt)
	if 356002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_356012(context, evt)
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
function condition_EVENT_GADGET_CREATE_356014(context, evt)
	if 356005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_356014(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210356, 356005, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_356015(context, evt)
	-- 判断是gadgetid 356005 option_id 177
	if 356005 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_356015(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 356005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 356002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 356002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_356016(context, evt)
	-- 将configid为 356002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 356002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133210356, 2)
	
	-- 创建id为356005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 356005 }) then
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