-- 基础信息
local base_info = {
	group_id = 133315008
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 8003, monster_id = 25310201, pos = { x = -30.667, y = 191.209, z = 2826.781 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "中级镀金旅团", affix = { 1007, 1009 }, isElite = true, pose_id = 1, title_id = 10112, special_name_id = 10145, area_id = 20 },
	{ config_id = 8008, monster_id = 25210401, pos = { x = -43.411, y = 192.951, z = 2833.604 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "镀金旅团", pose_id = 9001, area_id = 20 },
	{ config_id = 8013, monster_id = 25210301, pos = { x = -19.666, y = 195.269, z = 2842.532 }, rot = { x = 0.000, y = 268.807, z = 0.000 }, level = 27, drop_tag = "镀金旅团", disableWander = true, area_id = 20 },
	{ config_id = 8014, monster_id = 25210201, pos = { x = -14.218, y = 196.971, z = 2853.061 }, rot = { x = 0.000, y = 215.917, z = 0.000 }, level = 27, drop_tag = "镀金旅团", disableWander = true, pose_id = 9001, area_id = 20 },
	{ config_id = 8017, monster_id = 25210501, pos = { x = -60.976, y = 186.438, z = 2807.304 }, rot = { x = 0.000, y = 38.669, z = 0.000 }, level = 27, drop_tag = "镀金旅团", disableWander = true, pose_id = 9001, area_id = 20 },
	{ config_id = 8018, monster_id = 25210303, pos = { x = -64.591, y = 185.808, z = 2811.967 }, rot = { x = 0.000, y = 100.569, z = 0.000 }, level = 27, drop_tag = "镀金旅团", disableWander = true, pose_id = 9501, area_id = 20 }
}

-- NPC
npcs = {
	{ config_id = 8021, npc_id = 20768, pos = { x = -56.773, y = 190.440, z = 2825.070 }, rot = { x = 0.000, y = 224.539, z = 0.000 }, area_id = 20 },
	{ config_id = 8025, npc_id = 20826, pos = { x = -26.221, y = 200.960, z = 2896.493 }, rot = { x = 0.000, y = 278.308, z = 0.000 }, area_id = 20 },
	{ config_id = 8029, npc_id = 20827, pos = { x = -8.657, y = 202.170, z = 2847.769 }, rot = { x = 0.000, y = 285.863, z = 0.000 }, area_id = 20 },
	{ config_id = 8030, npc_id = 20828, pos = { x = -66.779, y = 215.509, z = 2877.537 }, rot = { x = 0.000, y = 45.479, z = 0.000 }, area_id = 20 }
}

-- 装置
gadgets = {
	{ config_id = 8005, gadget_id = 70310001, pos = { x = -160.284, y = 205.334, z = 2856.701 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 20 },
	{ config_id = 8006, gadget_id = 70310001, pos = { x = -159.429, y = 205.209, z = 2848.473 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 20 },
	{ config_id = 8007, gadget_id = 70220005, pos = { x = -23.734, y = 247.909, z = 2913.979 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 8009, gadget_id = 70220005, pos = { x = -24.743, y = 247.757, z = 2913.560 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 8010, gadget_id = 70220005, pos = { x = -115.242, y = 215.798, z = 2926.241 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 8011, gadget_id = 70310001, pos = { x = -13.752, y = 197.337, z = 2848.065 }, rot = { x = 6.241, y = 7.825, z = 1.209 }, level = 27, state = GadgetState.GearStart, area_id = 20 },
	{ config_id = 8012, gadget_id = 70220005, pos = { x = -116.258, y = 215.813, z = 2926.745 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 8015, gadget_id = 70210102, pos = { x = -66.251, y = 214.629, z = 2877.513 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 500301, drop_count = 1, isOneoff = true, persistent = true, area_id = 20 },
	{ config_id = 8016, gadget_id = 70310001, pos = { x = -58.029, y = 186.613, z = 2805.637 }, rot = { x = 11.693, y = 17.374, z = 358.122 }, level = 27, state = GadgetState.GearStart, area_id = 20 },
	{ config_id = 8019, gadget_id = 70310001, pos = { x = -20.827, y = 247.867, z = 2908.557 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 20 },
	{ config_id = 8020, gadget_id = 70950135, pos = { x = -60.620, y = 186.880, z = 2805.065 }, rot = { x = 12.356, y = 0.186, z = 354.807 }, level = 27, area_id = 20 },
	{ config_id = 8022, gadget_id = 70310001, pos = { x = -21.519, y = 248.077, z = 2914.091 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 20 },
	{ config_id = 8026, gadget_id = 70210102, pos = { x = -13.947, y = 196.847, z = 2854.493 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 500301, drop_count = 1, isOneoff = true, persistent = true, area_id = 20 },
	{ config_id = 8027, gadget_id = 71700434, pos = { x = -15.813, y = 196.430, z = 2861.802 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 8028, gadget_id = 71700434, pos = { x = -64.176, y = 186.836, z = 2806.366 }, rot = { x = 14.012, y = 359.560, z = 356.424 }, level = 27, area_id = 20 },
	{ config_id = 8032, gadget_id = 70300104, pos = { x = -13.441, y = 196.679, z = 2856.430 }, rot = { x = 1.833, y = 161.026, z = 9.570 }, level = 27, area_id = 20 },
	{ config_id = 8035, gadget_id = 70220063, pos = { x = -58.604, y = 186.732, z = 2804.219 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 8036, gadget_id = 70220063, pos = { x = -66.668, y = 214.392, z = 2877.926 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 8037, gadget_id = 70220050, pos = { x = -9.943, y = 196.963, z = 2853.511 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 8038, gadget_id = 70310001, pos = { x = -28.574, y = 196.937, z = 2893.087 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 20 },
	{ config_id = 8039, gadget_id = 71700432, pos = { x = -62.882, y = 186.640, z = 2806.567 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 }
}

-- 区域
regions = {
	{ config_id = 8023, shape = RegionShape.SPHERE, radius = 3, pos = { x = -62.816, y = 187.311, z = 2806.560 }, area_id = 20 },
	{ config_id = 8041, shape = RegionShape.POLYGON, pos = { x = -47.136, y = 193.313, z = 2846.224 }, height = 58.629, point_array = { { x = -15.413, y = 2893.792 }, { x = -4.862, y = 2839.613 }, { x = -52.430, y = 2799.103 }, { x = -60.724, y = 2798.655 }, { x = -89.411, y = 2803.579 }, { x = -82.347, y = 2844.259 } }, area_id = 20 }
}

-- 触发器
triggers = {
	{ config_id = 1008001, name = "ANY_MONSTER_DIE_8001", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_8001", action = "action_EVENT_ANY_MONSTER_DIE_8001" },
	{ config_id = 1008002, name = "ANY_MONSTER_DIE_8002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_8002", action = "action_EVENT_ANY_MONSTER_DIE_8002" },
	{ config_id = 1008023, name = "ENTER_REGION_8023", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_8023" },
	{ config_id = 1008024, name = "MONSTER_BATTLE_8024", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_8024" },
	{ config_id = 1008031, name = "GROUP_LOAD_8031", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_8031", action = "action_EVENT_GROUP_LOAD_8031", trigger_count = 0 },
	{ config_id = 1008033, name = "GADGET_STATE_CHANGE_8033", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_8033", action = "action_EVENT_GADGET_STATE_CHANGE_8033" },
	{ config_id = 1008034, name = "GADGET_STATE_CHANGE_8034", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_8034", action = "action_EVENT_GADGET_STATE_CHANGE_8034" }
}

-- 变量
variables = {
	{ config_id = 1, name = "baodi", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 8004, gadget_id = 70300110, pos = { x = -62.878, y = 187.309, z = 2806.540 }, rot = { x = 0.000, y = 60.388, z = 0.000 }, level = 27, area_id = 20 }
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
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 8008, 8013, 8014, 8017, 8018 },
		gadgets = { 8005, 8006, 8007, 8009, 8010, 8011, 8012, 8016, 8019, 8020, 8022, 8027, 8028, 8032, 8035, 8036, 8037, 8038, 8039 },
		regions = { 8041 },
		triggers = { "ANY_MONSTER_DIE_8001", "GROUP_LOAD_8031" },
		npcs = { 8021, 8025, 8029, 8030 },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 8003 },
		gadgets = { },
		regions = { 8041 },
		triggers = { "ANY_MONSTER_DIE_8002", "MONSTER_BATTLE_8024", "GROUP_LOAD_8031" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 8005, 8006, 8011, 8015, 8016, 8019, 8020, 8022, 8026, 8027, 8028, 8032, 8035, 8036, 8037, 8038, 8039 },
		regions = { 8023 },
		triggers = { "ENTER_REGION_8023", "GADGET_STATE_CHANGE_8033", "GADGET_STATE_CHANGE_8034" },
		npcs = { 8021, 8025, 8029, 8030 },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		npcs = { 8021, 8025, 8029, 8030 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_8001(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_8001(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133315008, 3)
	
	-- 触发镜头注目，注目位置为坐标{x=-30.66696, y=191.2091, z=2826.781}，持续时间为1秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-30.66696, y=191.2091, z=2826.781}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 1, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_8002(context, evt)
	--判断死亡怪物的configid是否为 8003
	if evt.param1 ~= 8003 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_8002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "q7305801") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 针对当前group内变量名为 "baodi" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "baodi", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_8023(context, evt)
	-- 调用提示id为 33150019 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33150019) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标{x=-62.88247, y=186.6395, z=2806.567}，持续时间为1秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-62.88247, y=186.6395, z=2806.567}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 1, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_8024(context, evt)
	-- 调用提示id为 33150014 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33150014) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_8031(context, evt)
	-- 判断变量"baodi"为1
	if ScriptLib.GetGroupVariableValue(context, "baodi") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_8031(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "q7305801") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_8033(context, evt)
	if 8026 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_8033(context, evt)
	-- 调用提示id为 33150017 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33150017) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_8034(context, evt)
	if 8015 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_8034(context, evt)
	-- 调用提示id为 33150018 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33150018) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end