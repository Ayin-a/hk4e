-- 基础信息
local base_info = {
	group_id = 166001037
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
	{ config_id = 37002, gadget_id = 70290312, pos = { x = 769.318, y = 706.172, z = 160.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 300 },
	{ config_id = 37004, gadget_id = 70290312, pos = { x = 883.546, y = 734.133, z = 246.869 }, rot = { x = 0.000, y = 340.298, z = 0.000 }, level = 32, persistent = true, area_id = 300 },
	{ config_id = 37006, gadget_id = 70290312, pos = { x = 918.607, y = 748.272, z = 323.405 }, rot = { x = 0.000, y = 192.657, z = 0.000 }, level = 32, persistent = true, area_id = 300 },
	{ config_id = 37022, gadget_id = 70220025, pos = { x = 969.563, y = 731.463, z = 220.207 }, rot = { x = 89.003, y = 233.681, z = 140.770 }, level = 36, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1037001, name = "GROUP_LOAD_37001", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_37001", action = "action_EVENT_GROUP_LOAD_37001", trigger_count = 0 },
	{ config_id = 1037013, name = "VARIABLE_CHANGE_37013", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_37013", action = "action_EVENT_VARIABLE_CHANGE_37013" },
	{ config_id = 1037014, name = "QUEST_START_37014", event = EventType.EVENT_QUEST_START, source = "7104210", condition = "condition_EVENT_QUEST_START_37014", action = "action_EVENT_QUEST_START_37014" },
	{ config_id = 1037021, name = "GADGET_STATE_CHANGE_37021", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_37021", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "Done", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1037007, name = "GADGET_STATE_CHANGE_37007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_37007", action = "action_EVENT_GADGET_STATE_CHANGE_37007", trigger_count = 0 },
		{ config_id = 1037008, name = "GADGET_STATE_CHANGE_37008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_37008", action = "action_EVENT_GADGET_STATE_CHANGE_37008", trigger_count = 0 },
		{ config_id = 1037009, name = "GADGET_STATE_CHANGE_37009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_37009", action = "action_EVENT_GADGET_STATE_CHANGE_37009", trigger_count = 0 },
		{ config_id = 1037010, name = "GADGET_STATE_CHANGE_37010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_37010", action = "action_EVENT_GADGET_STATE_CHANGE_37010", trigger_count = 0 },
		{ config_id = 1037011, name = "GADGET_STATE_CHANGE_37011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_37011", action = "action_EVENT_GADGET_STATE_CHANGE_37011", trigger_count = 0 },
		{ config_id = 1037012, name = "GADGET_STATE_CHANGE_37012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_37012", action = "action_EVENT_GADGET_STATE_CHANGE_37012", trigger_count = 0 },
		{ config_id = 1037015, name = "GADGET_STATE_CHANGE_37015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_37015", action = "action_EVENT_GADGET_STATE_CHANGE_37015", trigger_count = 0 },
		{ config_id = 1037016, name = "GADGET_STATE_CHANGE_37016", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_37016", action = "action_EVENT_GADGET_STATE_CHANGE_37016", trigger_count = 0 },
		{ config_id = 1037017, name = "GADGET_STATE_CHANGE_37017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_37017", action = "action_EVENT_GADGET_STATE_CHANGE_37017", trigger_count = 0 },
		{ config_id = 1037018, name = "GADGET_STATE_CHANGE_37018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_37018", action = "action_EVENT_GADGET_STATE_CHANGE_37018", trigger_count = 0 },
		{ config_id = 1037019, name = "GADGET_STATE_CHANGE_37019", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_37019", action = "action_EVENT_GADGET_STATE_CHANGE_37019", trigger_count = 0 },
		{ config_id = 1037020, name = "GADGET_STATE_CHANGE_37020", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_37020", action = "action_EVENT_GADGET_STATE_CHANGE_37020", trigger_count = 0 }
	}
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
		gadgets = { 37002, 37004, 37006, 37022 },
		regions = { },
		triggers = { "GROUP_LOAD_37001", "VARIABLE_CHANGE_37013", "QUEST_START_37014", "GADGET_STATE_CHANGE_37021" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GROUP_LOAD_37001(context, evt)
	-- 判断变量"Done"为3
	if ScriptLib.GetGroupVariableValue(context, "Done") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_37001(context, evt)
	-- 将configid为 37002 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 37002, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 37004 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 37004, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 37006 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 37006, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_37013(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Done"为3
	if ScriptLib.GetGroupVariableValue(context, "Done") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_37013(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "166001037") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 166001249, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将configid为 37002 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 37002, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 37004 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 37004, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 37006 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 37006, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_37014(context, evt)
	-- 判断变量"Done"为3
	if ScriptLib.GetGroupVariableValue(context, "Done") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_37014(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "166001037") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_37021(context, evt)
	if ScriptLib.GetGadgetStateByConfigId(context, 166001037, 37002) == GadgetState.GearAction1 and  ScriptLib.GetGadgetStateByConfigId(context, 166001037, 37004) == GadgetState.GearStart and ScriptLib.GetGadgetStateByConfigId(context, 166001037, 37006) == GadgetState.GearStart
	
	then
		 ScriptLib.SetGroupVariableValue(context, "Done", 3)
	
	end
	
	return 0
end