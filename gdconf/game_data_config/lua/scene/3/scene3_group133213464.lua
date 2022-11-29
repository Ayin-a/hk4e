-- 基础信息
local base_info = {
	group_id = 133213464
}

-- Trigger变量
local defs = {
	duration = 120,
	group_id = 133213464,
	gadget_sum = 12
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
	{ config_id = 464001, gadget_id = 70220072, pos = { x = -3771.514, y = 200.000, z = -3504.801 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 12 },
	{ config_id = 464002, gadget_id = 70350084, pos = { x = -3770.036, y = 198.908, z = -3486.641 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 12 },
	{ config_id = 464003, gadget_id = 70211101, pos = { x = -3767.413, y = 200.328, z = -3481.664 }, rot = { x = 10.279, y = 206.492, z = 354.401 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 },
	{ config_id = 464004, gadget_id = 70220072, pos = { x = -3773.108, y = 200.000, z = -3529.112 }, rot = { x = 0.000, y = 351.904, z = 0.000 }, level = 2, persistent = true, area_id = 12 },
	{ config_id = 464005, gadget_id = 70360001, pos = { x = -3768.356, y = 200.466, z = -3484.214 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 12 },
	{ config_id = 464012, gadget_id = 70220072, pos = { x = -3776.019, y = 200.000, z = -3531.569 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 12 },
	{ config_id = 464013, gadget_id = 70220072, pos = { x = -3797.823, y = 200.000, z = -3535.286 }, rot = { x = 0.000, y = 351.904, z = 0.000 }, level = 27, persistent = true, area_id = 12 },
	{ config_id = 464014, gadget_id = 70220072, pos = { x = -3804.260, y = 200.000, z = -3536.486 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 12 },
	{ config_id = 464015, gadget_id = 70220072, pos = { x = -3802.631, y = 200.000, z = -3529.542 }, rot = { x = 0.000, y = 351.904, z = 0.000 }, level = 27, persistent = true, area_id = 12 },
	{ config_id = 464016, gadget_id = 70220072, pos = { x = -3809.702, y = 200.000, z = -3530.786 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 12 },
	{ config_id = 464017, gadget_id = 70220072, pos = { x = -3818.989, y = 200.000, z = -3498.894 }, rot = { x = 0.000, y = 351.904, z = 0.000 }, level = 27, persistent = true, area_id = 12 },
	{ config_id = 464018, gadget_id = 70220072, pos = { x = -3807.877, y = 200.000, z = -3488.598 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 12 },
	{ config_id = 464019, gadget_id = 70220072, pos = { x = -3808.759, y = 200.000, z = -3495.178 }, rot = { x = 0.000, y = 351.904, z = 0.000 }, level = 27, persistent = true, area_id = 12 },
	{ config_id = 464020, gadget_id = 70220072, pos = { x = -3813.562, y = 200.000, z = -3498.801 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 12 },
	{ config_id = 464021, gadget_id = 70220072, pos = { x = -3770.047, y = 200.000, z = -3501.604 }, rot = { x = 0.000, y = 351.904, z = 0.000 }, level = 27, persistent = true, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1464006, name = "CHALLENGE_SUCCESS_464006", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "56", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_464006", trigger_count = 0 },
	{ config_id = 1464007, name = "CHALLENGE_FAIL_464007", event = EventType.EVENT_CHALLENGE_FAIL, source = "56", condition = "", action = "action_EVENT_CHALLENGE_FAIL_464007", trigger_count = 0 },
	{ config_id = 1464008, name = "GADGET_STATE_CHANGE_464008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_464008", action = "action_EVENT_GADGET_STATE_CHANGE_464008", trigger_count = 0 },
	{ config_id = 1464009, name = "ANY_GADGET_DIE_464009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "201" },
	{ config_id = 1464010, name = "GADGET_CREATE_464010", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_464010", action = "action_EVENT_GADGET_CREATE_464010", trigger_count = 0 },
	{ config_id = 1464011, name = "SELECT_OPTION_464011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_464011", action = "action_EVENT_SELECT_OPTION_464011", trigger_count = 0 },
	{ config_id = 1464022, name = "ANY_GADGET_DIE_464022", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_464022", action = "action_EVENT_ANY_GADGET_DIE_464022" },
	{ config_id = 1464023, name = "ANY_GADGET_DIE_464023", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_464023", action = "action_EVENT_ANY_GADGET_DIE_464023" },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1464024, name = "GROUP_LOAD_464024", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_464024", trigger_count = 0 }
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
		gadgets = { 464002, 464005 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_464006", "CHALLENGE_FAIL_464007", "GADGET_STATE_CHANGE_464008", "ANY_GADGET_DIE_464009", "GADGET_CREATE_464010", "SELECT_OPTION_464011", "GROUP_LOAD_464024" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 464001, 464004, 464012, 464013 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_464022" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 464002, 464003 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 464014, 464015, 464016, 464017 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_464023" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 464018, 464019, 464020, 464021 },
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
function action_EVENT_CHALLENGE_SUCCESS_464006(context, evt)
	-- 将configid为 464002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 464002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 464005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133213464, 3) then
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
function action_EVENT_CHALLENGE_FAIL_464007(context, evt)
	-- 将configid为 464002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 464002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213464, 2)
	
	-- 创建id为464005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 464005 }) then
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
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213464, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213464, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_464008(context, evt)
	if 464002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_464008(context, evt)
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
function condition_EVENT_GADGET_CREATE_464010(context, evt)
	if 464005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_464010(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133213464, 464005, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_464011(context, evt)
	-- 判断是gadgetid 464005 option_id 177
	if 464005 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_464011(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 464005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 464002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 464002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_464022(context, evt)
	-- 判断指定group组剩余gadget数量是否是1 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133213464}) ~= 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_464022(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213464, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_464023(context, evt)
	-- 判断指定group组剩余gadget数量是否是1 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133213464}) ~= 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_464023(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213464, 5)
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_464024(context, evt)
	-- 将configid为 464002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 464002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213464, 2)
	
	-- 创建id为464005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 464005 }) then
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