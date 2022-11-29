-- 基础信息
local base_info = {
	group_id = 133212314
}

-- Trigger变量
local defs = {
	duration = 40,
	group_id = 133212314,
	collectable_sum = 8
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
	{ config_id = 314001, gadget_id = 70211101, pos = { x = -3902.394, y = 309.092, z = -2240.352 }, rot = { x = 10.003, y = 161.615, z = 6.917 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 13 },
	{ config_id = 314002, gadget_id = 70350093, pos = { x = -3872.181, y = 314.109, z = -2347.733 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 13 },
	{ config_id = 314003, gadget_id = 70360001, pos = { x = -3871.886, y = 315.147, z = -2348.399 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 13 },
	{ config_id = 314004, gadget_id = 70290150, pos = { x = -3871.346, y = 314.474, z = -2342.694 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 13 },
	{ config_id = 314005, gadget_id = 70290150, pos = { x = -3876.678, y = 296.356, z = -2308.583 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 13 },
	{ config_id = 314006, gadget_id = 70290150, pos = { x = -3885.299, y = 297.904, z = -2287.349 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 13 },
	{ config_id = 314007, gadget_id = 70290150, pos = { x = -3890.735, y = 294.242, z = -2273.920 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 13 },
	{ config_id = 314008, gadget_id = 70290150, pos = { x = -3894.354, y = 302.079, z = -2263.504 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 13 },
	{ config_id = 314009, gadget_id = 70290150, pos = { x = -3896.313, y = 305.011, z = -2257.171 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 13 },
	{ config_id = 314010, gadget_id = 70290150, pos = { x = -3899.102, y = 306.263, z = -2248.797 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 13 },
	{ config_id = 314011, gadget_id = 70290150, pos = { x = -3900.926, y = 308.918, z = -2243.156 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1314012, name = "CHALLENGE_SUCCESS_314012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_314012", trigger_count = 0 },
	{ config_id = 1314013, name = "CHALLENGE_FAIL_314013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_314013", trigger_count = 0 },
	{ config_id = 1314014, name = "GADGET_STATE_CHANGE_314014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_314014", action = "action_EVENT_GADGET_STATE_CHANGE_314014", trigger_count = 0 },
	{ config_id = 1314015, name = "ANY_GADGET_DIE_314015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
	{ config_id = 1314016, name = "GADGET_CREATE_314016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_314016", action = "action_EVENT_GADGET_CREATE_314016", trigger_count = 0 },
	{ config_id = 1314017, name = "SELECT_OPTION_314017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_314017", action = "action_EVENT_SELECT_OPTION_314017", trigger_count = 0 },
	{ config_id = 1314018, name = "GROUP_LOAD_314018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_314018", action = "action_EVENT_GROUP_LOAD_314018", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "finish", value = 0, no_refresh = true }
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
		gadgets = { 314002, 314003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_314012", "CHALLENGE_FAIL_314013", "GADGET_STATE_CHANGE_314014", "ANY_GADGET_DIE_314015", "GADGET_CREATE_314016", "SELECT_OPTION_314017", "GROUP_LOAD_314018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 314004, 314005, 314006, 314007, 314008, 314009, 314010, 314011 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 314002 },
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
function action_EVENT_CHALLENGE_SUCCESS_314012(context, evt)
	-- 将configid为 314002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 314002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133212314, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133212314, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 创建id为314001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 314001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_314013(context, evt)
	-- 将configid为 314002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 314002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为314003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 314003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133212314, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_314014(context, evt)
	if 314002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_314014(context, evt)
	-- 247号挑战,duration内开启宝箱
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 247, defs.duration, 2, 218, defs.collectable_sum) then
	return -1
	end
	
	-- 添加suite2的新内容
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 1, 1) then
	return -1
	end
	
	return 0
	
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_314016(context, evt)
	if 314003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_314016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133212314, 314003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_314017(context, evt)
	-- 判断是gadgetid 314003 option_id 177
	if 314003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_314017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 314003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 314002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 314002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_314018(context, evt)
	-- 判断变量"finish"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "finish", 133212314) ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_314018(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133212314, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end