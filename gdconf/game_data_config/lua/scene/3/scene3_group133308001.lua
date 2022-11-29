-- 基础信息
local base_info = {
	group_id = 133308001
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
	{ config_id = 1001, gadget_id = 70330333, pos = { x = -2186.258, y = 60.702, z = 4297.565 }, rot = { x = 0.000, y = 51.769, z = 0.000 }, level = 1, persistent = true, area_id = 26 },
	{ config_id = 1003, gadget_id = 70330417, pos = { x = -2186.900, y = 62.616, z = 4287.646 }, rot = { x = 0.000, y = 44.253, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 1004, gadget_id = 70360286, pos = { x = -2186.200, y = 62.350, z = 4297.653 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, isOneoff = true, persistent = true, worktop_config = { is_persistent = true, init_options = { } }, area_id = 26 },
	{ config_id = 1008, gadget_id = 70330266, pos = { x = -2186.431, y = 61.080, z = 4297.217 }, rot = { x = 0.001, y = 345.103, z = 356.745 }, level = 32, persistent = true, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1001002, name = "GADGET_STATE_CHANGE_1002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_1002", action = "action_EVENT_GADGET_STATE_CHANGE_1002", trigger_count = 0 },
	{ config_id = 1001005, name = "GADGET_CREATE_1005", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_1005", action = "action_EVENT_GADGET_CREATE_1005", trigger_count = 0 },
	{ config_id = 1001006, name = "SELECT_OPTION_1006", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_1006", action = "action_EVENT_SELECT_OPTION_1006", trigger_count = 0 },
	-- 保底
	{ config_id = 1001007, name = "GROUP_LOAD_1007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_1007", action = "action_EVENT_GROUP_LOAD_1007", trigger_count = 0 },
	{ config_id = 1001009, name = "ANY_GADGET_DIE_1009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_1009", action = "action_EVENT_ANY_GADGET_DIE_1009", trigger_count = 0 },
	{ config_id = 1001010, name = "GROUP_LOAD_1010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_1010", action = "action_EVENT_GROUP_LOAD_1010", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "Finish", value = 0, no_refresh = true },
	{ config_id = 2, name = "die", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 2,
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
		gadgets = { 1001, 1003, 1008 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_1002", "GADGET_CREATE_1005", "SELECT_OPTION_1006", "ANY_GADGET_DIE_1009", "GROUP_LOAD_1010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 1001, 1003 },
		regions = { },
		triggers = { "GROUP_LOAD_1007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_1002(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133308001, 1003) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_1002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "WQ7305217") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_1005(context, evt)
	if 1004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_1005(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133308001, 1004, {769}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_1006(context, evt)
	-- 判断是gadgetid 1004 option_id 769
	if 1004 ~= evt.param1 then
		return false	
	end
	
	if 769 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_1006(context, evt)
	-- 将本组内变量名为 "Finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "WQ7305217") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将configid为 1001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 1003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 1004 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133308001, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_1007(context, evt)
	-- 判断变量"Finish"为1
	if ScriptLib.GetGroupVariableValue(context, "Finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_1007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "WQ7305217") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将configid为 1001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 1003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_1009(context, evt)
	if 1008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_1009(context, evt)
	-- 创建id为1004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将本组内变量名为 "die" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "die", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_1010(context, evt)
	-- 判断变量"die"为1
	if ScriptLib.GetGroupVariableValue(context, "die") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_1010(context, evt)
	-- 创建id为1004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end