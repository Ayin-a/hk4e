-- 基础信息
local base_info = {
	group_id = 199003007
}

-- Trigger变量
local defs = {
	duration = 70,
	group_id = 199003007,
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
	{ config_id = 7001, gadget_id = 70220072, pos = { x = -105.468, y = 120.000, z = 367.866 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, persistent = true, area_id = 402 },
	{ config_id = 7002, gadget_id = 70350250, pos = { x = -137.117, y = 120.000, z = 382.932 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, persistent = true, area_id = 403 },
	{ config_id = 7003, gadget_id = 70211111, pos = { x = 137.177, y = 120.098, z = 442.726 }, rot = { x = 0.000, y = 270.982, z = 0.000 }, level = 16, drop_tag = "解谜中级群岛", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 402 },
	{ config_id = 7004, gadget_id = 70220072, pos = { x = -103.559, y = 120.000, z = 368.042 }, rot = { x = 0.000, y = 306.367, z = 0.000 }, level = 20, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 402 },
	{ config_id = 7005, gadget_id = 70360001, pos = { x = -137.108, y = 120.965, z = 382.944 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, persistent = true, area_id = 403 },
	{ config_id = 7006, gadget_id = 70290056, pos = { x = -127.106, y = 120.000, z = 359.248 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 403 },
	{ config_id = 7007, gadget_id = 70220072, pos = { x = -49.356, y = 120.000, z = 376.872 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, persistent = true, area_id = 402 },
	{ config_id = 7008, gadget_id = 70220072, pos = { x = 48.148, y = 120.000, z = 490.818 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, persistent = true, area_id = 402 },
	{ config_id = 7009, gadget_id = 70220072, pos = { x = 49.213, y = 120.000, z = 490.085 }, rot = { x = 0.000, y = 327.682, z = 0.000 }, level = 20, persistent = true, area_id = 402 },
	{ config_id = 7010, gadget_id = 70350258, pos = { x = -45.569, y = 120.000, z = 393.162 }, rot = { x = 0.000, y = 49.334, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 7011, gadget_id = 70220072, pos = { x = 80.288, y = 120.000, z = 463.304 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 402 },
	{ config_id = 7012, gadget_id = 70290056, pos = { x = -87.581, y = 120.000, z = 377.376 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 402 },
	{ config_id = 7013, gadget_id = 70350258, pos = { x = 0.332, y = 120.000, z = 432.596 }, rot = { x = 0.000, y = 49.334, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 7014, gadget_id = 70290056, pos = { x = -28.262, y = 120.000, z = 424.970 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 402 },
	{ config_id = 7015, gadget_id = 70290056, pos = { x = -22.383, y = 120.000, z = 400.755 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 402 },
	{ config_id = 7016, gadget_id = 70290056, pos = { x = 58.379, y = 120.000, z = 482.926 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 402 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1007021, name = "CHALLENGE_SUCCESS_7021", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "56", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_7021", trigger_count = 0 },
	{ config_id = 1007022, name = "CHALLENGE_FAIL_7022", event = EventType.EVENT_CHALLENGE_FAIL, source = "56", condition = "", action = "action_EVENT_CHALLENGE_FAIL_7022", trigger_count = 0 },
	{ config_id = 1007023, name = "GADGET_STATE_CHANGE_7023", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_7023", action = "action_EVENT_GADGET_STATE_CHANGE_7023", trigger_count = 0 },
	{ config_id = 1007024, name = "ANY_GADGET_DIE_7024", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "201" },
	{ config_id = 1007025, name = "GADGET_CREATE_7025", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_7025", action = "action_EVENT_GADGET_CREATE_7025", trigger_count = 0 },
	{ config_id = 1007026, name = "SELECT_OPTION_7026", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_7026", action = "action_EVENT_SELECT_OPTION_7026", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1007027, name = "GROUP_LOAD_7027", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_7027", trigger_count = 0 }
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
		gadgets = { 7002, 7005 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_7021", "CHALLENGE_FAIL_7022", "GADGET_STATE_CHANGE_7023", "ANY_GADGET_DIE_7024", "GADGET_CREATE_7025", "SELECT_OPTION_7026", "GROUP_LOAD_7027" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 7001, 7004, 7006, 7007, 7008, 7009, 7010, 7011, 7012, 7013, 7014, 7015, 7016 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 7002, 7003 },
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
function action_EVENT_CHALLENGE_SUCCESS_7021(context, evt)
	-- 将configid为 7002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 7002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 7005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 199003007, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3003, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199003007, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_7022(context, evt)
	-- 将configid为 7002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 7002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199003007, 2)
	
	-- 创建id为7005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 7005 }) then
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
function condition_EVENT_GADGET_STATE_CHANGE_7023(context, evt)
	if 7002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_7023(context, evt)
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
function condition_EVENT_GADGET_CREATE_7025(context, evt)
	if 7005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_7025(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 199003007, 7005, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_7026(context, evt)
	-- 判断是gadgetid 7005 option_id 177
	if 7005 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_7026(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 7005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 7002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 7002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_7027(context, evt)
	-- 将configid为 7002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 7002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199003007, 2)
	
	-- 创建id为7005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 7005 }) then
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