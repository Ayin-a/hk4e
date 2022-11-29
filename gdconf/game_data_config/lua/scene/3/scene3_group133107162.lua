-- 基础信息
local base_info = {
	group_id = 133107162
}

-- Trigger变量
local defs = {
	group_id = 133107162,
	gadget_riddle_hint = 162001,
	gadget_riddle_1 = 162002,
	gadget_riddle_2 = 162003,
	gadget_riddle_3 = 162004,
	gadget_riddle_4 = 162005,
	gadget_chest = 162006
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
	{ config_id = 162001, gadget_id = 70310012, pos = { x = -191.320, y = 282.732, z = 61.623 }, rot = { x = 24.676, y = 197.984, z = 0.821 }, level = 19, persistent = true, area_id = 7 },
	{ config_id = 162002, gadget_id = 70310011, pos = { x = -190.056, y = 284.936, z = 68.687 }, rot = { x = 0.000, y = 276.100, z = 0.000 }, level = 19, persistent = true, area_id = 7 },
	{ config_id = 162003, gadget_id = 70310011, pos = { x = -206.331, y = 278.808, z = 72.351 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, persistent = true, area_id = 7 },
	{ config_id = 162004, gadget_id = 70310011, pos = { x = -197.217, y = 274.436, z = 47.777 }, rot = { x = 15.178, y = 237.257, z = 22.462 }, level = 19, persistent = true, area_id = 7 },
	{ config_id = 162005, gadget_id = 70310011, pos = { x = -184.855, y = 283.714, z = 58.620 }, rot = { x = 290.101, y = 12.743, z = 70.694 }, level = 19, persistent = true, area_id = 7 },
	{ config_id = 162006, gadget_id = 70211122, pos = { x = -191.495, y = 283.094, z = 61.277 }, rot = { x = 25.519, y = 194.987, z = 1.228 }, level = 16, drop_tag = "解谜高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 },
	{ config_id = 162012, gadget_id = 70310012, pos = { x = -191.313, y = 282.368, z = 61.687 }, rot = { x = 337.610, y = 351.174, z = 9.386 }, level = 18, persistent = true, area_id = 7 },
	{ config_id = 162013, gadget_id = 70220021, pos = { x = -190.011, y = 283.038, z = 66.692 }, rot = { x = 0.000, y = 5.111, z = 0.000 }, level = 18, area_id = 7 },
	{ config_id = 162014, gadget_id = 70500000, pos = { x = -207.166, y = 278.811, z = 71.382 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, point_type = 2002, area_id = 7 },
	{ config_id = 162016, gadget_id = 70500000, pos = { x = -205.834, y = 278.983, z = 72.003 }, rot = { x = 0.000, y = 242.953, z = 0.000 }, level = 18, point_type = 2002, area_id = 7 }
}

-- 区域
regions = {
	{ config_id = 162010, shape = RegionShape.SPHERE, radius = 20, pos = { x = -182.983, y = 293.732, z = 61.124 }, area_id = 7 }
}

-- 触发器
triggers = {
	{ config_id = 1162007, name = "GADGET_STATE_CHANGE_162007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_162007", action = "action_EVENT_GADGET_STATE_CHANGE_162007", trigger_count = 0 },
	{ config_id = 1162008, name = "VARIABLE_CHANGE_162008", event = EventType.EVENT_VARIABLE_CHANGE, source = "State_Flag", condition = "condition_EVENT_VARIABLE_CHANGE_162008", action = "action_EVENT_VARIABLE_CHANGE_162008", trigger_count = 0 },
	{ config_id = 1162009, name = "GROUP_LOAD_162009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_162009", trigger_count = 0 },
	{ config_id = 1162010, name = "ENTER_REGION_162010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_162010", action = "action_EVENT_ENTER_REGION_162010", trigger_count = 0 },
	{ config_id = 1162011, name = "GADGET_STATE_CHANGE_162011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_162011", action = "action_EVENT_GADGET_STATE_CHANGE_162011", trigger_count = 0 },
	{ config_id = 1162017, name = "GROUP_LOAD_162017", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_162017", action = "action_EVENT_GROUP_LOAD_162017", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "State_Flag", value = 0, no_refresh = true },
	{ config_id = 2, name = "fin", value = 0, no_refresh = true }
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
		gadgets = { 162001, 162002, 162003, 162004, 162005, 162006, 162012, 162013, 162014, 162016 },
		regions = { 162010 },
		triggers = { "GADGET_STATE_CHANGE_162007", "VARIABLE_CHANGE_162008", "GROUP_LOAD_162009", "ENTER_REGION_162010", "GADGET_STATE_CHANGE_162011", "GROUP_LOAD_162017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_162007(context, evt)
	if evt.param2 ~= defs.gadget_riddle_1 and evt.param2 ~= defs.gadget_riddle_2 and evt.param2 ~= defs.gadget_riddle_3 and evt.param2 ~= defs.gadget_riddle_4 then
	return false 
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_162007(context, evt)
	if evt.param1 == GadgetState.GearStart then
	ScriptLib.ChangeGroupVariableValue(context, "State_Flag", 1)
	if 0 == ScriptLib.GetCurTriggerCount(context) then
	ScriptLib.MarkPlayerAction(context, 1003, 1, 1)
	end 
	elseif evt.param1 == GadgetState.Default then
	ScriptLib.ChangeGroupVariableValue(context, "State_Flag", -1)
	end
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_162008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 < 0 or evt.param1 > 4 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_162008(context, evt)
	if evt.param1 == 0 then
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_hint, GadgetState.Default)
	elseif evt.param1 == 1 then
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_hint, GadgetState.Action01)
	ScriptLib.MarkPlayerAction(context, 1003, 2, 2) 
	elseif evt.param1 == 2 then
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_hint, GadgetState.Action02)
	ScriptLib.MarkPlayerAction(context, 1003, 2, 3) 
	elseif evt.param1 == 3 then
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_hint, GadgetState.Action03)
	ScriptLib.MarkPlayerAction(context, 1003, 2, 4) 
	elseif evt.param1 == 4 then
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_hint, GadgetState.GearStart)
	ScriptLib.MarkPlayerAction(context, 1003, 3, 5) 
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_chest, GadgetState.Default)
	end
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_162009(context, evt)
	local sum = 0
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_1) == GadgetState.GearStart then
	sum = sum + 1
	end
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_2) == GadgetState.GearStart then
	sum = sum + 1
	end
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_3) == GadgetState.GearStart then
	sum = sum + 1
	end
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_4) == GadgetState.GearStart then
	sum = sum + 1
	end
	ScriptLib.SetGroupVariableValue(context, "State_Flag", sum)
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_162010(context, evt)
	if evt.param1 ~= 162010 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_162010(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "finish_133107144_zhiyin") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_162011(context, evt)
	if 162006 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_162011(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "finish_133107144") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "fin" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "fin", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_162017(context, evt)
	-- 判断变量"fin"为1
	if ScriptLib.GetGroupVariableValue(context, "fin") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_162017(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "finish_133107144") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end