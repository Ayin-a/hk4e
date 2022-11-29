-- 基础信息
local base_info = {
	group_id = 133106134
}

-- Trigger变量
local defs = {
	steps = 3,
	config_id = 134011,
	routes = { [1]={route=310600001,points={1,2,3}},  [2]={route=310600001,points={3,4,5}},  [3]={route=310600001,points={5,6,7}},  },
	shake_point = 6
}

-- DEFS_MISCS
local shootLightMap={[134003]=134015,[134004]=134016,[134006]=134017}

local lawfulGadgets =
{
        [1]={134004},
        [2]={134003},
        [3]={134006}
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
	{ config_id = 134002, gadget_id = 70330212, pos = { x = -845.448, y = 140.362, z = 1677.256 }, rot = { x = 4.058, y = 328.085, z = 334.834 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 134003, gadget_id = 70330145, pos = { x = -855.281, y = 143.747, z = 1696.831 }, rot = { x = 357.045, y = 337.885, z = 0.000 }, level = 32, state = GadgetState.GearStop, isOneoff = true, persistent = true, area_id = 19 },
	{ config_id = 134004, gadget_id = 70330145, pos = { x = -819.177, y = 152.003, z = 1668.711 }, rot = { x = 0.000, y = 16.016, z = 0.000 }, level = 32, state = GadgetState.GearStop, isOneoff = true, persistent = true, area_id = 19 },
	{ config_id = 134006, gadget_id = 70330145, pos = { x = -818.220, y = 126.822, z = 1662.276 }, rot = { x = 0.896, y = 25.290, z = 339.435 }, level = 32, state = GadgetState.GearStop, isOneoff = true, persistent = true, area_id = 19 },
	{ config_id = 134007, gadget_id = 70330021, pos = { x = -866.786, y = 138.962, z = 1696.802 }, rot = { x = 6.600, y = 2.735, z = 44.980 }, level = 32, persistent = true, area_id = 19 },
	{ config_id = 134008, gadget_id = 70330021, pos = { x = -838.198, y = 127.109, z = 1666.706 }, rot = { x = 356.618, y = 1.595, z = 309.512 }, level = 32, persistent = true, area_id = 19 },
	{ config_id = 134009, gadget_id = 70330021, pos = { x = -857.145, y = 156.115, z = 1687.669 }, rot = { x = 1.755, y = 358.408, z = 38.449 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 134010, gadget_id = 70330021, pos = { x = -815.077, y = 184.549, z = 1657.630 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 19 },
	{ config_id = 134011, gadget_id = 70330148, pos = { x = -846.760, y = 150.260, z = 1676.030 }, rot = { x = 0.000, y = 328.085, z = 0.000 }, level = 32, is_use_point_array = true, area_id = 19 },
	{ config_id = 134014, gadget_id = 70330213, pos = { x = -846.715, y = 137.793, z = 1675.960 }, rot = { x = 0.591, y = 129.574, z = 1.796 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 134015, gadget_id = 70290339, pos = { x = -852.640, y = 147.390, z = 1685.540 }, rot = { x = 0.669, y = 252.595, z = 343.087 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 134016, gadget_id = 70290339, pos = { x = -832.740, y = 151.160, z = 1675.630 }, rot = { x = 352.800, y = 23.274, z = 11.387 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 134017, gadget_id = 70290340, pos = { x = -835.435, y = 140.487, z = 1674.782 }, rot = { x = 302.358, y = 161.983, z = 237.838 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 134018, gadget_id = 70330021, pos = { x = -837.994, y = 154.968, z = 1648.183 }, rot = { x = 9.744, y = 21.811, z = 354.079 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 134021, gadget_id = 70330021, pos = { x = -831.919, y = 153.925, z = 1648.439 }, rot = { x = 17.694, y = 22.344, z = 13.376 }, level = 36, persistent = true, area_id = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1134001, name = "TIME_AXIS_PASS_134001", event = EventType.EVENT_TIME_AXIS_PASS, source = "killlightriver", condition = "condition_EVENT_TIME_AXIS_PASS_134001", action = "action_EVENT_TIME_AXIS_PASS_134001", trigger_count = 0 },
	{ config_id = 1134005, name = "GROUP_LOAD_134005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_134005", action = "action_EVENT_GROUP_LOAD_134005", trigger_count = 0 },
	{ config_id = 1134012, name = "QUEST_START_134012", event = EventType.EVENT_QUEST_START, source = "7104418", condition = "condition_EVENT_QUEST_START_134012", action = "action_EVENT_QUEST_START_134012", trigger_count = 0 },
	{ config_id = 1134013, name = "PLATFORM_REACH_POINT_134013", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_134013", action = "action_EVENT_PLATFORM_REACH_POINT_134013", trigger_count = 0 },
	{ config_id = 1134022, name = "GADGET_STATE_CHANGE_134022", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_134022", action = "action_EVENT_GADGET_STATE_CHANGE_134022" }
}

-- 变量
variables = {
	{ config_id = 1, name = "questFinished", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 134019, gadget_id = 70690013, pos = { x = -814.411, y = 126.318, z = 1683.677 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 19 },
		{ config_id = 134020, gadget_id = 70290200, pos = { x = -814.411, y = 126.318, z = 1683.677 }, rot = { x = 0.000, y = 316.742, z = 0.000 }, level = 36, area_id = 19 }
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
		gadgets = { },
		regions = { },
		triggers = { "TIME_AXIS_PASS_134001", "GROUP_LOAD_134005", "QUEST_START_134012", "PLATFORM_REACH_POINT_134013", "GADGET_STATE_CHANGE_134022" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 134003, 134004, 134006, 134007, 134008, 134009, 134010, 134011, 134015, 134016, 134017, 134018, 134021 },
		regions = { },
		triggers = { "TIME_AXIS_PASS_134001", "QUEST_START_134012", "PLATFORM_REACH_POINT_134013", "GADGET_STATE_CHANGE_134022" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 134002, 134014 },
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
function condition_EVENT_TIME_AXIS_PASS_134001(context, evt)
	if "killlightriver" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_134001(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133106492, monsters = {}, gadgets = {492005} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_134005(context, evt)
	-- 判断变量"questFinished"为1
	if ScriptLib.GetGroupVariableValue(context, "questFinished") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_134005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7104418finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133106492, monsters = {}, gadgets = {492005} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_134012(context, evt)
	-- 判断变量"MoveStep"为0
	if ScriptLib.GetGroupVariableValue(context, "MoveStep") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_134012(context, evt)
	-- 将configid为 134003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 134003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 134004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 134004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 134006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 134006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_134013(context, evt)
	-- 判断变量"MoveStep"为3
	if ScriptLib.GetGroupVariableValue(context, "MoveStep") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_134013(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7104418finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "questFinished" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "questFinished", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建标识为"killlightriver"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "killlightriver", {3}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_134022(context, evt)
	if GadgetState.GearStart == evt.param1 then
		if 134003 == evt.param2 or 134004 == evt.param2 or 134006 == evt.param2 then
			return true
		end
	end
	
	return false
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_134022(context, evt)
	-- 调用提示id为 710445001 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 710445001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

require "V2_6/CalculateBulletForward"