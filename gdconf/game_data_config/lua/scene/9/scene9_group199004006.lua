-- 基础信息
local base_info = {
	group_id = 199004006
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
	{ config_id = 6001, gadget_id = 70310329, pos = { x = -357.674, y = 161.960, z = -615.598 }, rot = { x = 358.003, y = 196.280, z = 354.841 }, level = 18, persistent = true, area_id = 400 },
	{ config_id = 6005, gadget_id = 70360006, pos = { x = -352.060, y = 161.696, z = -610.119 }, rot = { x = 351.235, y = 197.648, z = 349.944 }, level = 18, area_id = 400 },
	{ config_id = 6007, gadget_id = 70360006, pos = { x = -350.717, y = 162.387, z = -615.419 }, rot = { x = 0.000, y = 196.100, z = 0.000 }, level = 18, area_id = 400 },
	{ config_id = 6009, gadget_id = 70710778, pos = { x = -357.607, y = 162.115, z = -615.410 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 400 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1006003, name = "QUEST_FINISH_6003", event = EventType.EVENT_QUEST_FINISH, source = "7902529", condition = "", action = "action_EVENT_QUEST_FINISH_6003" },
	{ config_id = 1006004, name = "GADGET_STATE_CHANGE_6004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_6004", trigger_count = 0 },
	{ config_id = 1006006, name = "QUEST_FINISH_6006", event = EventType.EVENT_QUEST_FINISH, source = "7902529", condition = "", action = "action_EVENT_QUEST_FINISH_6006", trigger_count = 0 },
	{ config_id = 1006008, name = "QUEST_FINISH_6008", event = EventType.EVENT_QUEST_FINISH, source = "7902528", condition = "", action = "action_EVENT_QUEST_FINISH_6008", trigger_count = 0 },
	{ config_id = 1006010, name = "GROUP_LOAD_6010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_6010", action = "action_EVENT_GROUP_LOAD_6010", trigger_count = 0 },
	{ config_id = 1006011, name = "QUEST_START_6011", event = EventType.EVENT_QUEST_START, source = "7902529", condition = "condition_EVENT_QUEST_START_6011", action = "action_EVENT_QUEST_START_6011", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "temp", value = 0, no_refresh = true }
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
		gadgets = { 6001, 6005, 6007 },
		regions = { },
		triggers = { "QUEST_FINISH_6003", "GADGET_STATE_CHANGE_6004", "QUEST_FINISH_6006", "QUEST_FINISH_6008", "GROUP_LOAD_6010", "QUEST_START_6011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_6003(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 199004006, EntityType.GADGET, 6009 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_6004(context, evt)
	if ScriptLib.GetGadgetStateByConfigId(context, 0, 6001) == 201 and ScriptLib.GetGadgetStateByConfigId(context, 0, 6007) == 201 and ScriptLib.GetGadgetStateByConfigId(context, 0, 6005) == 201 then
		ScriptLib.SetGroupVariableValueByGroup(context, "temp", 1, 199004050)
		
		ScriptLib.SetGroupVariableValue(context, "temp", 2)
		
		ScriptLib.SetGadgetStateByConfigId(context,6005, GadgetState.GearAction2)
		
		ScriptLib.SetGadgetStateByConfigId(context,6007, GadgetState.GearAction2)
		
		ScriptLib.AddQuestProgress(context, "Q7902529finish")
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_6006(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 199004006, EntityType.GADGET, 6009 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_6008(context, evt)
	-- 将本组内变量名为 "temp" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "temp", 1, 199004006) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将configid为 6001 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 6001, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为6009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 6009 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_6010(context, evt)
	-- 判断变量"temp"为1
	if ScriptLib.GetGroupVariableValue(context, "temp") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_6010(context, evt)
	-- 创建id为6009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 6009 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_6011(context, evt)
	-- 判断变量"temp"为2
	if ScriptLib.GetGroupVariableValue(context, "temp") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_6011(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7902529finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end