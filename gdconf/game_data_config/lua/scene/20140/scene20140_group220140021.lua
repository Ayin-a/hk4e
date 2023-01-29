-- 基础信息
local base_info = {
	group_id = 220140021
}

-- DEFS_MISCS
local        defs = {

                --本Group中发射器gadget的configID，最多3个,
                fireMachineList = {
                        21002
                },

                --key为发射器configID，value为ColorDefine
                initConfig = {
                        [21002] = 1,
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
                },

                --定义上下俯仰的步长,key为传递装置configID，value为GadgetState
                vertical_steps = {
 	        
                },
              serve_items = {21003,21004}
        }

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 21021, monster_id = 25100101, pos = { x = 113.756, y = 85.400, z = 756.963 }, rot = { x = 0.000, y = 110.030, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 21002, gadget_id = 70310158, pos = { x = 126.963, y = 85.398, z = 676.801 }, rot = { x = 0.000, y = 341.424, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 21003, gadget_id = 70290374, pos = { x = 125.038, y = 85.424, z = 681.689 }, rot = { x = 0.000, y = 341.424, z = 0.000 }, level = 1, state = GadgetState.ChestLocked, isOneoff = true },
	{ config_id = 21004, gadget_id = 70290374, pos = { x = 123.243, y = 85.398, z = 687.447 }, rot = { x = 0.000, y = 341.424, z = 0.000 }, level = 1, state = GadgetState.ChestLocked, isOneoff = true },
	{ config_id = 21005, gadget_id = 70310188, pos = { x = 125.052, y = 86.289, z = 681.614 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, isOneoff = true, persistent = true },
	{ config_id = 21006, gadget_id = 70310188, pos = { x = 123.227, y = 86.257, z = 687.323 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStop, isOneoff = true, persistent = true },
	{ config_id = 21007, gadget_id = 70360001, pos = { x = 126.963, y = 85.398, z = 676.801 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 602 } } },
	{ config_id = 21008, gadget_id = 70380298, pos = { x = 151.380, y = 85.000, z = 696.573 }, rot = { x = 0.000, y = 340.741, z = 0.000 }, level = 1 },
	{ config_id = 21013, gadget_id = 70290373, pos = { x = 107.996, y = 85.400, z = 765.950 }, rot = { x = 0.000, y = 125.525, z = 0.000 }, level = 1, state = GadgetState.ChestLocked, persistent = true },
	{ config_id = 21014, gadget_id = 70211101, pos = { x = 121.422, y = 85.398, z = 693.287 }, rot = { x = 0.000, y = 161.000, z = 0.000 }, level = 16, drop_tag = "解谜低级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 21015, gadget_id = 70310188, pos = { x = 121.300, y = 85.942, z = 692.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 21017, gadget_id = 70290373, pos = { x = 103.451, y = 85.443, z = 759.472 }, rot = { x = 0.000, y = 125.885, z = 0.000 }, level = 1, state = GadgetState.ChestLocked, persistent = true },
	{ config_id = 21019, gadget_id = 70310386, pos = { x = 108.006, y = 85.912, z = 766.006 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 21020, gadget_id = 70310386, pos = { x = 103.529, y = 86.086, z = 759.515 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 21025, gadget_id = 70380298, pos = { x = 109.150, y = 85.910, z = 766.070 }, rot = { x = 0.000, y = 33.295, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 21037, gadget_id = 70710520, pos = { x = 98.973, y = 85.496, z = 754.247 }, rot = { x = 0.000, y = 164.542, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1021001, name = "GROUP_LOAD_21001", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_21001", action = "action_EVENT_GROUP_LOAD_21001", trigger_count = 0 },
	{ config_id = 1021009, name = "TIME_AXIS_PASS_21009", event = EventType.EVENT_TIME_AXIS_PASS, source = "fire", condition = "condition_EVENT_TIME_AXIS_PASS_21009", action = "action_EVENT_TIME_AXIS_PASS_21009" },
	{ config_id = 1021010, name = "TIME_AXIS_PASS_21010", event = EventType.EVENT_TIME_AXIS_PASS, source = "fire", condition = "condition_EVENT_TIME_AXIS_PASS_21010", action = "action_EVENT_TIME_AXIS_PASS_21010" },
	{ config_id = 1021011, name = "SELECT_OPTION_21011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_21011", action = "action_EVENT_SELECT_OPTION_21011" },
	{ config_id = 1021012, name = "GROUP_LOAD_21012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_21012", trigger_count = 0 },
	{ config_id = 1021016, name = "TIME_AXIS_PASS_21016", event = EventType.EVENT_TIME_AXIS_PASS, source = "fire", condition = "condition_EVENT_TIME_AXIS_PASS_21016", action = "action_EVENT_TIME_AXIS_PASS_21016" },
	{ config_id = 1021018, name = "VARIABLE_CHANGE_21018", event = EventType.EVENT_VARIABLE_CHANGE, source = "fire", condition = "condition_EVENT_VARIABLE_CHANGE_21018", action = "action_EVENT_VARIABLE_CHANGE_21018", trigger_count = 0 },
	{ config_id = 1021022, name = "GROUP_LOAD_21022", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_21022", trigger_count = 0 },
	{ config_id = 1021023, name = "ANY_MONSTER_DIE_21023", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_21023", action = "action_EVENT_ANY_MONSTER_DIE_21023", trigger_count = 0 },
	{ config_id = 1021024, name = "GADGET_STATE_CHANGE_21024", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_21024", trigger_count = 0 },
	{ config_id = 1021026, name = "GROUP_LOAD_21026", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_21026", trigger_count = 0 },
	{ config_id = 1021027, name = "GROUP_LOAD_21027", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_21027", trigger_count = 0 },
	-- 4006717 任务保底
	{ config_id = 1021028, name = "QUEST_START_21028", event = EventType.EVENT_QUEST_START, source = "4006717", condition = "condition_EVENT_QUEST_START_21028", action = "action_EVENT_QUEST_START_21028", trigger_count = 0 },
	-- 4006717 任务保底
	{ config_id = 1021029, name = "GROUP_LOAD_21029", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_21029", action = "action_EVENT_GROUP_LOAD_21029", trigger_count = 0 },
	{ config_id = 1021030, name = "GROUP_LOAD_21030", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_21030", trigger_count = 0 },
	{ config_id = 1021031, name = "GROUP_LOAD_21031", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_21031", trigger_count = 0 },
	{ config_id = 1021032, name = "GROUP_LOAD_21032", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_21032", trigger_count = 0 },
	{ config_id = 1021033, name = "ANY_MONSTER_DIE_21033", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_21033", action = "action_EVENT_ANY_MONSTER_DIE_21033", trigger_count = 0 },
	{ config_id = 1021034, name = "GROUP_LOAD_21034", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_21034", trigger_count = 0 },
	{ config_id = 1021035, name = "GROUP_LOAD_21035", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_21035", trigger_count = 0 },
	{ config_id = 1021036, name = "GROUP_LOAD_21036", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_21036", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "temp", value = 0, no_refresh = true },
	{ config_id = 2, name = "fire", value = 0, no_refresh = true },
	{ config_id = 3, name = "isLock_1", value = 1, no_refresh = true },
	{ config_id = 4, name = "isLock_2", value = 1, no_refresh = true },
	{ config_id = 5, name = "monster", value = 0, no_refresh = true }
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
		gadgets = { 21008, 21013, 21017, 21019, 21020, 21037 },
		regions = { },
		triggers = { "GROUP_LOAD_21001", "GROUP_LOAD_21012", "VARIABLE_CHANGE_21018", "GROUP_LOAD_21022", "GADGET_STATE_CHANGE_21024", "GROUP_LOAD_21026", "GROUP_LOAD_21027", "QUEST_START_21028", "GROUP_LOAD_21029", "GROUP_LOAD_21030", "GROUP_LOAD_21031", "GROUP_LOAD_21032", "GROUP_LOAD_21034", "GROUP_LOAD_21035", "GROUP_LOAD_21036" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 21002, 21003, 21004, 21005, 21006, 21014, 21015 },
		regions = { },
		triggers = { "TIME_AXIS_PASS_21009", "TIME_AXIS_PASS_21010", "SELECT_OPTION_21011", "TIME_AXIS_PASS_21016" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 21021 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_21023", "ANY_MONSTER_DIE_21033" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GROUP_LOAD_21001(context, evt)
	-- 判断变量"monster"为1
	if ScriptLib.GetGroupVariableValue(context, "monster") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_21001(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220140021, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_21009(context, evt)
	if "fire" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_21009(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 21005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 21003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 21003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_21010(context, evt)
	if "fire" ~= evt.source_name or 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_21010(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 21006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 21004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 21004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_21011(context, evt)
	-- 判断是gadgetid 21007 option_id 602
	if 21007 ~= evt.param1 then
		return false	
	end
	
	if 602 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_21011(context, evt)
	-- 将本组内变量名为 "temp" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "temp", 2, 220140013) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "plat" 的变量设置为 12
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "plat", 12, 220140004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "temp" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "temp", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "monster" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monster", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "isLock_1" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isLock_1", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "isLock_2" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isLock_2", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建标识为"fire"，时间节点为{1,2,3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "fire", {1,2,3}, false)
	
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220140021, 3)
	
	-- 触发镜头注目，注目位置为坐标{x=125, y=86.5, z=681.6}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=125, y=86.5, z=681.6}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220140021, EntityType.GADGET, 21007 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_21012(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "temp") == 1 or ScriptLib.GetGroupVariableValue(context, "temp") == 2 then
		ScriptLib.AddExtraGroupSuite(context, 0, 2)
		
		if ScriptLib.GetGroupVariableValue(context, "fire") == 1 and ScriptLib.GetGroupVariableValue(context, "temp") == 1 then
			ScriptLib.CreateGadget(context, {config_id=21007})
		end
		
		if ScriptLib.GetGroupVariableValue(context, "temp") == 2 then
			ScriptLib.SetGadgetStateByConfigId(context,21014, GadgetState.Default)
		end
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_21016(context, evt)
	if "fire" ~= evt.source_name or 3 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_21016(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 21015 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 21014 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 21014, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_21018(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"fire"为1
	if ScriptLib.GetGroupVariableValue(context, "fire") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_21018(context, evt)
	-- 创建id为21007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 21007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_21022(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "temp") == 2 then
		ScriptLib.KillEntityByConfigId(context, {group_id=220140021, config_id=21005, entity_type=EntityType.GADGET})
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_21023(context, evt)
	if 21021 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_21023(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 21020 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_21024(context, evt)
	if ScriptLib.GetGadgetStateByConfigId(context, 0, 21013) == 201 and ScriptLib.GetGadgetStateByConfigId(context, 0, 21017) == 201 and ScriptLib.GetGroupVariableValue(context, "monster") == 2 then
		ScriptLib.SetGroupVariableValueByGroup(context, "plat", 14, 220140004)
		
		ScriptLib.SetGroupVariableValue(context, "monster", 3)
		
		ScriptLib.AddQuestProgress(context, "4006717")
		
		ScriptLib.CreateGadget(context, {config_id=21025})
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_21026(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "temp") == 2 then
		ScriptLib.KillEntityByConfigId(context, {group_id=220140021, config_id=21006, entity_type=EntityType.GADGET})
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_21027(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "temp") == 2 then
		ScriptLib.KillEntityByConfigId(context, {group_id=220140021, config_id=21015, entity_type=EntityType.GADGET})
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_21028(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 220140021, 21013) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 220140021, 21017) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_21028(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4006717") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_21029(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 220140021, 21013) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 220140021, 21017) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_21029(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4006717") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_21030(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "monster") == 2 then
		if ScriptLib.GetGadgetStateByConfigId(context, 0, 21013) == 201 then
			ScriptLib.SetGadgetStateByConfigId(context,21013, GadgetState.Default)
		end
		
		if ScriptLib.GetGadgetStateByConfigId(context, 0, 21017) == 201 then
			ScriptLib.SetGadgetStateByConfigId(context,21017, GadgetState.Default)
		end
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_21031(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "monster") == 2 then
		ScriptLib.KillEntityByConfigId(context, {group_id=220140021, config_id=21019, entity_type=EntityType.GADGET})
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_21032(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "monster") == 2 then
		ScriptLib.KillEntityByConfigId(context, {group_id=220140021, config_id=21020, entity_type=EntityType.GADGET})
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_21033(context, evt)
	if 21021 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_21033(context, evt)
	-- 将本组内变量名为 "monster" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "monster", 2, 220140021) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将configid为 21013 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 21013, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 21017 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 21017, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 21019 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_21034(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "monster") == 3 then
		ScriptLib.SetGadgetStateByConfigId(context,21013, GadgetState.GearStart)
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_21035(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "monster") == 3 then
		ScriptLib.SetGadgetStateByConfigId(context,21017, GadgetState.GearStart)
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_21036(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "monster") == 3 then
		ScriptLib.CreateGadget(context, {config_id=21025})
	end
	
	return 0
end

require "V2_8/FireMachineColorHandle"
require "V2_8/KazuhaServeItem"