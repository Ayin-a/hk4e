-- 基础信息
local base_info = {
	group_id = 133310015
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
	{ config_id = 15001, gadget_id = 70330259, pos = { x = -2982.271, y = 21.100, z = 4436.112 }, rot = { x = 5.451, y = 72.541, z = 0.811 }, level = 32, state = GadgetState.Action01, persistent = true, area_id = 28 },
	{ config_id = 15003, gadget_id = 70330259, pos = { x = -2973.765, y = 27.835, z = 4441.878 }, rot = { x = 0.000, y = 287.875, z = 0.000 }, level = 32, state = GadgetState.Action01, persistent = true, area_id = 28 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1015002, name = "ANY_GADGET_DIE_15002", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_15002", action = "action_EVENT_ANY_GADGET_DIE_15002", trigger_count = 0 },
	{ config_id = 1015004, name = "GROUP_LOAD_15004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_15004", action = "action_EVENT_GROUP_LOAD_15004", trigger_count = 0 },
	{ config_id = 1015005, name = "QUEST_START_15005", event = EventType.EVENT_QUEST_START, source = "7308403", condition = "", action = "action_EVENT_QUEST_START_15005", trigger_count = 0 }
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
		gadgets = { 15001, 15003 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_15002", "GROUP_LOAD_15004", "QUEST_START_15005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_15002(context, evt)
	if 15001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_15002(context, evt)
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "WQ7308403") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 杀死Group内所有gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133310015, kill_policy = GroupKillPolicy.GROUP_KILL_GADGET }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_gadget_by_group")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_15004(context, evt)
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_15004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "WQ7308403") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 杀死Group内所有gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133310015, kill_policy = GroupKillPolicy.GROUP_KILL_GADGET }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_gadget_by_group")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_15005(context, evt)
	-- 将configid为 15001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 15001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 15003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 15003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end