-- 基础信息
local base_info = {
	group_id = 220115001
}

-- DEFS_MISCS
local defs = {
        groupID = 220115001,
        cutSceneID = 201902
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[1003] = { config_id = 1003, monster_id = 29050103, pos = { x = 0.000, y = 0.147, z = 13.100 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, title_id = 141, special_name_id = 7, mark_flag = 1 },
	[1004] = { config_id = 1004, monster_id = 29050104, pos = { x = 0.000, y = 0.147, z = 7.100 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, title_id = 142, special_name_id = 10, mark_flag = 7 }
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
	[1033] = { config_id = 1033, gadget_id = 70310102, pos = { x = 14.380, y = 0.135, z = 16.385 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	[1034] = { config_id = 1034, gadget_id = 70310102, pos = { x = 14.380, y = 0.135, z = -1.790 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	[1035] = { config_id = 1035, gadget_id = 70310102, pos = { x = 14.380, y = 0.135, z = -10.330 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	[1036] = { config_id = 1036, gadget_id = 70310102, pos = { x = 14.380, y = 0.135, z = 7.990 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	[1037] = { config_id = 1037, gadget_id = 70310102, pos = { x = -14.288, y = 0.135, z = 16.385 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	[1038] = { config_id = 1038, gadget_id = 70310102, pos = { x = -14.288, y = 0.135, z = -10.330 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	[1039] = { config_id = 1039, gadget_id = 70310102, pos = { x = -14.288, y = 0.135, z = -1.790 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	[1040] = { config_id = 1040, gadget_id = 70310102, pos = { x = -14.288, y = 0.135, z = 7.990 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	-- 灯光1--默认
	[1041] = { config_id = 1041, gadget_id = 70310103, pos = { x = 0.000, y = 0.000, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 灯光2
	[1042] = { config_id = 1042, gadget_id = 70310104, pos = { x = 0.000, y = 0.000, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 灯光3
	[1043] = { config_id = 1043, gadget_id = 70310105, pos = { x = 0.000, y = 0.000, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 发奖相关
	[1046] = { config_id = 1046, gadget_id = 70360001, pos = { x = 0.063, y = 0.147, z = 8.240 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 发奖相关
	[1048] = { config_id = 1048, gadget_id = 70210106, pos = { x = 0.063, y = 0.147, z = 8.240 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "女士", persistent = true, boss_chest = { monster_config_id = 1004, resin=60, life_time = 1800, take_num = 1} }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 添加低温空气墙
	{ config_id = 1001002, name = "ANY_MONSTER_LIVE_1002", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_1002", action = "action_EVENT_ANY_MONSTER_LIVE_1002" },
	-- 切换高温，移除屏风，添加高温空气墙
	{ config_id = 1001005, name = "ANY_MONSTER_LIVE_1005", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_1005", action = "action_EVENT_ANY_MONSTER_LIVE_1005" },
	-- 播放CS，移除低温空气墙
	{ config_id = 1001006, name = "ANY_MONSTER_DIE_1006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1006", action = "action_EVENT_ANY_MONSTER_DIE_1006" },
	-- 载入屏风
	{ config_id = 1001028, name = "ANY_MONSTER_LIVE_1028", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_1028", action = "action_EVENT_ANY_MONSTER_LIVE_1028" },
	-- 天气2
	{ config_id = 1001031, name = "SPECIFIC_MONSTER_HP_CHANGE_1031", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "1003", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_1031", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_1031" },
	-- 天气3
	{ config_id = 1001032, name = "ANY_MONSTER_LIVE_1032", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_1032", action = "action_EVENT_ANY_MONSTER_LIVE_1032" },
	-- 切换灯光
	{ config_id = 1001044, name = "SPECIFIC_MONSTER_HP_CHANGE_1044", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "1003", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_1044", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_1044" },
	-- 发奖相关
	{ config_id = 1001045, name = "ANY_MONSTER_DIE_1045", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1045", action = "action_EVENT_ANY_MONSTER_DIE_1045", trigger_count = 0 },
	-- 发奖相关
	{ config_id = 1001047, name = "GADGET_STATE_CHANGE_1047", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_1047", action = "action_EVENT_GADGET_STATE_CHANGE_1047", trigger_count = 0 },
	-- 切换灯光2
	{ config_id = 1001049, name = "GADGET_CREATE_1049", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_1049", action = "action_EVENT_GADGET_CREATE_1049", trigger_count = 0 }
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
		monsters = { 1003 },
		gadgets = { 1029, 1046 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_1002", "ANY_MONSTER_LIVE_1005", "ANY_MONSTER_DIE_1006", "ANY_MONSTER_LIVE_1028", "SPECIFIC_MONSTER_HP_CHANGE_1031", "ANY_MONSTER_LIVE_1032", "SPECIFIC_MONSTER_HP_CHANGE_1044", "ANY_MONSTER_DIE_1045", "GADGET_STATE_CHANGE_1047", "GADGET_CREATE_1049" },
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
		gadgets = { 1008, 1009, 1010, 1011, 1012, 1013, 1014, 1015, 1016, 1017, 1018, 1019, 1020, 1021, 1022, 1023, 1024, 1025, 1026, 1027, 1033, 1034, 1035, 1036, 1037, 1038, 1039, 1040, 1041 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 1007, 1043 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
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
function condition_EVENT_ANY_MONSTER_LIVE_1002(context, evt)
	if 1003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_1002(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220115001, 2)
	
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
	    ScriptLib.RemoveExtraGroupSuite(context, 220115001, 2)
	
	-- 移除屏风
	    ScriptLib.RemoveExtraGroupSuite(context, 220115001, 3)
	-- 添加高温空气墙
	    ScriptLib.AddExtraGroupSuite(context, 220115001, 4)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_1028(context, evt)
	if 1003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_1028(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220115001, 3)
	
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
	ScriptLib.SetWeatherAreaState(context, 10033,1)
	
	ScriptLib.PrintContextLog(context,"weather!LX2222")
	
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
	ScriptLib.SetWeatherAreaState(context, 10034,1)
	
	ScriptLib.PrintContextLog(context,"weather!LX3333")
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_1044(context, evt)
	--[[判断指定configid的怪物的血量小于%21时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 21 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_1044(context, evt)
	-- 创建id为1042的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1042 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220115001, EntityType.GADGET, 1041 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1045(context, evt)
	if 1004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1045(context, evt)
	-- 将configid为 1046 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1046, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_1047(context, evt)
	if 1046 ~= evt.param2 or GadgetState.Action01 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_1047(context, evt)
	-- 创建id为1048的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1048 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_1049(context, evt)
	if 1043 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_1049(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220115001, EntityType.GADGET, 1042 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

require "V2_1/Boss_LaSignora"