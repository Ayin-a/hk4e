-- 基础信息
local base_info = {
	group_id = 133106411
}

-- Trigger变量
local defs = {
	steps = 2,
	config_id = 411015,
	routes = { [1]={route=310600005,points={1,2,7}},  [2]={route=310600005,points={7,8,9}},  },
	shake_point = 8
}

-- DEFS_MISCS
local shootLightMap={[411009]=411016,[411010]=411019}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 411001, monster_id = 26040103, pos = { x = -648.735, y = 124.597, z = 1953.895 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, area_id = 19 },
	{ config_id = 411025, monster_id = 26030101, pos = { x = -648.735, y = 124.597, z = 1953.895 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, area_id = 19 },
	{ config_id = 411028, monster_id = 26030101, pos = { x = -651.887, y = 124.597, z = 1959.356 }, rot = { x = 0.000, y = 101.125, z = 0.000 }, level = 36, drop_id = 1000100, area_id = 19 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 411007, gadget_id = 70330021, pos = { x = -649.121, y = 107.782, z = 1943.558 }, rot = { x = 7.482, y = 62.287, z = 347.808 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 411008, gadget_id = 70330021, pos = { x = -659.965, y = 107.423, z = 1964.206 }, rot = { x = 357.278, y = 8.730, z = 354.174 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 411009, gadget_id = 70330145, pos = { x = -637.573, y = 123.274, z = 1961.563 }, rot = { x = 0.000, y = 333.912, z = 0.000 }, level = 36, state = GadgetState.GearStop, isOneoff = true, persistent = true, area_id = 19 },
	{ config_id = 411010, gadget_id = 70330145, pos = { x = -662.157, y = 108.087, z = 1953.937 }, rot = { x = 338.226, y = 82.279, z = 1.732 }, level = 36, state = GadgetState.GearStop, isOneoff = true, persistent = true, area_id = 19 },
	{ config_id = 411011, gadget_id = 70330145, pos = { x = -649.308, y = 108.214, z = 1960.403 }, rot = { x = 1.058, y = 305.171, z = 344.226 }, level = 36, state = GadgetState.GearStop, persistent = true, area_id = 19 },
	{ config_id = 411012, gadget_id = 70330145, pos = { x = -653.739, y = 116.828, z = 1949.052 }, rot = { x = 0.000, y = 94.799, z = 356.194 }, level = 36, state = GadgetState.GearStop, persistent = true, area_id = 19 },
	{ config_id = 411013, gadget_id = 70330021, pos = { x = -662.469, y = 107.600, z = 1944.887 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 411014, gadget_id = 70330021, pos = { x = -619.471, y = 126.008, z = 1957.235 }, rot = { x = 318.133, y = 0.000, z = 0.000 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 411015, gadget_id = 70330148, pos = { x = -652.910, y = 124.661, z = 1955.140 }, rot = { x = 0.000, y = 93.581, z = 0.000 }, level = 36, is_use_point_array = true, area_id = 19 },
	{ config_id = 411016, gadget_id = 70290340, pos = { x = -645.760, y = 123.670, z = 1960.000 }, rot = { x = 341.224, y = 162.639, z = 182.065 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 411017, gadget_id = 70330021, pos = { x = -641.396, y = 121.307, z = 1947.808 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 411018, gadget_id = 70290338, pos = { x = -654.751, y = 120.029, z = 1951.503 }, rot = { x = 0.000, y = 65.456, z = 0.000 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 411019, gadget_id = 70290338, pos = { x = -655.806, y = 112.920, z = 1954.836 }, rot = { x = 309.957, y = 312.293, z = 237.345 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 411020, gadget_id = 70290338, pos = { x = -651.854, y = 114.509, z = 1958.859 }, rot = { x = 0.000, y = 120.797, z = 23.853 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 411021, gadget_id = 70330213, pos = { x = -652.420, y = 107.691, z = 1955.720 }, rot = { x = 2.445, y = 5.793, z = 0.688 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 411022, gadget_id = 70330212, pos = { x = -652.867, y = 110.440, z = 1956.322 }, rot = { x = 5.160, y = 93.581, z = 19.406 }, level = 36, persistent = true, area_id = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1411002, name = "GROUP_LOAD_411002", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_411002", action = "action_EVENT_GROUP_LOAD_411002", trigger_count = 0 },
	{ config_id = 1411005, name = "QUEST_START_411005", event = EventType.EVENT_QUEST_START, source = "7104423", condition = "condition_EVENT_QUEST_START_411005", action = "action_EVENT_QUEST_START_411005", trigger_count = 0 },
	{ config_id = 1411006, name = "PLATFORM_REACH_POINT_411006", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_411006", action = "action_EVENT_PLATFORM_REACH_POINT_411006", trigger_count = 0 },
	{ config_id = 1411023, name = "TIME_AXIS_PASS_411023", event = EventType.EVENT_TIME_AXIS_PASS, source = "killlightriver", condition = "condition_EVENT_TIME_AXIS_PASS_411023", action = "action_EVENT_TIME_AXIS_PASS_411023", trigger_count = 0 },
	-- 刷第一波怪
	{ config_id = 1411024, name = "PLATFORM_REACH_POINT_411024", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_411024", action = "action_EVENT_PLATFORM_REACH_POINT_411024", trigger_count = 0 },
	-- 刷第二波怪
	{ config_id = 1411026, name = "ANY_MONSTER_DIE_411026", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_411026", action = "action_EVENT_ANY_MONSTER_DIE_411026" }
}

-- 变量
variables = {
	{ config_id = 1, name = "questStarted", value = 0, no_refresh = true },
	{ config_id = 2, name = "questFinished", value = 0, no_refresh = true }
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
		triggers = { "GROUP_LOAD_411002", "QUEST_START_411005", "PLATFORM_REACH_POINT_411006", "TIME_AXIS_PASS_411023", "PLATFORM_REACH_POINT_411024", "ANY_MONSTER_DIE_411026" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 411007, 411008, 411009, 411010, 411014, 411015, 411016, 411019 },
		regions = { },
		triggers = { "QUEST_START_411005", "PLATFORM_REACH_POINT_411006", "TIME_AXIS_PASS_411023", "PLATFORM_REACH_POINT_411024", "ANY_MONSTER_DIE_411026" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 411021, 411022 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 411025, 411028 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 411001 },
		gadgets = { },
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
function condition_EVENT_GROUP_LOAD_411002(context, evt)
	-- 判断变量"questFinished"为1
	if ScriptLib.GetGroupVariableValue(context, "questFinished") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_411002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7104423finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133106492, EntityType.GADGET, 492003 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_411005(context, evt)
	-- 判断变量"MoveStep"为0
	if ScriptLib.GetGroupVariableValue(context, "MoveStep") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_411005(context, evt)
	-- 将本组内变量名为 "questStarted" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "questStarted", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 411009 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 411009, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 411010 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 411010, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_411006(context, evt)
	-- 判断变量"MoveStep"为2
	if ScriptLib.GetGroupVariableValue(context, "MoveStep") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_411006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7104423finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "questFinished" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "questFinished", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133106411, 4)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133106411, 5)
	
	-- 创建标识为"killlightriver"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "killlightriver", {1}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_411023(context, evt)
	if "killlightriver" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_411023(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133106492, EntityType.GADGET, 492003 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_411024(context, evt)
	-- 判断变量"MoveStep"为1
	if ScriptLib.GetGroupVariableValue(context, "MoveStep") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_411024(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106411, 4)
	
	-- 调用提示id为 710442301 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 710442301) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_411026(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133106411) ~= 0 then
		return false
	end
	
	-- 判断变量"MoveStep"为1
	if ScriptLib.GetGroupVariableValue(context, "MoveStep") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_411026(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106411, 5)
	
	-- 调用提示id为 710442302 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 710442302) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

require "V2_6/CalculateBulletForward"