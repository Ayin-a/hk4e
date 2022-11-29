-- 基础信息
local base_info = {
	group_id = 166001038
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
	{ config_id = 38001, gadget_id = 70290343, pos = { x = 756.556, y = 707.602, z = 219.916 }, rot = { x = 0.000, y = 324.292, z = 0.000 }, level = 32, persistent = true, server_global_value_config = { ["SGV_GeoBombCannon_Active"]= 0}, area_id = 300 },
	{ config_id = 38002, gadget_id = 70290395, pos = { x = 712.375, y = 708.948, z = 276.911 }, rot = { x = 0.079, y = 66.314, z = 5.413 }, level = 32, isOneoff = true, persistent = true, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1038003, name = "ANY_GADGET_DIE_38003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_38003", action = "action_EVENT_ANY_GADGET_DIE_38003", trigger_count = 0 },
	{ config_id = 1038004, name = "QUEST_FINISH_38004", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "", action = "action_EVENT_QUEST_FINISH_38004", trigger_count = 0 },
	{ config_id = 1038005, name = "GROUP_LOAD_38005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_38005", action = "action_EVENT_GROUP_LOAD_38005", trigger_count = 0 },
	{ config_id = 1038006, name = "GROUP_LOAD_38006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_38006" },
	{ config_id = 1038007, name = "GROUP_LOAD_38007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_38007", action = "action_EVENT_GROUP_LOAD_38007", trigger_count = 0 },
	{ config_id = 1038008, name = "QUEST_START_38008", event = EventType.EVENT_QUEST_START, source = "7104211", condition = "condition_EVENT_QUEST_START_38008", action = "action_EVENT_QUEST_START_38008", trigger_count = 0 },
	{ config_id = 1038009, name = "ANY_GADGET_DIE_38009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_38009", action = "action_EVENT_ANY_GADGET_DIE_38009", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "done", value = 0, no_refresh = true },
	{ config_id = 2, name = "stone", value = 0, no_refresh = true }
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
		-- description = ,
		monsters = { },
		gadgets = { 38001, 38002 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_38003", "QUEST_FINISH_38004", "GROUP_LOAD_38005", "GROUP_LOAD_38006", "GROUP_LOAD_38007", "QUEST_START_38008", "ANY_GADGET_DIE_38009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_38003(context, evt)
	if 38002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_38003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "166001038") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "stone" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "stone", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_38004(context, evt)
	ScriptLib.SetEntityServerGlobalValueByConfigId(context, 38001, "SGV_GeoBombCannon_Active" , 1)
	ScriptLib.SetGroupVariableValue(context, "done", 1)
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_38005(context, evt)
	-- 判断变量"done"为1
	if ScriptLib.GetGroupVariableValue(context, "done") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_38005(context, evt)
	ScriptLib.SetEntityServerGlobalValueByConfigId(context, 38001, "SGV_GeoBombCannon_Active" , 1)
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_38006(context, evt)
	-- 将configid为 38001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 38001, 0204) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_38007(context, evt)
	-- 判断变量"stone"为1
	if ScriptLib.GetGroupVariableValue(context, "stone") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_38007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "166001038") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 166001568, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_38008(context, evt)
	-- 判断变量"stone"为1
	if ScriptLib.GetGroupVariableValue(context, "stone") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_38008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "166001038") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_38009(context, evt)
	if 38002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_38009(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 166001568, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end