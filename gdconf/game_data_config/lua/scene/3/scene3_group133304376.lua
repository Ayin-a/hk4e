-- 基础信息
local base_info = {
	group_id = 133304376
}

-- Trigger变量
local defs = {
	point_camera = 376006,
	gadget_lookEntity = 376001,
	look_duration = 3
}

-- DEFS_MISCS
local CameraLookSetting = {
    blend_type = 1,
    blend_duration = 1.5,
    is_force_walk = false,
    is_allow_input = true,
    delay = 1,

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
	[376001] = { config_id = 376001, gadget_id = 70310256, pos = { x = -1653.946, y = 162.470, z = 2705.582 }, rot = { x = 0.000, y = 90.345, z = 0.000 }, level = 30, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1376002, name = "VARIABLE_CHANGE_376002", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_376002", action = "action_EVENT_VARIABLE_CHANGE_376002", trigger_count = 0 },
	{ config_id = 1376003, name = "VARIABLE_CHANGE_376003", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_376003", action = "action_EVENT_VARIABLE_CHANGE_376003", trigger_count = 0 },
	{ config_id = 1376004, name = "QUEST_FINISH_376004", event = EventType.EVENT_QUEST_FINISH, source = "7302712", condition = "", action = "action_EVENT_QUEST_FINISH_376004", trigger_count = 0 },
	{ config_id = 1376005, name = "QUEST_FINISH_376005", event = EventType.EVENT_QUEST_FINISH, source = "7306228", condition = "", action = "action_EVENT_QUEST_FINISH_376005", trigger_count = 0 }
}

-- 点位
points = {
	[376006] = { config_id = 376006, pos = { x = -1652.603, y = 171.318, z = 2721.838 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 21 }
}

-- 变量
variables = {
	{ config_id = 1, name = "state", value = 0, no_refresh = false }
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
		gadgets = { 376001 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_376002", "VARIABLE_CHANGE_376003", "QUEST_FINISH_376004", "QUEST_FINISH_376005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_376002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"state"为1
	if ScriptLib.GetGroupVariableValue(context, "state") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_376002(context, evt)
	-- 将configid为 376001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 376001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_376003(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"state"为2
	if ScriptLib.GetGroupVariableValue(context, "state") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_376003(context, evt)
	-- 将configid为 376001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 376001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_376004(context, evt)
	-- 将本组内变量名为 "state" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "state", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_376005(context, evt)
	-- 将本组内变量名为 "state" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "state", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	LF_PointLook(context)
	return 0
end

require "V3_0/CameraLook"