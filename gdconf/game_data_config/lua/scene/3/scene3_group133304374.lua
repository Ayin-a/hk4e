-- 基础信息
local base_info = {
	group_id = 133304374
}

-- Trigger变量
local defs = {
	point_camera = 374005,
	gadget_lookEntity = 374001,
	look_duration = 3
}

-- DEFS_MISCS
local CameraLookSetting = {
    blend_type = 1,
    blend_duration = 1.5,
    is_force_walk = false,
    is_allow_input = false,
    delay = 0,
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
	[374001] = { config_id = 374001, gadget_id = 70330236, pos = { x = -1343.600, y = 181.464, z = 2883.219 }, rot = { x = 16.338, y = 182.219, z = 352.546 }, level = 30, persistent = true, area_id = 21 },
	[374002] = { config_id = 374002, gadget_id = 70330236, pos = { x = -1304.306, y = 107.404, z = 2868.666 }, rot = { x = 359.975, y = 206.866, z = 359.960 }, level = 30, persistent = true, area_id = 21 },
	-- 1号门trigger 下面参数为传送后坐标
	[374003] = { config_id = 374003, gadget_id = 70290264, pos = { x = -1343.588, y = 181.383, z = 2882.241 }, rot = { x = 0.000, y = 313.090, z = 0.000 }, level = 30, area_id = 21 },
	-- 2号门trigger 下面参数为传送后坐标
	[374004] = { config_id = 374004, gadget_id = 70290264, pos = { x = -1304.781, y = 107.416, z = 2867.882 }, rot = { x = 0.000, y = 23.546, z = 0.000 }, level = 30, area_id = 21 },
	[374008] = { config_id = 374008, gadget_id = 70360001, pos = { x = -1343.716, y = 179.410, z = 2880.521 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 1号门触发
	{ config_id = 1374006, name = "GADGET_STATE_CHANGE_374006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_374006", action = "action_EVENT_GADGET_STATE_CHANGE_374006", trigger_count = 0 },
	-- 2号门触发
	{ config_id = 1374007, name = "GADGET_STATE_CHANGE_374007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_374007", action = "action_EVENT_GADGET_STATE_CHANGE_374007", trigger_count = 0 },
	-- xinzhumu
	{ config_id = 1374009, name = "GADGET_STATE_CHANGE_374009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_374009", action = "action_EVENT_GADGET_STATE_CHANGE_374009" },
	{ config_id = 1374010, name = "GROUP_LOAD_374010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_374010", action = "action_EVENT_GROUP_LOAD_374010", trigger_count = 0 }
}

-- 点位
points = {
	[374005] = { config_id = 374005, pos = { x = -1343.512, y = 182.705, z = 2874.317 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 21 }
}

-- 变量
variables = {
	{ config_id = 1, name = "first", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 3,
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
		gadgets = { 374001, 374002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_374006", "GADGET_STATE_CHANGE_374007", "GADGET_STATE_CHANGE_374009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 374001, 374002, 374003, 374004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_374006", "GADGET_STATE_CHANGE_374007", "GADGET_STATE_CHANGE_374009" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 374008 },
		regions = { },
		triggers = { "GROUP_LOAD_374010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_374006(context, evt)
	if 374001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_374006(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133304374, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 将configid为 374002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 374002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "first" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "first", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_374007(context, evt)
	if 374002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_374007(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133304374, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 将configid为 374001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 374001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "first" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "first", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_374009(context, evt)
	if 374001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"first"为0
	if ScriptLib.GetGroupVariableValue(context, "first") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_374009(context, evt)
	LF_PointLook(context)
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_374010(context, evt)
	local curQuestState = ScriptLib.GetHostQuestState(context,7306220)
	if -1 == curQuestState or 0 == curQuestState then
	  return false
	end
	if curQuestState ~= 3 then
	   return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_374010(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133304374, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "V3_0/CameraLook"