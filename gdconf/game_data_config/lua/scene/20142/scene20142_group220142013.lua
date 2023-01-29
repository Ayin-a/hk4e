-- 基础信息
local base_info = {
	group_id = 220142013
}

-- DEFS_MISCS
defs = {
    --本Group用哪组LevelTag控制，请查LevelTagData表
    levelTagGroupID = 7,

    --是否由re-quire控制切suite，填0则不需要配置switchByLevelTag_suites
    switchByLevelTag = 1, 

    --切入该LevelTag时，加载且仅加载的suite。
    --注意，被此操作Remove掉的物件不会保留GadgetState
    switchByLevelTag_suites = {
        ["2_8_Kazuha_04"] = {2},
        ["2_8_Kazuha_01"] = {},
        ["2_8_Kazuha_02"] = {},
        ["2_8_Kazuha_03"] = {},
        ["2_8_Kazuha_05"] = {},
        ["2_8_Kazuha_06"] = {},
        ["2_8_Kazuha_07"] = {},
    },

    --需要保存gadgetState的物件configID，最多9个
    saved_gadget = 
    {  
    	13002,13004,13005,13008
    },
    serve_items = {13010,13011,13012},
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
	{ config_id = 13001, gadget_id = 70360001, pos = { x = 165.603, y = 26.768, z = 45.400 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 13002, gadget_id = 70290373, pos = { x = 164.767, y = 27.273, z = 46.082 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 13004, gadget_id = 70290137, pos = { x = 168.488, y = 29.873, z = 42.280 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 13005, gadget_id = 70290373, pos = { x = 171.319, y = 7.001, z = 34.764 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 13007, gadget_id = 70211101, pos = { x = 172.598, y = 24.495, z = 62.627 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "解谜低级群岛", isOneoff = true, persistent = true, autopick = true },
	{ config_id = 13008, gadget_id = 70290373, pos = { x = 166.451, y = 13.773, z = 61.224 }, rot = { x = 0.000, y = 90.525, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 13009, gadget_id = 70220070, pos = { x = 174.306, y = 13.997, z = 65.548 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 13010, gadget_id = 70290374, pos = { x = 171.599, y = 4.540, z = 50.075 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.ChestLocked, isOneoff = true },
	{ config_id = 13011, gadget_id = 70290374, pos = { x = 183.662, y = 8.536, z = 58.168 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.ChestLocked, isOneoff = true },
	{ config_id = 13012, gadget_id = 70290374, pos = { x = 167.334, y = 18.596, z = 38.991 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.ChestLocked, isOneoff = true },
	{ config_id = 13013, gadget_id = 70211101, pos = { x = 174.390, y = 13.997, z = 67.430 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "解谜低级群岛", isOneoff = true, persistent = true, autopick = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1013003, name = "GADGET_STATE_CHANGE_13003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_13003", action = "action_EVENT_GADGET_STATE_CHANGE_13003", trigger_count = 0 },
	{ config_id = 1013006, name = "GADGET_STATE_CHANGE_13006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_13006", trigger_count = 0 },
	{ config_id = 1013014, name = "QUEST_FINISH_13014", event = EventType.EVENT_QUEST_FINISH, source = "4006501", condition = "condition_EVENT_QUEST_FINISH_13014", action = "action_EVENT_QUEST_FINISH_13014", trigger_count = 0 },
	{ config_id = 1013015, name = "QUEST_FINISH_13015", event = EventType.EVENT_QUEST_FINISH, source = "4006518", condition = "condition_EVENT_QUEST_FINISH_13015", action = "action_EVENT_QUEST_FINISH_13015", trigger_count = 0 },
	{ config_id = 1013016, name = "QUEST_FINISH_13016", event = EventType.EVENT_QUEST_FINISH, source = "4006519", condition = "condition_EVENT_QUEST_FINISH_13016", action = "action_EVENT_QUEST_FINISH_13016", trigger_count = 0 },
	-- 供奉保底-断线
	{ config_id = 1013017, name = "QUEST_START_13017", event = EventType.EVENT_QUEST_START, source = "4006522", condition = "condition_EVENT_QUEST_START_13017", action = "action_EVENT_QUEST_START_13017", trigger_count = 0 },
	{ config_id = 1013018, name = "GADGET_STATE_CHANGE_13018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_13018", action = "action_EVENT_GADGET_STATE_CHANGE_13018", trigger_count = 0 },
	{ config_id = 1013019, name = "GADGET_STATE_CHANGE_13019", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_13019", action = "action_EVENT_GADGET_STATE_CHANGE_13019", trigger_count = 0 },
	{ config_id = 1013020, name = "QUEST_START_13020", event = EventType.EVENT_QUEST_START, source = "4006520", condition = "", action = "action_EVENT_QUEST_START_13020", trigger_count = 0 },
	{ config_id = 1013021, name = "QUEST_START_13021", event = EventType.EVENT_QUEST_START, source = "4006521", condition = "", action = "action_EVENT_QUEST_START_13021", trigger_count = 0 },
	{ config_id = 1013022, name = "QUEST_START_13022", event = EventType.EVENT_QUEST_START, source = "4006508", condition = "", action = "action_EVENT_QUEST_START_13022", trigger_count = 0 },
	-- 供奉物已解锁保底4006501
	{ config_id = 1013023, name = "QUEST_START_13023", event = EventType.EVENT_QUEST_START, source = "4006501", condition = "condition_EVENT_QUEST_START_13023", action = "action_EVENT_QUEST_START_13023", trigger_count = 0 },
	-- 供奉物已解锁保底4006518
	{ config_id = 1013024, name = "QUEST_START_13024", event = EventType.EVENT_QUEST_START, source = "4006518", condition = "condition_EVENT_QUEST_START_13024", action = "action_EVENT_QUEST_START_13024", trigger_count = 0 },
	-- 供奉物已解锁保底4006519
	{ config_id = 1013025, name = "QUEST_START_13025", event = EventType.EVENT_QUEST_START, source = "4006519", condition = "condition_EVENT_QUEST_START_13025", action = "action_EVENT_QUEST_START_13025", trigger_count = 0 },
	-- 供奉保底-断线
	{ config_id = 1013026, name = "QUEST_START_13026", event = EventType.EVENT_QUEST_START, source = "4006522", condition = "condition_EVENT_QUEST_START_13026", action = "action_EVENT_QUEST_START_13026", trigger_count = 0 },
	-- 供奉保底-断线
	{ config_id = 1013027, name = "QUEST_START_13027", event = EventType.EVENT_QUEST_START, source = "4006522", condition = "condition_EVENT_QUEST_START_13027", action = "action_EVENT_QUEST_START_13027", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 4, name = "isLock_1", value = 1, no_refresh = true },
	{ config_id = 5, name = "isLock_2", value = 1, no_refresh = true },
	{ config_id = 6, name = "isLock_3", value = 1, no_refresh = true }
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
		gadgets = { 13001 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 13002, 13004, 13005, 13007, 13008, 13009, 13010, 13011, 13012, 13013 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_13003", "GADGET_STATE_CHANGE_13006", "QUEST_FINISH_13014", "QUEST_FINISH_13015", "QUEST_FINISH_13016", "QUEST_START_13017", "GADGET_STATE_CHANGE_13018", "GADGET_STATE_CHANGE_13019", "QUEST_START_13020", "QUEST_START_13021", "QUEST_START_13022", "QUEST_START_13023", "QUEST_START_13024", "QUEST_START_13025", "QUEST_START_13026", "QUEST_START_13027" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_13003(context, evt)
	if 13005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_13003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4006508") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_13006(context, evt)
	if ScriptLib.GetGadgetStateByConfigId(context, 0, 13002) == 201 and ScriptLib.GetGadgetStateByConfigId(context, 0, 13005) == 201 and ScriptLib.GetGadgetStateByConfigId(context, 0, 13008) == 201 then
		ScriptLib.SetGadgetStateByConfigId(context,13004, GadgetState.GearStart)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_13014(context, evt)
	if GadgetState.ChestLocked ~= ScriptLib.GetGadgetStateByConfigId(context, 220142013, 13010) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_13014(context, evt)
	-- 将本组内变量名为 "isLock_1" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "isLock_1", 0, 220142013) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将configid为 13010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 13010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_13015(context, evt)
	if GadgetState.ChestLocked ~= ScriptLib.GetGadgetStateByConfigId(context, 220142013, 13011) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_13015(context, evt)
	-- 将本组内变量名为 "isLock_2" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isLock_2", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 13011 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 13011, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_13016(context, evt)
	if GadgetState.ChestLocked ~= ScriptLib.GetGadgetStateByConfigId(context, 220142013, 13012) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_13016(context, evt)
	-- 将本组内变量名为 "isLock_3" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isLock_3", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 13012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 13012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_13017(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 220142013, 13010) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_13017(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4006501") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_13018(context, evt)
	if 13008 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_13018(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4006520") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_13019(context, evt)
	if 13002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_13019(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4006521") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_13020(context, evt)
	if ScriptLib.GetGadgetStateByConfigId(context, 0, 13002) == 201 then
		ScriptLib.AddQuestProgress(context, "4006521")
	end
	
	if ScriptLib.GetGadgetStateByConfigId(context, 0, 13005) == 201 then
		ScriptLib.AddQuestProgress(context, "4006508")
	end
	
	if ScriptLib.GetGadgetStateByConfigId(context, 0, 13008) == 201 then
		ScriptLib.AddQuestProgress(context, "4006520")
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_13021(context, evt)
	if ScriptLib.GetGadgetStateByConfigId(context, 0, 13002) == 201 then
		ScriptLib.AddQuestProgress(context, "4006521")
	end
	
	if ScriptLib.GetGadgetStateByConfigId(context, 0, 13005) == 201 then
		ScriptLib.AddQuestProgress(context, "4006508")
	end
	
	if ScriptLib.GetGadgetStateByConfigId(context, 0, 13008) == 201 then
		ScriptLib.AddQuestProgress(context, "4006520")
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_13022(context, evt)
	if ScriptLib.GetGadgetStateByConfigId(context, 0, 13002) == 201 then
		ScriptLib.AddQuestProgress(context, "4006521")
	end
	
	if ScriptLib.GetGadgetStateByConfigId(context, 0, 13005) == 201 then
		ScriptLib.AddQuestProgress(context, "4006508")
	end
	
	if ScriptLib.GetGadgetStateByConfigId(context, 0, 13008) == 201 then
		ScriptLib.AddQuestProgress(context, "4006520")
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_13023(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 220142013, 13010) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_13023(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4006501") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_13024(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 220142013, 13011) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_13024(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4006518") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_13025(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 220142013, 13012) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_13025(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4006519") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_13026(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 220142013, 13011) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_13026(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4006518") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_13027(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 220142013, 13012) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_13027(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4006519") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

require "V2_8/DreamLandSuiteState"
require "V2_8/KazuhaServeItem"