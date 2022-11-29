-- 基础信息
local base_info = {
	group_id = 220114001
}

-- DEFS_MISCS
local defs = {
        groupID = 220114001,
        cutSceneID = 201901
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[1003] = { config_id = 1003, monster_id = 29050101, pos = { x = 0.000, y = 0.147, z = 13.100 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, title_id = 141, special_name_id = 7, mark_flag = 1 },
	[1004] = { config_id = 1004, monster_id = 29050102, pos = { x = 0.000, y = 0.147, z = 7.100 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, title_id = 142, special_name_id = 10, mark_flag = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[1001] = { config_id = 1001, gadget_id = 42905014, pos = { x = 0.000, y = 0.147, z = 3.100 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1007] = { config_id = 1007, gadget_id = 42905204, pos = { x = 0.000, y = 0.147, z = 3.100 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1008] = { config_id = 1008, gadget_id = 70310076, pos = { x = 15.004, y = 0.101, z = 20.566 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	[1009] = { config_id = 1009, gadget_id = 70310077, pos = { x = 15.004, y = 0.101, z = 15.506 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	[1010] = { config_id = 1010, gadget_id = 70310076, pos = { x = 15.004, y = 0.101, z = 10.579 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	[1011] = { config_id = 1011, gadget_id = 70310077, pos = { x = 15.004, y = 0.101, z = 5.588 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	[1012] = { config_id = 1012, gadget_id = 70310076, pos = { x = 15.004, y = 0.101, z = 0.595 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	[1013] = { config_id = 1013, gadget_id = 70310077, pos = { x = 15.004, y = 0.101, z = -4.398 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	[1014] = { config_id = 1014, gadget_id = 70310076, pos = { x = 15.004, y = 0.101, z = -9.397 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	[1015] = { config_id = 1015, gadget_id = 70310077, pos = { x = 15.004, y = 0.101, z = -14.389 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	[1016] = { config_id = 1016, gadget_id = 70310076, pos = { x = -14.994, y = 0.101, z = 20.566 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	[1017] = { config_id = 1017, gadget_id = 70310077, pos = { x = -14.994, y = 0.101, z = 15.571 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	[1018] = { config_id = 1018, gadget_id = 70310076, pos = { x = -14.994, y = 0.101, z = 10.579 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	[1019] = { config_id = 1019, gadget_id = 70310077, pos = { x = -14.994, y = 0.101, z = 5.588 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	[1020] = { config_id = 1020, gadget_id = 70310076, pos = { x = -14.994, y = 0.101, z = 0.595 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	[1021] = { config_id = 1021, gadget_id = 70310077, pos = { x = -14.994, y = 0.101, z = -4.398 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	[1022] = { config_id = 1022, gadget_id = 70310076, pos = { x = -14.994, y = 0.101, z = -9.397 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	[1023] = { config_id = 1023, gadget_id = 70310077, pos = { x = -14.994, y = 0.101, z = -14.389 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	[1024] = { config_id = 1024, gadget_id = 70310077, pos = { x = -12.524, y = 0.101, z = -11.882 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	[1025] = { config_id = 1025, gadget_id = 70310077, pos = { x = 12.506, y = 0.101, z = -11.882 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	[1026] = { config_id = 1026, gadget_id = 70310076, pos = { x = -12.524, y = 0.101, z = 18.019 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	[1027] = { config_id = 1027, gadget_id = 70310076, pos = { x = 12.506, y = 0.101, z = 18.019 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	-- 中继逻辑控制器
	[1029] = { config_id = 1029, gadget_id = 42905103, pos = { x = 0.000, y = 0.147, z = 3.100 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, mark_flag = 3 },
	[1034] = { config_id = 1034, gadget_id = 40000001, pos = { x = -25.477, y = 0.703, z = 0.824 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1035] = { config_id = 1035, gadget_id = 70310102, pos = { x = 14.380, y = 0.135, z = 16.385 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	[1036] = { config_id = 1036, gadget_id = 70310102, pos = { x = 14.380, y = 0.135, z = -1.790 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	[1037] = { config_id = 1037, gadget_id = 70310102, pos = { x = 14.380, y = 0.135, z = -10.330 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	[1038] = { config_id = 1038, gadget_id = 70310102, pos = { x = 14.380, y = 0.135, z = 7.990 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	[1039] = { config_id = 1039, gadget_id = 70310102, pos = { x = -14.288, y = 0.135, z = 16.385 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	[1040] = { config_id = 1040, gadget_id = 70310102, pos = { x = -14.288, y = 0.135, z = -10.330 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	[1041] = { config_id = 1041, gadget_id = 70310102, pos = { x = -14.288, y = 0.135, z = -1.790 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	[1042] = { config_id = 1042, gadget_id = 70310102, pos = { x = -14.288, y = 0.135, z = 7.990 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	[1043] = { config_id = 1043, gadget_id = 70310103, pos = { x = 0.000, y = 0.000, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1044] = { config_id = 1044, gadget_id = 70310105, pos = { x = 0.000, y = 0.000, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1045] = { config_id = 1045, gadget_id = 70310104, pos = { x = 0.000, y = 0.000, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 添加低温空气墙
	{ config_id = 1001002, name = "ANY_MONSTER_LIVE_1002", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_1002", action = "action_EVENT_ANY_MONSTER_LIVE_1002", trigger_count = 0 },
	-- 切换高温，移除屏风，添加高温空气墙
	{ config_id = 1001005, name = "ANY_MONSTER_LIVE_1005", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_1005", action = "action_EVENT_ANY_MONSTER_LIVE_1005" },
	-- 播放CS，移除低温空气墙
	{ config_id = 1001006, name = "ANY_MONSTER_DIE_1006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1006", action = "action_EVENT_ANY_MONSTER_DIE_1006" },
	-- 载入屏风
	{ config_id = 1001028, name = "GADGET_CREATE_1028", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_1028", action = "action_EVENT_GADGET_CREATE_1028" },
	-- 天气2
	{ config_id = 1001031, name = "SPECIFIC_MONSTER_HP_CHANGE_1031", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "1003", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_1031", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_1031" },
	-- 天气3
	{ config_id = 1001032, name = "ANY_MONSTER_LIVE_1032", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_1032", action = "action_EVENT_ANY_MONSTER_LIVE_1032" },
	-- 女士死亡接任务,剧情用
	{ config_id = 1001033, name = "ANY_MONSTER_DIE_1033", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1033", action = "action_EVENT_ANY_MONSTER_DIE_1033", trigger_count = 0 },
	-- 对话结束招boss
	{ config_id = 1001046, name = "QUEST_FINISH_1046", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_1046", action = "action_EVENT_QUEST_FINISH_1046" },
	-- 切换灯光
	{ config_id = 1001047, name = "SPECIFIC_MONSTER_HP_CHANGE_1047", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "1003", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_1047", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_1047" },
	-- 切换灯光2
	{ config_id = 1001048, name = "GADGET_CREATE_1048", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_1048", action = "action_EVENT_GADGET_CREATE_1048", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "LaSignora_weather", value = 1, no_refresh = false }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1001030, name = "VARIABLE_CHANGE_1030", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_1030", action = "action_EVENT_VARIABLE_CHANGE_1030" }
	}
}

-- 视野组
sight_groups = {
	{ 1003, 1004, 1001, 1007, 1029 }
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
		gadgets = { 1029, 1034 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_1002", "ANY_MONSTER_LIVE_1005", "ANY_MONSTER_DIE_1006", "GADGET_CREATE_1028", "SPECIFIC_MONSTER_HP_CHANGE_1031", "ANY_MONSTER_LIVE_1032", "ANY_MONSTER_DIE_1033", "QUEST_FINISH_1046", "GADGET_CREATE_1048" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 1001 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 1008, 1009, 1010, 1011, 1012, 1013, 1014, 1015, 1016, 1017, 1018, 1019, 1020, 1021, 1022, 1023, 1024, 1025, 1026, 1027, 1035, 1036, 1037, 1038, 1039, 1040, 1041, 1042, 1043 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 1007, 1044 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 任务结束再召唤女士和空气墙,
		monsters = { 1003 },
		gadgets = { },
		regions = { },
		triggers = { "SPECIFIC_MONSTER_HP_CHANGE_1047" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_1002(context, evt)
	if 1003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_1002(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220114001, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_1005(context, evt)
	if 1004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_1005(context, evt)
	-- 改变气候为HotMonster
	ChangeClimateToHotMonster(context)
	-- 移除屏风
	    ScriptLib.RemoveExtraGroupSuite(context, 220114001, 3)
	-- 添加高温空气墙
	    ScriptLib.AddExtraGroupSuite(context, 220114001, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1006(context, evt)
	if 1003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1006(context, evt)
	-- CutScene播放流程
	PlayCutScene(context)
	-- 移除低温空气墙
	    ScriptLib.RemoveExtraGroupSuite(context, 220114001, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_1028(context, evt)
	if 1034 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_1028(context, evt)
	    ScriptLib.ModifyClimatePolygonParamTable(context, 1, {climate_type=0,meter_inherit_ratio=0})
	    ScriptLib.PrintContextLog(context, "## LD ：自然气候激活")
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220114001, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_1031(context, evt)
	--[[判断指定configid的怪物的血量小于%21时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 21 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_1031(context, evt)
	ScriptLib.SetWeatherAreaState(context, 10030,1)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_1032(context, evt)
	if 1004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_1032(context, evt)
	ScriptLib.SetWeatherAreaState(context, 10031,1)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1033(context, evt)
	if 1004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1033(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "2201140011") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_1046(context, evt)
	--检查ID为201901的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 201901 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_1046(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220114001, 5)
	
	    ScriptLib.ModifyClimatePolygonParamTable(context, 1, {climate_type=3,meter_inherit_ratio=0})
	    ScriptLib.PrintContextLog(context, "## LD ：冷气激活")
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_1047(context, evt)
	--[[判断指定configid的怪物的血量小于%21时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 21 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_1047(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220114001, EntityType.GADGET, 1043 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 创建id为1045的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1045 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_1048(context, evt)
	if 1044 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_1048(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220114001, EntityType.GADGET, 1045 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

require "V2_1/Boss_LaSignora"