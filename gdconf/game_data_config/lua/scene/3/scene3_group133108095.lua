-- 基础信息
local base_info = {
	group_id = 133108095
}

-- Trigger变量
local defs = {
	duration = 180,
	kill_sum = 5,
	group_id = 133108095,
	gadget_controller_id = 95013
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 95001, monster_id = 21010601, pos = { x = -103.672, y = 257.997, z = -194.119 }, rot = { x = 0.000, y = 211.661, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 32, area_id = 7 },
	{ config_id = 95002, monster_id = 21010601, pos = { x = -114.129, y = 257.855, z = -210.845 }, rot = { x = 0.000, y = 43.432, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 32, area_id = 7 },
	{ config_id = 95003, monster_id = 21010601, pos = { x = -113.036, y = 258.143, z = -196.223 }, rot = { x = 0.000, y = 146.080, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 7 },
	{ config_id = 95004, monster_id = 21010601, pos = { x = -100.072, y = 258.934, z = -202.451 }, rot = { x = 0.000, y = 266.348, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 32, area_id = 7 },
	{ config_id = 95005, monster_id = 20011301, pos = { x = -110.375, y = 258.125, z = -194.914 }, rot = { x = 0.000, y = 174.006, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 95006, gadget_id = 70350082, pos = { x = -107.561, y = 258.627, z = -202.600 }, rot = { x = 0.000, y = 62.784, z = 0.000 }, level = 1, persistent = true, area_id = 7 },
	{ config_id = 95007, gadget_id = 70300118, pos = { x = -107.559, y = 260.593, z = -202.604 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 95008, gadget_id = 70330012, pos = { x = -107.568, y = 259.244, z = -202.474 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 95013, gadget_id = 70360001, pos = { x = -107.561, y = 258.627, z = -202.600 }, rot = { x = 0.000, y = 62.784, z = 0.000 }, level = 1, persistent = true, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1095009, name = "GADGET_STATE_CHANGE_95009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_95009", action = "action_EVENT_GADGET_STATE_CHANGE_95009", trigger_count = 0 },
	{ config_id = 1095010, name = "CHALLENGE_SUCCESS_95010", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_95010", trigger_count = 0 },
	{ config_id = 1095011, name = "CHALLENGE_FAIL_95011", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_95011", trigger_count = 0 },
	{ config_id = 1095012, name = "GADGET_STATE_CHANGE_95012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_95012", action = "action_EVENT_GADGET_STATE_CHANGE_95012", trigger_count = 0 },
	{ config_id = 1095014, name = "GADGET_CREATE_95014", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_95014", action = "action_EVENT_GADGET_CREATE_95014", trigger_count = 0 },
	{ config_id = 1095015, name = "SELECT_OPTION_95015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_95015", action = "action_EVENT_SELECT_OPTION_95015", trigger_count = 0 }
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
		gadgets = { 95006, 95008, 95013 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_95010", "CHALLENGE_FAIL_95011", "GADGET_STATE_CHANGE_95012", "GADGET_CREATE_95014", "SELECT_OPTION_95015" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 95001, 95002, 95003, 95004, 95005 },
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
function condition_EVENT_GADGET_STATE_CHANGE_95009(context, evt)
	if 95006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"hasFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "hasFinished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_95009(context, evt)
	-- 添加suite2的新内容
	ScriptLib.AddExtraGroupSuite(context, 133108095, 2)
	
	-- 13号挑��?,duration内击杀kill_sum的怪物
	if 0 ~= ScriptLib.ActiveChallenge(context, 180, 13, defs.duration, defs.group_id, defs.kill_sum, 0) then
	return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_95010(context, evt)
	-- 将configid为 95006 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 95006, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 95008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 95008, GadgetState.Default) then
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
function action_EVENT_CHALLENGE_FAIL_95011(context, evt)
	-- 将configid为 95006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 95006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为95013的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 95013 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 95008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 95008, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133108095, 2)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133108095, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_95012(context, evt)
	if 95006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"hasFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "hasFinished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_95012(context, evt)
	-- 将configid为 95008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 95008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_95014(context, evt)
	if 95013 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_95014(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133108095, 95013, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_95015(context, evt)
	-- 判断是gadgetid 95013 option_id 177
	if 95013 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_95015(context, evt)
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
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 95006, GadgetState.GearStart) then
	return -1
	end 
	
	return 0
	
end