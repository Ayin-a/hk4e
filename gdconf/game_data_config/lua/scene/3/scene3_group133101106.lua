-- 基础信息
local base_info = {
	group_id = 133101106
}

-- Trigger变量
local defs = {
	duration = 180,
	kill_sum = 5,
	group_id = 133101106,
	gadget_controller_id = 106013
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 106001, monster_id = 21011001, pos = { x = 1426.466, y = 230.631, z = 1224.541 }, rot = { x = 0.028, y = 13.348, z = 359.884 }, level = 1, drop_id = 1000100, pose_id = 32, area_id = 5 },
	{ config_id = 106002, monster_id = 20010601, pos = { x = 1424.654, y = 230.172, z = 1228.533 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 5 },
	{ config_id = 106003, monster_id = 21011001, pos = { x = 1429.373, y = 231.093, z = 1224.099 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 32, area_id = 5 },
	{ config_id = 106004, monster_id = 20010601, pos = { x = 1428.196, y = 230.431, z = 1233.169 }, rot = { x = 0.000, y = 228.217, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 5 },
	{ config_id = 106005, monster_id = 20010701, pos = { x = 1431.110, y = 231.291, z = 1228.010 }, rot = { x = 0.000, y = 312.135, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 106006, gadget_id = 70350082, pos = { x = 1429.014, y = 230.843, z = 1230.717 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 5 },
	{ config_id = 106007, gadget_id = 70300118, pos = { x = 1429.049, y = 233.631, z = 1230.717 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 106008, gadget_id = 70330011, pos = { x = 1429.138, y = 232.653, z = 1230.837 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 106013, gadget_id = 70360001, pos = { x = 1429.014, y = 230.843, z = 1230.717 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1106009, name = "GADGET_STATE_CHANGE_106009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_106009", action = "action_EVENT_GADGET_STATE_CHANGE_106009", trigger_count = 0 },
	{ config_id = 1106010, name = "CHALLENGE_SUCCESS_106010", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_106010", trigger_count = 0 },
	{ config_id = 1106011, name = "CHALLENGE_FAIL_106011", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_106011", trigger_count = 0 },
	{ config_id = 1106012, name = "GADGET_STATE_CHANGE_106012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_106012", action = "action_EVENT_GADGET_STATE_CHANGE_106012", trigger_count = 0 },
	{ config_id = 1106014, name = "SELECT_OPTION_106014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_106014", action = "action_EVENT_SELECT_OPTION_106014", trigger_count = 0 },
	{ config_id = 1106015, name = "GADGET_CREATE_106015", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_106015", action = "action_EVENT_GADGET_CREATE_106015", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "hasFinished", value = 0, no_refresh = false }
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
		gadgets = { 106006, 106008, 106013 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_106010", "CHALLENGE_FAIL_106011", "GADGET_STATE_CHANGE_106012", "SELECT_OPTION_106014", "GADGET_CREATE_106015" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 106001, 106002, 106003, 106004, 106005 },
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

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_106009(context, evt)
	if 106006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"hasFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "hasFinished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_106009(context, evt)
	-- 添加suite2的新内容
	ScriptLib.AddExtraGroupSuite(context, 133101106, 2)
	
	-- 13号挑��?,duration内击杀kill_sum的怪物
	if 0 ~= ScriptLib.ActiveChallenge(context, 180, 13, defs.duration, defs.group_id, defs.kill_sum, 0) then
	return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_106010(context, evt)
	-- 将configid为 106006 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 106006, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 106008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 106008, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 针对当前group内变量名为 "hasFinished" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "hasFinished", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_106011(context, evt)
	-- 将configid为 106006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 106006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为106013的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 106013 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 106008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 106008, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133101106, 2)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133101106, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_106012(context, evt)
	if 106006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"hasFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "hasFinished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_106012(context, evt)
	-- 将configid为 106008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 106008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_106014(context, evt)
	-- 判断是gadgetid 106013 option_id 177
	if 106013 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_106014(context, evt)
	-- 180号挑��?,duration内击杀kill_sum的怪物
	if 0 ~= ScriptLib.ActiveChallenge(context, 180, 13, defs.duration, defs.group_id, defs.kill_sum, 0) then
	return -1
	end
	
	-- 添加suite2的新内容
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
		--永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
	if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_controller_id }) then
	return -1
	end
		
	
	-- 将configid��? 2002 的物件更改为状��? GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 106006, GadgetState.GearStart) then
	return -1
	end 
	
	return 0
	
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_106015(context, evt)
	if 106013 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_106015(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133101106, 106013, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end