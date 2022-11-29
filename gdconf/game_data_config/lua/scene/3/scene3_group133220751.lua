-- 基础信息
local base_info = {
	group_id = 133220751
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
	{ config_id = 751001, gadget_id = 70710113, pos = { x = -2470.362, y = 201.717, z = -4146.366 }, rot = { x = 8.168, y = 95.000, z = 358.249 }, level = 1, interact_id = 111, area_id = 11 },
	{ config_id = 751002, gadget_id = 70220065, pos = { x = -2464.223, y = 202.576, z = -4161.790 }, rot = { x = 0.000, y = 9.317, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 751003, gadget_id = 70220065, pos = { x = -2465.551, y = 203.472, z = -4164.784 }, rot = { x = 0.000, y = 35.654, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 751004, gadget_id = 70220065, pos = { x = -2467.297, y = 203.394, z = -4163.428 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 751005, gadget_id = 70900393, pos = { x = -2452.377, y = 201.130, z = -4155.017 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 11 },
	{ config_id = 751006, gadget_id = 70900393, pos = { x = -2455.786, y = 201.018, z = -4144.915 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 11 },
	{ config_id = 751007, gadget_id = 70310006, pos = { x = -2468.886, y = 202.364, z = -4139.811 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1751008, name = "GADGET_STATE_CHANGE_751008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_751008", action = "action_EVENT_GADGET_STATE_CHANGE_751008", trigger_count = 0 },
	{ config_id = 1751009, name = "QUEST_START_751009", event = EventType.EVENT_QUEST_START, source = "1203408", condition = "condition_EVENT_QUEST_START_751009", action = "action_EVENT_QUEST_START_751009", trigger_count = 0 },
	{ config_id = 1751010, name = "QUEST_START_751010", event = EventType.EVENT_QUEST_START, source = "1203409", condition = "", action = "action_EVENT_QUEST_START_751010", trigger_count = 0 },
	{ config_id = 1751011, name = "QUEST_START_751011", event = EventType.EVENT_QUEST_START, source = "1203410", condition = "", action = "action_EVENT_QUEST_START_751011", trigger_count = 0 }
}

-- 变量
variables = {
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
		gadgets = { 751001, 751002, 751003, 751004, 751005, 751006, 751007 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_751008", "QUEST_START_751009", "QUEST_START_751010", "QUEST_START_751011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_751008(context, evt)
	if 751001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_751008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133220751") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_751009(context, evt)
		if 751001 ~= evt.param1 then
			return false
		end
		local state =  ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1)
		if state == 201 or state == 202 then
			return true
		end
		
		return false
end

-- 触发操作
function action_EVENT_QUEST_START_751009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133220751") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_751010(context, evt)
	-- 将configid为 751001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 751001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_751011(context, evt)
	-- 将configid为 751001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 751001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end