-- 基础信息
local base_info = {
	group_id = 220142006
}

-- DEFS_MISCS
local        defs = {

                --本Group中发射器gadget的configID，最多3个,
                fireMachineList = {
                        6001
                },

                --key为发射器configID，value为ColorDefine
                initConfig = {
                        [6001] = 1,
                },

                --Key为操作台。value为发射器。允许有多个操作台控制同一个发射器
                controlRelation = {
                },

                --左右旋转的SelectOptionID
                selectID_horizon = 613,

                --上下俯仰的SelectOptionID
                selectID_vertical = 612,

                --定义左右旋转的步长,key为传递装置configID，value为GadgetState
                horizon_steps = {
                        [6002] = {0, 102, 103, 104},
 	        [6005] = {0, 102, 103, 104},
 	        [6006] = {0, 102, 103, 104},
 	        [6013] = {0, 102, 103, 104},
                },

                --定义上下俯仰的步长,key为传递装置configID，value为GadgetState
                vertical_steps = {
                        [6002] = {0, 302, 303, 304, 305},
 	        [6005] = {0, 302, 303, 304, 305},
 	        [6006] = {0, 302, 303, 304, 305},
	        [6013] = {0, 302, 303, 304, 305},
                },

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
	{ config_id = 6001, gadget_id = 70310158, pos = { x = 80.234, y = 4.785, z = 50.689 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 6002, gadget_id = 70310159, pos = { x = 106.359, y = 4.718, z = 50.029 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 613 } } },
	{ config_id = 6003, gadget_id = 70211111, pos = { x = 116.730, y = 4.669, z = 57.418 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 16, drop_tag = "解谜中级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, autopick = true },
	{ config_id = 6004, gadget_id = 70310188, pos = { x = 116.669, y = 4.718, z = 57.418 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, isOneoff = true, persistent = true },
	{ config_id = 6005, gadget_id = 70310159, pos = { x = 109.672, y = 4.718, z = 53.081 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 613 } } },
	{ config_id = 6006, gadget_id = 70310159, pos = { x = 109.672, y = 4.718, z = 47.505 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 613 } } },
	{ config_id = 6011, gadget_id = 70310164, pos = { x = 134.621, y = 7.642, z = 50.114 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 6012, gadget_id = 70310386, pos = { x = 134.746, y = 7.952, z = 50.114 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 6013, gadget_id = 70310159, pos = { x = 116.438, y = 4.718, z = 47.505 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 613 } } }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1006007, name = "GADGET_STATE_CHANGE_6007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_6007", action = "action_EVENT_GADGET_STATE_CHANGE_6007", trigger_count = 0 },
	{ config_id = 1006008, name = "ANY_GADGET_DIE_6008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_6008", action = "action_EVENT_ANY_GADGET_DIE_6008", trigger_count = 0 },
	{ config_id = 1006009, name = "TIME_AXIS_PASS_6009", event = EventType.EVENT_TIME_AXIS_PASS, source = "stone", condition = "condition_EVENT_TIME_AXIS_PASS_6009", action = "action_EVENT_TIME_AXIS_PASS_6009", trigger_count = 0 },
	{ config_id = 1006010, name = "ANY_GADGET_DIE_6010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_6010", action = "action_EVENT_ANY_GADGET_DIE_6010", trigger_count = 0 },
	{ config_id = 1006014, name = "VARIABLE_CHANGE_6014", event = EventType.EVENT_VARIABLE_CHANGE, source = "stone", condition = "", action = "action_EVENT_VARIABLE_CHANGE_6014", trigger_count = 0 },
	{ config_id = 1006015, name = "LEVEL_TAG_CHANGE_6015", event = EventType.EVENT_LEVEL_TAG_CHANGE, source = "", condition = "", action = "action_EVENT_LEVEL_TAG_CHANGE_6015", trigger_count = 0 },
	{ config_id = 1006016, name = "GROUP_LOAD_6016", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_6016", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "stone", value = 0, no_refresh = true },
	{ config_id = 2, name = "chest", value = 0, no_refresh = true }
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
		gadgets = { 6001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_6007", "ANY_GADGET_DIE_6008", "TIME_AXIS_PASS_6009", "ANY_GADGET_DIE_6010", "VARIABLE_CHANGE_6014", "LEVEL_TAG_CHANGE_6015", "GROUP_LOAD_6016" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 6002, 6003, 6004, 6005, 6006, 6013 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 6011, 6012 },
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
function condition_EVENT_GADGET_STATE_CHANGE_6007(context, evt)
	-- 检测config_id为6011的gadget是否从GadgetState.Default变为GadgetState.GearStop
	if 6011 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_6007(context, evt)
	-- 将本组内变量名为 "stone" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "stone", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建标识为"stone"，时间节点为{30}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "stone", {30}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_6008(context, evt)
	if 6004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_6008(context, evt)
	-- 将本组内变量名为 "chest" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "chest", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 6003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 6003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_6009(context, evt)
	if "stone" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_6009(context, evt)
	-- 将本组内变量名为 "stone" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "stone", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_6010(context, evt)
	if 6012 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_6010(context, evt)
	-- 将本组内变量名为 "stone" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "stone", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 6011 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 6011, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_6014(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	if ScriptLib.GetGroupVariableValue(context, "stone") == 1 and ScriptLib.CheckSceneTag(context, 20142,1053 ) then
		ScriptLib.SetGadgetStateByConfigId(context,6011, GadgetState.Default)
	end
	
	return 0
end

-- 触发操作
function action_EVENT_LEVEL_TAG_CHANGE_6015(context, evt)
	if ScriptLib.CheckSceneTag(context, 20142,1053 ) then
		ScriptLib.AddExtraGroupSuite(context, 0, 3)
		
		if ScriptLib.GetGroupVariableValue(context, "stone") == 0 then
			ScriptLib.SetGadgetStateByConfigId(context,6011, GadgetState.ChestLocked)
		end
		
		if ScriptLib.GetGroupVariableValue(context, "stone") == 1 then
			ScriptLib.SetGadgetStateByConfigId(context,6011, GadgetState.Default)
		end
		
		if ScriptLib.GetGroupVariableValue(context, "stone") == 2 then
			ScriptLib.SetGadgetStateByConfigId(context,6011, GadgetState.GearStop)
		end
	else
		ScriptLib.RemoveExtraGroupSuite(context, 220142006, 3)
	end
	
	if ScriptLib.CheckSceneTag(context, 20142,1054 ) then
		ScriptLib.AddExtraGroupSuite(context, 0, 2)
		
		if ScriptLib.GetGroupVariableValue(context, "chest") == 0 then
			ScriptLib.SetGadgetStateByConfigId(context,6003, GadgetState.ChestLocked)
		end
		
		if ScriptLib.GetGroupVariableValue(context, "chest") == 1 then
			ScriptLib.SetGadgetStateByConfigId(context,6003, GadgetState.Default)
		end
	else
		ScriptLib.RemoveExtraGroupSuite(context, 220142006, 2)
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_6016(context, evt)
	if ScriptLib.CheckSceneTag(context, 20142,1053 ) then
		ScriptLib.AddExtraGroupSuite(context, 0, 3)
		
		if ScriptLib.GetGroupVariableValue(context, "stone") == 0 then
			ScriptLib.SetGadgetStateByConfigId(context,6011, GadgetState.ChestLocked)
		end
		
		if ScriptLib.GetGroupVariableValue(context, "stone") == 1 then
			ScriptLib.SetGadgetStateByConfigId(context,6011, GadgetState.Default)
		end
		
		if ScriptLib.GetGroupVariableValue(context, "stone") == 2 then
			ScriptLib.SetGroupVariableValue(context, "stone", 1)
			
			ScriptLib.SetGadgetStateByConfigId(context,6011, GadgetState.Default)
		end
	end
	
	if ScriptLib.CheckSceneTag(context, 20142,1054 ) then
		ScriptLib.AddExtraGroupSuite(context, 0, 2)
		
		if ScriptLib.GetGroupVariableValue(context, "chest") == 0 then
			ScriptLib.SetGadgetStateByConfigId(context,6003, GadgetState.ChestLocked)
		end
		
		if ScriptLib.GetGroupVariableValue(context, "chest") == 1 then
			ScriptLib.SetGadgetStateByConfigId(context,6003, GadgetState.Default)
		end
	end
	
	return 0
end

require "V2_8/FireMachineColorHandle"