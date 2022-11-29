-- 基础信息
local base_info = {
	group_id = 133212196
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 196002, monster_id = 25080301, pos = { x = -4038.773, y = 203.612, z = -2133.707 }, rot = { x = 0.000, y = 281.578, z = 0.000 }, level = 27, drop_id = 1000100, affix = { 1008, 1009 }, isOneoff = true, pose_id = 1003, title_id = 10030, special_name_id = 10051, area_id = 13 },
	{ config_id = 196008, monster_id = 25080201, pos = { x = -4034.126, y = 203.834, z = -2128.954 }, rot = { x = 0.000, y = 200.868, z = 0.000 }, level = 27, drop_id = 1000100, affix = { 1008, 1009 }, isOneoff = true, pose_id = 1, area_id = 13 },
	{ config_id = 196009, monster_id = 25080201, pos = { x = -4036.798, y = 203.458, z = -2138.650 }, rot = { x = 0.000, y = 305.835, z = 0.000 }, level = 27, drop_id = 1000100, affix = { 1008, 1009 }, isOneoff = true, pose_id = 1, area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 196003, gadget_id = 70210102, pos = { x = -4111.477, y = 201.553, z = -2342.970 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, area_id = 13 }
}

-- 区域
regions = {
	{ config_id = 196005, shape = RegionShape.SPHERE, radius = 50, pos = { x = -4038.292, y = 203.592, z = -2133.980 }, area_id = 13 }
}

-- 触发器
triggers = {
	{ config_id = 1196004, name = "GADGET_STATE_CHANGE_196004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_196004", action = "action_EVENT_GADGET_STATE_CHANGE_196004" },
	{ config_id = 1196005, name = "ENTER_REGION_196005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_196005", action = "action_EVENT_ENTER_REGION_196005" },
	{ config_id = 1196007, name = "GROUP_LOAD_196007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_196007", action = "action_EVENT_GROUP_LOAD_196007", trigger_count = 0 },
	{ config_id = 1196010, name = "GROUP_LOAD_196010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_196010", action = "action_EVENT_GROUP_LOAD_196010", trigger_count = 0 },
	{ config_id = 1196011, name = "MONSTER_BATTLE_196011", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_196011", action = "action_EVENT_MONSTER_BATTLE_196011" },
	{ config_id = 1196012, name = "ANY_MONSTER_DIE_196012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_196012", action = "action_EVENT_ANY_MONSTER_DIE_196012" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 196010, monster_id = 25080201, pos = { x = -4034.783, y = 203.673, z = -2135.010 }, rot = { x = 0.000, y = 200.868, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1008, 1009 }, pose_id = 1, area_id = 13 }
	},
	gadgets = {
		{ config_id = 196001, gadget_id = 70310006, pos = { x = -4111.313, y = 201.220, z = -2346.853 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 }
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
		monsters = { 196002 },
		gadgets = { 196003 },
		regions = { 196005 },
		triggers = { "GADGET_STATE_CHANGE_196004", "ENTER_REGION_196005", "GROUP_LOAD_196007", "MONSTER_BATTLE_196011", "ANY_MONSTER_DIE_196012" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 196008, 196009 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_196010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_196004(context, evt)
	if 196003 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_196004(context, evt)
	-- 调用提示id为 321240023 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 321240023) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_196005(context, evt)
	if evt.param1 ~= 196005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_196005(context, evt)
	-- 触发镜头注目，注目位置为坐标（-4038，203，-2133），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-4038, y=203, z=-2133}
	  local pos_follow = {x=-1, y=1, z=1}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = true, follow_pos = pos_follow, is_force_walk = true, is_change_play_mode = true,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 调用提示id为 321240025 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 321240025) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_196007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_196007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133212196") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133212196, suite = 4 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_196010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_196010(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133212196") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_196011(context, evt)
	if 196002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_196011(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212196, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_196012(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_196012(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133212196") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 调用提示id为 321372109 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 321372109) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133212196, suite = 4 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end