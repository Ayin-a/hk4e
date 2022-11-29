-- 基础信息
local base_info = {
	group_id = 133309325
}

-- Trigger变量
local defs = {
	duration = 30,
	group_id = 133309325,
	gadget_sum = 10
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
	{ config_id = 325001, gadget_id = 70220005, pos = { x = -2742.046, y = -44.817, z = 5330.021 }, rot = { x = 340.153, y = 94.453, z = 11.017 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 325002, gadget_id = 70330344, pos = { x = -2741.649, y = -51.566, z = 5372.223 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 325003, gadget_id = 70211101, pos = { x = -2745.360, y = -44.620, z = 5343.369 }, rot = { x = 12.653, y = 97.146, z = 6.406 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 },
	{ config_id = 325004, gadget_id = 70220005, pos = { x = -2743.579, y = -45.873, z = 5334.748 }, rot = { x = 338.786, y = 77.498, z = 2.885 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 325005, gadget_id = 70360001, pos = { x = -2741.640, y = -50.705, z = 5372.233 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 325006, gadget_id = 70220005, pos = { x = -2741.450, y = -43.655, z = 5325.951 }, rot = { x = 339.710, y = 103.311, z = 7.340 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 325007, gadget_id = 70220005, pos = { x = -2742.379, y = -42.515, z = 5322.029 }, rot = { x = 352.321, y = 93.191, z = 24.053 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 325008, gadget_id = 70220005, pos = { x = -2749.736, y = -39.414, z = 5320.986 }, rot = { x = 3.725, y = 139.184, z = 25.032 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 325009, gadget_id = 70220005, pos = { x = -2752.884, y = -39.533, z = 5325.547 }, rot = { x = 358.757, y = 136.551, z = 30.834 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 325010, gadget_id = 70220005, pos = { x = -2752.886, y = -40.628, z = 5331.078 }, rot = { x = 0.955, y = 137.352, z = 36.842 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 325011, gadget_id = 70220005, pos = { x = -2751.077, y = -43.303, z = 5336.114 }, rot = { x = 357.105, y = 131.985, z = 16.657 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 325012, gadget_id = 70220005, pos = { x = -2746.053, y = -44.207, z = 5339.690 }, rot = { x = 14.972, y = 78.134, z = 359.160 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 325021, gadget_id = 70220005, pos = { x = -2746.582, y = -39.722, z = 5318.555 }, rot = { x = 11.258, y = 77.795, z = 10.998 }, level = 32, persistent = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1325013, name = "CHALLENGE_SUCCESS_325013", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "56", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_325013", trigger_count = 0 },
	{ config_id = 1325014, name = "CHALLENGE_FAIL_325014", event = EventType.EVENT_CHALLENGE_FAIL, source = "56", condition = "", action = "action_EVENT_CHALLENGE_FAIL_325014", trigger_count = 0 },
	{ config_id = 1325015, name = "GADGET_STATE_CHANGE_325015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_325015", action = "action_EVENT_GADGET_STATE_CHANGE_325015", trigger_count = 0 },
	{ config_id = 1325016, name = "ANY_GADGET_DIE_325016", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "201" },
	{ config_id = 1325017, name = "GADGET_CREATE_325017", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_325017", action = "action_EVENT_GADGET_CREATE_325017", trigger_count = 0 },
	{ config_id = 1325018, name = "SELECT_OPTION_325018", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_325018", action = "action_EVENT_SELECT_OPTION_325018", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1325019, name = "GROUP_LOAD_325019", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_325019", trigger_count = 0 },
	{ config_id = 1325020, name = "ANY_GADGET_DIE_325020", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_325020", action = "action_EVENT_ANY_GADGET_DIE_325020" }
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
		gadgets = { 325002, 325005 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_325013", "CHALLENGE_FAIL_325014", "GADGET_STATE_CHANGE_325015", "ANY_GADGET_DIE_325016", "GADGET_CREATE_325017", "SELECT_OPTION_325018", "GROUP_LOAD_325019", "ANY_GADGET_DIE_325020" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 325001, 325004, 325006, 325007, 325008, 325009, 325010, 325011, 325012, 325021 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 325002, 325003 },
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
function action_EVENT_CHALLENGE_SUCCESS_325013(context, evt)
	-- 将configid为 325002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 325002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 325005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133309325, 3) then
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
function action_EVENT_CHALLENGE_FAIL_325014(context, evt)
	-- 将configid为 325002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 325002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133309325, 2)
	
	-- 创建id为325005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 325005 }) then
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
function condition_EVENT_GADGET_STATE_CHANGE_325015(context, evt)
	if 325002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_325015(context, evt)
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
function condition_EVENT_GADGET_CREATE_325017(context, evt)
	if 325005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_325017(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133309325, 325005, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_325018(context, evt)
	-- 判断是gadgetid 325005 option_id 177
	if 325005 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_325018(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 325005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 325002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 325002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_325019(context, evt)
	-- 将configid为 325002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 325002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133309325, 2)
	
	-- 创建id为325005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 325005 }) then
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
function condition_EVENT_ANY_GADGET_DIE_325020(context, evt)
	if 325001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_325020(context, evt)
	-- 将本组内变量名为 "zhayao" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "zhayao", 1, 133309523) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end