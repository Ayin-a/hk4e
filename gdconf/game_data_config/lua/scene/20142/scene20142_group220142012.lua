-- 基础信息
local base_info = {
	group_id = 220142012
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
        ["2_8_Kazuha_05"] = {2},
        ["2_8_Kazuha_06"] = {2},
        ["2_8_Kazuha_07"] = {2},
    },

    --需要保存gadgetState的物件configID，最多9个
    saved_gadget = 
    {  
    	12001,12002,12005
    },
serve_items = {12011,12012},
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
	{ config_id = 12001, gadget_id = 70290137, pos = { x = 107.407, y = 4.098, z = 50.026 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 12002, gadget_id = 70290373, pos = { x = 104.629, y = 4.020, z = 47.003 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 12004, gadget_id = 70360001, pos = { x = 102.218, y = 4.020, z = 49.995 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 12005, gadget_id = 70290373, pos = { x = 104.629, y = 4.020, z = 53.585 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 12009, gadget_id = 70690034, pos = { x = 83.525, y = -13.023, z = -2.667 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 12011, gadget_id = 70290374, pos = { x = 102.484, y = 14.550, z = 34.731 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, isOneoff = true },
	{ config_id = 12012, gadget_id = 70290374, pos = { x = 100.698, y = 4.323, z = 39.772 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, isOneoff = true },
	{ config_id = 12020, gadget_id = 70360280, pos = { x = 74.602, y = 8.514, z = 31.916 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 12021, gadget_id = 70360291, pos = { x = 74.517, y = 8.480, z = 22.655 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 12022, gadget_id = 70360280, pos = { x = 84.556, y = 13.847, z = 31.916 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 12023, gadget_id = 70360280, pos = { x = 84.556, y = 11.835, z = 31.916 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 12024, gadget_id = 70360291, pos = { x = 84.501, y = 11.775, z = 22.655 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 12025, gadget_id = 70360291, pos = { x = 84.501, y = 13.784, z = 22.655 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 12026, gadget_id = 70360280, pos = { x = 94.692, y = 15.114, z = 31.916 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 12027, gadget_id = 70360280, pos = { x = 94.692, y = 17.160, z = 31.916 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 12028, gadget_id = 70360291, pos = { x = 95.081, y = 15.006, z = 22.655 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 12029, gadget_id = 70360291, pos = { x = 95.017, y = 16.975, z = 22.655 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 12030, gadget_id = 70211111, pos = { x = 102.504, y = 14.724, z = 37.629 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 16, drop_tag = "解谜中级群岛", isOneoff = true, persistent = true, autopick = true }
}

-- 区域
regions = {
	-- 任务保底4006512
	{ config_id = 12008, shape = RegionShape.CUBIC, size = { x = 40.000, y = 15.000, z = 40.000 }, pos = { x = 95.405, y = 10.650, z = 50.026 } },
	{ config_id = 12010, shape = RegionShape.CUBIC, size = { x = 10.000, y = 8.000, z = 10.000 }, pos = { x = 81.555, y = -1.885, z = -2.764 } },
	{ config_id = 12014, shape = RegionShape.SPHERE, radius = 10, pos = { x = 103.152, y = 4.020, z = 49.655 } },
	{ config_id = 12016, shape = RegionShape.SPHERE, radius = 8, pos = { x = 65.245, y = 8.289, z = -0.658 } },
	{ config_id = 12032, shape = RegionShape.SPHERE, radius = 5, pos = { x = 103.298, y = 14.129, z = 32.843 } },
	{ config_id = 12033, shape = RegionShape.SPHERE, radius = 5, pos = { x = 68.463, y = 4.834, z = 24.559 } }
}

-- 触发器
triggers = {
	{ config_id = 1012003, name = "LEVEL_TAG_CHANGE_12003", event = EventType.EVENT_LEVEL_TAG_CHANGE, source = "", condition = "", action = "action_EVENT_LEVEL_TAG_CHANGE_12003", trigger_count = 0 },
	{ config_id = 1012006, name = "GADGET_STATE_CHANGE_12006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_12006", trigger_count = 0 },
	-- 任务保底4006512
	{ config_id = 1012007, name = "QUEST_START_12007", event = EventType.EVENT_QUEST_START, source = "4006512", condition = "condition_EVENT_QUEST_START_12007", action = "action_EVENT_QUEST_START_12007", trigger_count = 0 },
	-- 任务保底4006512
	{ config_id = 1012008, name = "ENTER_REGION_12008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_12008", action = "action_EVENT_ENTER_REGION_12008", trigger_count = 0 },
	{ config_id = 1012010, name = "ENTER_REGION_12010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_12010", action = "action_EVENT_ENTER_REGION_12010", trigger_count = 0 },
	{ config_id = 1012013, name = "TIME_AXIS_PASS_12013", event = EventType.EVENT_TIME_AXIS_PASS, source = "temp1", condition = "condition_EVENT_TIME_AXIS_PASS_12013", action = "action_EVENT_TIME_AXIS_PASS_12013", trigger_count = 0 },
	{ config_id = 1012014, name = "ENTER_REGION_12014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_12014", trigger_count = 0 },
	{ config_id = 1012016, name = "ENTER_REGION_12016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_12016", action = "action_EVENT_ENTER_REGION_12016", trigger_count = 0 },
	{ config_id = 1012032, name = "ENTER_REGION_12032", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_12032", action = "action_EVENT_ENTER_REGION_12032", trigger_count = 0 },
	{ config_id = 1012033, name = "ENTER_REGION_12033", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_12033", action = "action_EVENT_ENTER_REGION_12033", trigger_count = 0 },
	{ config_id = 1012034, name = "GROUP_LOAD_12034", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_12034", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "temp", value = 0, no_refresh = true },
	{ config_id = 2, name = "show", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1012015, name = "TIME_AXIS_PASS_12015", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_12015", action = "action_EVENT_TIME_AXIS_PASS_12015", trigger_count = 0 }
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
		gadgets = { 12004 },
		regions = { },
		triggers = { "LEVEL_TAG_CHANGE_12003", "GROUP_LOAD_12034" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 12001, 12002, 12005, 12011, 12012, 12020, 12021, 12022, 12023, 12024, 12025, 12026, 12027, 12028, 12029, 12030 },
		regions = { 12008, 12010, 12014, 12016, 12032, 12033 },
		triggers = { "GADGET_STATE_CHANGE_12006", "QUEST_START_12007", "ENTER_REGION_12008", "ENTER_REGION_12010", "TIME_AXIS_PASS_12013", "ENTER_REGION_12014", "ENTER_REGION_12016", "ENTER_REGION_12032", "ENTER_REGION_12033" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 12009 },
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

-- 触发操作
function action_EVENT_LEVEL_TAG_CHANGE_12003(context, evt)
	if evt.param2 == 26 then
		ScriptLib.AddExtraGroupSuite(context, 0, 2)
	else
		ScriptLib.RemoveExtraGroupSuite(context, 220142012, 2)
		
		ScriptLib.RemoveExtraGroupSuite(context, 220142012, 3)
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_12006(context, evt)
	if ScriptLib.GetGadgetStateByConfigId(context, 0, 12002) == 201 and ScriptLib.GetGadgetStateByConfigId(context, 0, 12005) == 201 then
		ScriptLib.AddQuestProgress(context, "4006512")
		
		ScriptLib.SetGadgetStateByConfigId(context,12001, GadgetState.GearStart)
		
		ScriptLib.SetGroupVariableValue(context, "temp", 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_12007(context, evt)
	-- 判断变量"temp"为1
	if ScriptLib.GetGroupVariableValue(context, "temp") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_12007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4006512") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_12008(context, evt)
	if evt.param1 ~= 12008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"temp"为1
	if ScriptLib.GetGroupVariableValue(context, "temp") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_12008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4006512") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_12010(context, evt)
	if evt.param1 ~= 12010 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_12010(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220142012, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_12013(context, evt)
	if "temp1" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_12013(context, evt)
	-- 将configid为 12020 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 12020, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 12022 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 12022, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 12023 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 12023, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 12026 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 12026, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 12027 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 12027, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_12014(context, evt)
	if evt.param1 == 12014 and ScriptLib.GetRegionEntityCount(context, {region_eid = evt.source_eid, entity_type = EntityType.AVATAR}) == 1 and ScriptLib.TryRecordActivityPushTips(context, 2014009) == 0 then
		ScriptLib.ShowClientTutorial(context, 1179, {})
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_12016(context, evt)
	if evt.param1 ~= 12016 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_12016(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 12009 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_12032(context, evt)
	if evt.param1 ~= 12032 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_12032(context, evt)
	-- 停止标识为"temp1"的时间轴
	ScriptLib.EndTimeAxis(context, "temp1")
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_12033(context, evt)
	if evt.param1 ~= 12033 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_12033(context, evt)
	-- 将configid为 12020 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 12020, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 12022 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 12022, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 12023 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 12023, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 12026 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 12026, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 12027 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 12027, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建标识为"temp1"，时间节点为{4}的时间轴，true用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "temp1", {4}, true)
	
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_12034(context, evt)
	if ScriptLib.CheckSceneTag(context, 20142,1055 ) then
		ScriptLib.AddExtraGroupSuite(context, 0, 2)
	end
	
	return 0
end

require "V2_8/DreamLandSuiteState"
require "V2_8/KazuhaServeItem"