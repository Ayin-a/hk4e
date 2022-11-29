-- 基础信息
local base_info = {
	group_id = 133106444
}

-- Trigger变量
local defs = {
	steps = 4,
	config_id = 444009,
	routes = { [1]={route=310600003,points={1,2,3}},  [2]={route=310600003,points={3,4,5}},  [3]={route=310600003,points={5,6,7}},  [4]={route=310600003,points={7,8,9}},  },
	shake_point = 8
}

-- DEFS_MISCS
local shootLightMap={[444003]=444013,[444004]=444015,[444005]=444016,[444006]=444017}

local lawfulGadgets =
{
        [1]={444003},
        [2]={444006},
        [3]={444004},
        [4]={444005}
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
	{ config_id = 444001, gadget_id = 70330021, pos = { x = -835.199, y = 112.179, z = 1924.291 }, rot = { x = 0.000, y = 62.069, z = 0.000 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 444002, gadget_id = 70330021, pos = { x = -801.494, y = 128.371, z = 1947.772 }, rot = { x = 8.821, y = 4.369, z = 4.090 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 444003, gadget_id = 70330145, pos = { x = -808.816, y = 126.562, z = 1946.904 }, rot = { x = 0.000, y = 254.591, z = 0.000 }, level = 36, state = GadgetState.GearStop, isOneoff = true, persistent = true, area_id = 19 },
	{ config_id = 444004, gadget_id = 70330145, pos = { x = -817.451, y = 117.342, z = 1948.830 }, rot = { x = 0.000, y = 139.849, z = 356.000 }, level = 36, state = GadgetState.GearStop, isOneoff = true, persistent = true, area_id = 19 },
	{ config_id = 444005, gadget_id = 70330145, pos = { x = -830.720, y = 111.104, z = 1929.784 }, rot = { x = 7.135, y = 22.163, z = 0.000 }, level = 36, state = GadgetState.GearStop, isOneoff = true, persistent = true, area_id = 19 },
	{ config_id = 444006, gadget_id = 70330145, pos = { x = -841.515, y = 122.023, z = 1940.693 }, rot = { x = 0.000, y = 85.392, z = 0.000 }, level = 36, state = GadgetState.GearStop, isOneoff = true, persistent = true, area_id = 19 },
	{ config_id = 444007, gadget_id = 70330021, pos = { x = -807.162, y = 123.423, z = 1929.551 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 444008, gadget_id = 70330021, pos = { x = -816.555, y = 118.851, z = 1956.803 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 444009, gadget_id = 70330148, pos = { x = -825.660, y = 129.660, z = 1942.180 }, rot = { x = 0.000, y = 33.505, z = 0.000 }, level = 36, is_use_point_array = true, area_id = 19 },
	{ config_id = 444013, gadget_id = 70290338, pos = { x = -814.715, y = 128.898, z = 1942.329 }, rot = { x = 7.876, y = 323.597, z = 348.528 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 444014, gadget_id = 70330021, pos = { x = -843.215, y = 122.449, z = 1933.991 }, rot = { x = 36.659, y = 355.873, z = 347.587 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 444015, gadget_id = 70290338, pos = { x = -819.040, y = 122.580, z = 1943.800 }, rot = { x = 357.065, y = 298.673, z = 311.065 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 444016, gadget_id = 70290340, pos = { x = -829.234, y = 118.370, z = 1937.372 }, rot = { x = 354.233, y = 99.979, z = 313.232 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 444017, gadget_id = 70290340, pos = { x = -834.180, y = 123.716, z = 1943.720 }, rot = { x = 356.436, y = 164.817, z = 347.098 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 444018, gadget_id = 70330213, pos = { x = -825.340, y = 99.630, z = 1941.860 }, rot = { x = 359.966, y = 146.167, z = 0.145 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 444019, gadget_id = 70330212, pos = { x = -824.155, y = 102.031, z = 1942.381 }, rot = { x = 14.291, y = 33.505, z = 344.248 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 444021, gadget_id = 70290200, pos = { x = -828.093, y = 104.184, z = 1951.649 }, rot = { x = 356.786, y = 0.197, z = 352.979 }, level = 36, area_id = 19 },
	{ config_id = 444027, gadget_id = 70690011, pos = { x = -835.153, y = 97.400, z = 1942.478 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, area_id = 19 }
}

-- 区域
regions = {
	{ config_id = 444012, shape = RegionShape.SPHERE, radius = 30, pos = { x = -821.518, y = 127.670, z = 1953.961 }, area_id = 19 }
}

-- 触发器
triggers = {
	{ config_id = 1444010, name = "QUEST_START_444010", event = EventType.EVENT_QUEST_START, source = "7104416", condition = "condition_EVENT_QUEST_START_444010", action = "action_EVENT_QUEST_START_444010", trigger_count = 0 },
	{ config_id = 1444011, name = "PLATFORM_REACH_POINT_444011", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_444011", action = "action_EVENT_PLATFORM_REACH_POINT_444011", trigger_count = 0 },
	{ config_id = 1444012, name = "ENTER_REGION_444012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_444012", action = "action_EVENT_ENTER_REGION_444012" },
	{ config_id = 1444020, name = "TIME_AXIS_PASS_444020", event = EventType.EVENT_TIME_AXIS_PASS, source = "killlightriver", condition = "condition_EVENT_TIME_AXIS_PASS_444020", action = "action_EVENT_TIME_AXIS_PASS_444020", trigger_count = 0 },
	{ config_id = 1444022, name = "GADGET_STATE_CHANGE_444022", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_444022", action = "action_EVENT_GADGET_STATE_CHANGE_444022" },
	{ config_id = 1444026, name = "GROUP_LOAD_444026", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_444026", action = "action_EVENT_GROUP_LOAD_444026", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "questStarted", value = 0, no_refresh = true },
	{ config_id = 2, name = "questFinished", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 444023, monster_id = 21010101, pos = { x = -817.836, y = 118.353, z = 1955.616 }, rot = { x = 0.000, y = 47.881, z = 0.000 }, level = 36, drop_id = 1000100, pose_id = 9017, area_id = 19 }
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
		gadgets = { 444021 },
		regions = { 444012 },
		triggers = { "QUEST_START_444010", "PLATFORM_REACH_POINT_444011", "ENTER_REGION_444012", "TIME_AXIS_PASS_444020", "GADGET_STATE_CHANGE_444022", "GROUP_LOAD_444026" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 444001, 444002, 444003, 444004, 444005, 444006, 444007, 444008, 444009, 444013, 444014, 444015, 444016, 444017, 444027 },
		regions = { 444012 },
		triggers = { "QUEST_START_444010", "PLATFORM_REACH_POINT_444011", "ENTER_REGION_444012", "TIME_AXIS_PASS_444020", "GADGET_STATE_CHANGE_444022" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 444018, 444019 },
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
function condition_EVENT_QUEST_START_444010(context, evt)
	-- 判断变量"MoveStep"为0
	if ScriptLib.GetGroupVariableValue(context, "MoveStep") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_444010(context, evt)
	-- 将本组内变量名为 "questStarted" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "questStarted", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 444003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 444003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 444004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 444004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 444005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 444005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 444006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 444006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_444011(context, evt)
	-- 判断变量"MoveStep"为4
	if ScriptLib.GetGroupVariableValue(context, "MoveStep") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_444011(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7104416finish") then
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
function condition_EVENT_ENTER_REGION_444012(context, evt)
	if evt.param1 ~= 444012 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"questStarted"为1
	if ScriptLib.GetGroupVariableValue(context, "questStarted") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_444012(context, evt)
	-- 调用提示id为 710441302 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 710441302) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标{x=-825.4919, y=129.5464, z=1942.051}，持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-825.4919, y=129.5464, z=1942.051}
	  local pos_follow = {x=-825.4919, y=129.5464, z=1942.051}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = true, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_444020(context, evt)
	if "killlightriver" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_444020(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133106492, monsters = {}, gadgets = {492004} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_444022(context, evt)
	if GadgetState.GearStart == evt.param1 then
		if 444003 == evt.param2 or 444004 == evt.param2 or 444005 == evt.param2 or 444006 == evt.param2 then
			return true
		end
	end
	
	return false
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_444022(context, evt)
	-- 调用提示id为 710445001 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 710445001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_444026(context, evt)
	-- 判断变量"questFinished"为1
	if ScriptLib.GetGroupVariableValue(context, "questFinished") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_444026(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7104416finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133106492, monsters = {}, gadgets = {492004} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	return 0
end

require "V2_6/CalculateBulletForward"