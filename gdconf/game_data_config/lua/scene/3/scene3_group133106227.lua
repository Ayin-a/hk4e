-- 基础信息
local base_info = {
	group_id = 133106227
}

-- Trigger变量
local defs = {
	steps = 3,
	config_id = 227009,
	routes = { [1]={route=310600002,points={1,2,3}},  [2]={route=310600002,points={3,6,7}},  [3]={route=310600002,points={7,8,9}},  },
	shake_point = 8
}

-- DEFS_MISCS
local shootLightMap={[227003]=227017,[227004]=227018,[227005]=227019}

local lawfulGadgets =
{
        [1]={227003,227004},
        [2]={227003,227004},
        [3]={227005}
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
	{ config_id = 227001, gadget_id = 70330021, pos = { x = -555.275, y = 135.551, z = 1812.824 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 19 },
	{ config_id = 227002, gadget_id = 70330021, pos = { x = -519.083, y = 136.453, z = 1806.626 }, rot = { x = 339.150, y = 46.140, z = 356.703 }, level = 32, persistent = true, area_id = 19 },
	{ config_id = 227003, gadget_id = 70330145, pos = { x = -546.096, y = 136.753, z = 1820.503 }, rot = { x = 0.000, y = 131.692, z = 0.000 }, level = 32, state = GadgetState.GearStop, isOneoff = true, persistent = true, area_id = 19 },
	{ config_id = 227004, gadget_id = 70330145, pos = { x = -524.723, y = 135.903, z = 1815.078 }, rot = { x = 0.000, y = 79.374, z = 0.000 }, level = 32, state = GadgetState.GearStop, isOneoff = true, persistent = true, area_id = 19 },
	{ config_id = 227005, gadget_id = 70330145, pos = { x = -506.955, y = 126.169, z = 1831.284 }, rot = { x = 355.119, y = 296.071, z = -0.001 }, level = 32, state = GadgetState.GearStop, isOneoff = true, persistent = true, area_id = 19 },
	{ config_id = 227008, gadget_id = 70330021, pos = { x = -515.785, y = 125.438, z = 1828.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 19 },
	{ config_id = 227009, gadget_id = 70330148, pos = { x = -528.177, y = 138.350, z = 1841.646 }, rot = { x = 0.000, y = 212.039, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 19 },
	{ config_id = 227013, gadget_id = 70330021, pos = { x = -501.021, y = 133.939, z = 1827.333 }, rot = { x = 0.000, y = 339.782, z = 0.000 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 227014, gadget_id = 70330213, pos = { x = -528.053, y = 125.041, z = 1841.008 }, rot = { x = 2.098, y = 211.094, z = 4.066 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 227015, gadget_id = 70330212, pos = { x = -526.599, y = 127.559, z = 1841.247 }, rot = { x = 352.705, y = 212.039, z = 21.530 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 227016, gadget_id = 70360001, pos = { x = -527.734, y = 127.577, z = 1828.190 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 19 },
	{ config_id = 227017, gadget_id = 70290339, pos = { x = -536.269, y = 135.126, z = 1828.318 }, rot = { x = 28.478, y = 150.394, z = 15.185 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 227018, gadget_id = 70290339, pos = { x = -520.910, y = 139.080, z = 1826.860 }, rot = { x = 351.447, y = 104.484, z = 350.083 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 227019, gadget_id = 70290339, pos = { x = -518.940, y = 132.400, z = 1834.830 }, rot = { x = 359.236, y = 198.711, z = 209.045 }, level = 36, persistent = true, area_id = 19 }
}

-- 区域
regions = {
	{ config_id = 227012, shape = RegionShape.SPHERE, radius = 33, pos = { x = -533.396, y = 131.173, z = 1815.631 }, area_id = 19 }
}

-- 触发器
triggers = {
	{ config_id = 1227006, name = "GADGET_STATE_CHANGE_227006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_227006", action = "action_EVENT_GADGET_STATE_CHANGE_227006" },
	{ config_id = 1227010, name = "QUEST_START_227010", event = EventType.EVENT_QUEST_START, source = "7104414", condition = "condition_EVENT_QUEST_START_227010", action = "action_EVENT_QUEST_START_227010", trigger_count = 0 },
	-- 同时会把一个仙灵group刷到suite1让其显现出来
	{ config_id = 1227011, name = "PLATFORM_REACH_POINT_227011", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_227011", action = "action_EVENT_PLATFORM_REACH_POINT_227011", trigger_count = 0 },
	{ config_id = 1227012, name = "ENTER_REGION_227012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_227012", action = "action_EVENT_ENTER_REGION_227012" },
	{ config_id = 1227021, name = "TIME_AXIS_PASS_227021", event = EventType.EVENT_TIME_AXIS_PASS, source = "killlightriver", condition = "condition_EVENT_TIME_AXIS_PASS_227021", action = "action_EVENT_TIME_AXIS_PASS_227021", trigger_count = 0 },
	{ config_id = 1227022, name = "GROUP_LOAD_227022", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_227022", action = "action_EVENT_GROUP_LOAD_227022", trigger_count = 0 }
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
		gadgets = { 227016 },
		regions = { 227012 },
		triggers = { "GADGET_STATE_CHANGE_227006", "QUEST_START_227010", "PLATFORM_REACH_POINT_227011", "ENTER_REGION_227012", "TIME_AXIS_PASS_227021", "GROUP_LOAD_227022" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 227001, 227002, 227003, 227004, 227005, 227008, 227009, 227013, 227017, 227018, 227019 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_227006" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 227014, 227015 },
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
function condition_EVENT_GADGET_STATE_CHANGE_227006(context, evt)
	if GadgetState.GearStart == evt.param1 then
		if 227003 == evt.param2 or 227004 == evt.param2 or 227005 == evt.param2 then
			return true
		end
	end
	
	return false
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_227006(context, evt)
	-- 调用提示id为 710445001 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 710445001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_227010(context, evt)
	-- 判断变量"MoveStep"为0
	if ScriptLib.GetGroupVariableValue(context, "MoveStep") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_227010(context, evt)
	-- 将本组内变量名为 "questStarted" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "questStarted", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 227003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 227003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 227004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 227004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 227005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 227005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_227011(context, evt)
	-- 判断变量"MoveStep"为3
	if ScriptLib.GetGroupVariableValue(context, "MoveStep") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_227011(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7104414finish") then
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
	
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133106630, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_227012(context, evt)
	if evt.param1 ~= 227012 then return false end
	
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
function action_EVENT_ENTER_REGION_227012(context, evt)
	-- 调用提示id为 710441301 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 710441301) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标{x=-528.177, y=138.35, z=1841.646}，持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-528.177, y=138.35, z=1841.646}
	  local pos_follow = {x=-528.177, y=138.35, z=1841.646}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = true, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_227021(context, evt)
	if "killlightriver" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_227021(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133106492, monsters = {}, gadgets = {492002} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_227022(context, evt)
	-- 判断变量"questFinished"为1
	if ScriptLib.GetGroupVariableValue(context, "questFinished") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_227022(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7104414finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133106492, monsters = {}, gadgets = {492002} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	return 0
end

require "V2_6/CalculateBulletForward"