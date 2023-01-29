-- 基础信息
local base_info = {
	group_id = 220140017
}

-- DEFS_MISCS
local        defs = {

                --本Group中发射器gadget的configID，最多3个,
                fireMachineList = {
                        17001
                },

                --key为发射器configID，value为ColorDefine
                initConfig = {
                        [17001] = 5,
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
              serve_items = {17003}
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
	{ config_id = 17002, gadget_id = 70290373, pos = { x = -7.443, y = -3.734, z = -3.207 }, rot = { x = 342.542, y = 93.984, z = 358.778 }, level = 1, state = GadgetState.ChestLocked, persistent = true },
	{ config_id = 17003, gadget_id = 70290374, pos = { x = 4.122, y = 0.985, z = 3.313 }, rot = { x = 0.000, y = 0.000, z = 0.861 }, level = 1, state = GadgetState.ChestLocked, isOneoff = true },
	{ config_id = 17005, gadget_id = 70690027, pos = { x = -12.403, y = -7.387, z = 4.221 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 17006, gadget_id = 70690001, pos = { x = -25.011, y = -0.479, z = 2.705 }, rot = { x = 355.845, y = 280.863, z = 0.000 }, level = 1 },
	{ config_id = 17007, gadget_id = 70690001, pos = { x = -44.601, y = 0.970, z = 6.464 }, rot = { x = 355.845, y = 280.863, z = 0.000 }, level = 1 },
	{ config_id = 17008, gadget_id = 70690001, pos = { x = -64.191, y = 2.419, z = 10.223 }, rot = { x = 355.845, y = 280.863, z = 0.000 }, level = 1 },
	{ config_id = 17012, gadget_id = 70310386, pos = { x = -7.640, y = -3.110, z = -3.208 }, rot = { x = 342.542, y = 93.984, z = 358.778 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 17013, gadget_id = 70310386, pos = { x = 4.122, y = 1.517, z = 3.313 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1017004, name = "GADGET_STATE_CHANGE_17004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_17004", action = "action_EVENT_GADGET_STATE_CHANGE_17004", trigger_count = 0 },
	{ config_id = 1017009, name = "GROUP_LOAD_17009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_17009", trigger_count = 0 },
	-- 4006704任务接入+保底
	{ config_id = 1017010, name = "QUEST_START_17010", event = EventType.EVENT_QUEST_START, source = "4006704", condition = "condition_EVENT_QUEST_START_17010", action = "action_EVENT_QUEST_START_17010", trigger_count = 0 },
	-- 4006704任务接入+保底
	{ config_id = 1017011, name = "GROUP_LOAD_17011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_17011", action = "action_EVENT_GROUP_LOAD_17011", trigger_count = 0 },
	{ config_id = 1017014, name = "GROUP_LOAD_17014", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_17014", action = "action_EVENT_GROUP_LOAD_17014", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "temp", value = 0, no_refresh = true },
	{ config_id = 2, name = "unlock", value = 0, no_refresh = true },
	{ config_id = 3, name = "isLock_1", value = 1, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 17001, gadget_id = 70310158, pos = { x = -0.567, y = -1.878, z = -0.670 }, rot = { x = 357.805, y = 7.383, z = 16.469 }, level = 1, state = GadgetState.GearAction2 }
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
		gadgets = { 17002, 17003, 17012, 17013 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_17004", "GROUP_LOAD_17009", "QUEST_START_17010", "GROUP_LOAD_17011", "GROUP_LOAD_17014" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 17005, 17006, 17007, 17008 },
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
function condition_EVENT_GADGET_STATE_CHANGE_17004(context, evt)
	if 17002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_17004(context, evt)
	-- 将本组内变量名为 "option2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "option2", 1, 220140003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "temp" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "temp", 1, 220140017) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220140017, 2)
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4006704") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_17009(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "temp") == 1 and ScriptLib.GetGroupVariableValueByGroup(context, "load", 220140003) == 0 then
		ScriptLib.AddExtraGroupSuite(context, 0, 2)
	end
	
	if ScriptLib.GetGadgetStateByConfigId(context, 0, 17002) == 101 and ScriptLib.GetGroupVariableValue(context, "unlock") == 1 then
		ScriptLib.SetGadgetStateByConfigId(context,17002, GadgetState.Default)
		
		ScriptLib.KillEntityByConfigId(context, {group_id=220140017, config_id=17012, entity_type=EntityType.GADGET})
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_17010(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 220140017, 17002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_17010(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4006704") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_17011(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 220140017, 17002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_17011(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4006704") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_17014(context, evt)
	-- 判断变量"unlock"为1
	if ScriptLib.GetGroupVariableValue(context, "unlock") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_17014(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 17013 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

require "V2_8/FireMachineColorHandle"
require "V2_8/KazuhaServeItem"