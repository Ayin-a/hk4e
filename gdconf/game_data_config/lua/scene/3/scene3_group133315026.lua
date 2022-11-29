-- 基础信息
local base_info = {
	group_id = 133315026
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 26003, monster_id = 20011001, pos = { x = 142.255, y = 231.880, z = 2388.440 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, area_id = 20 },
	{ config_id = 26006, monster_id = 21010101, pos = { x = 243.620, y = 250.484, z = 2486.485 }, rot = { x = 0.000, y = 231.467, z = 0.000 }, level = 27, drop_id = 1000100, pose_id = 9010, area_id = 20 },
	{ config_id = 26007, monster_id = 21010101, pos = { x = 242.892, y = 250.078, z = 2481.593 }, rot = { x = 0.000, y = 15.860, z = 0.000 }, level = 27, drop_id = 1000100, pose_id = 9013, area_id = 20 },
	{ config_id = 26008, monster_id = 21010101, pos = { x = 239.244, y = 250.591, z = 2485.385 }, rot = { x = 0.000, y = 107.297, z = 0.000 }, level = 27, drop_id = 1000100, pose_id = 9014, area_id = 20 },
	{ config_id = 26010, monster_id = 21010701, pos = { x = 254.479, y = 251.974, z = 2484.482 }, rot = { x = 0.000, y = 283.884, z = 0.000 }, level = 27, drop_id = 1000100, title_id = 10111, special_name_id = 10144, area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 26002, gadget_id = 70220013, pos = { x = 246.316, y = 251.755, z = 2473.847 }, rot = { x = 315.750, y = 333.907, z = 59.363 }, level = 27, area_id = 20 },
	{ config_id = 26005, gadget_id = 70220013, pos = { x = 246.951, y = 251.530, z = 2475.966 }, rot = { x = 353.989, y = 330.858, z = 82.515 }, level = 27, area_id = 20 },
	{ config_id = 26014, gadget_id = 70290479, pos = { x = 243.991, y = 249.924, z = 2484.268 }, rot = { x = 352.608, y = 109.039, z = 3.300 }, level = 27, area_id = 20 },
	{ config_id = 26016, gadget_id = 70310001, pos = { x = 228.602, y = 253.703, z = 2480.683 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 20 },
	{ config_id = 26017, gadget_id = 70310001, pos = { x = 230.014, y = 254.714, z = 2491.972 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 20 },
	{ config_id = 26018, gadget_id = 70310001, pos = { x = 257.841, y = 252.888, z = 2477.082 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 20 },
	{ config_id = 26019, gadget_id = 70310001, pos = { x = 258.524, y = 252.633, z = 2486.600 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 20 },
	{ config_id = 26020, gadget_id = 70360286, pos = { x = 139.604, y = 232.398, z = 2390.207 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 }
}

-- 区域
regions = {
	{ config_id = 26001, shape = RegionShape.SPHERE, radius = 20, pos = { x = 138.019, y = 232.108, z = 2387.521 }, area_id = 20 }
}

-- 触发器
triggers = {
	{ config_id = 1026001, name = "ENTER_REGION_26001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_26001" },
	{ config_id = 1026004, name = "ANY_MONSTER_DIE_26004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_26004", action = "action_EVENT_ANY_MONSTER_DIE_26004" },
	{ config_id = 1026009, name = "ANY_MONSTER_DIE_26009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_26009", action = "action_EVENT_ANY_MONSTER_DIE_26009" },
	{ config_id = 1026011, name = "ANY_MONSTER_DIE_26011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_26011", action = "action_EVENT_ANY_MONSTER_DIE_26011" },
	{ config_id = 1026012, name = "MONSTER_BATTLE_26012", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_26012", trigger_count = 0 },
	{ config_id = 1026013, name = "GROUP_LOAD_26013", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_26013", action = "action_EVENT_GROUP_LOAD_26013", trigger_count = 0 },
	{ config_id = 1026015, name = "QUEST_START_26015", event = EventType.EVENT_QUEST_START, source = "7306710", condition = "condition_EVENT_QUEST_START_26015", action = "action_EVENT_QUEST_START_26015", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "baodi", value = 0, no_refresh = true }
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
		monsters = { 26003 },
		gadgets = { 26020 },
		regions = { 26001 },
		triggers = { "ENTER_REGION_26001", "ANY_MONSTER_DIE_26004" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 26014 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 26006, 26007, 26008 },
		gadgets = { 26002, 26005, 26016, 26017, 26018, 26019 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_26009", "MONSTER_BATTLE_26012", "GROUP_LOAD_26013", "QUEST_START_26015" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 26010 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_26011" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
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

-- 触发操作
function action_EVENT_ENTER_REGION_26001(context, evt)
	-- 触发镜头注目，注目位置为坐标（142，243，2386），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=142, y=243, z=2386}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_26004(context, evt)
	--判断死亡怪物的configid是否为 26003
	if evt.param1 ~= 26003 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_26004(context, evt)
	-- 将configid为 26020 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 26020, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_26009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_26009(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133315026, 5)
	
	-- 触发镜头注目，注目位置为坐标（252，252，2484），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=252, y=252, z=2484}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 调用提示id为 33150028 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33150028) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_26011(context, evt)
	--判断死亡怪物的configid是否为 26010
	if evt.param1 ~= 26010 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_26011(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "q7306710") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133315026, 3)
	
	-- 针对当前group内变量名为 "baodi" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "baodi", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_26012(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133315026, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_26013(context, evt)
	-- 判断变量"baodi"为1
	if ScriptLib.GetGroupVariableValue(context, "baodi") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_26013(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "q7306710") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_26015(context, evt)
	-- 判断变量"baodi"为1
	if ScriptLib.GetGroupVariableValue(context, "baodi") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_26015(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "q7306710") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end