-- 基础信息
local base_info = {
	group_id = 133210217
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 217004, monster_id = 25010301, pos = { x = -4066.637, y = 200.588, z = -684.524 }, rot = { x = 0.000, y = 77.596, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 1018 }, area_id = 17 },
	{ config_id = 217005, monster_id = 25010301, pos = { x = -4067.387, y = 201.447, z = -680.512 }, rot = { x = 0.000, y = 105.832, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 1018 }, area_id = 17 },
	{ config_id = 217006, monster_id = 25030201, pos = { x = -4065.460, y = 200.809, z = -683.182 }, rot = { x = 0.000, y = 90.843, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 17 },
	{ config_id = 217007, monster_id = 25070101, pos = { x = -4064.110, y = 201.089, z = -681.560 }, rot = { x = 0.000, y = 95.067, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 1006, 1009 }, area_id = 17 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 217010, shape = RegionShape.SPHERE, radius = 11, pos = { x = -4042.552, y = 200.289, z = -682.446 }, area_id = 17 }
}

-- 触发器
triggers = {
	{ config_id = 1217001, name = "QUEST_START_217001", event = EventType.EVENT_QUEST_START, source = "7216504", condition = "", action = "action_EVENT_QUEST_START_217001", trigger_count = 0 },
	{ config_id = 1217002, name = "ANY_MONSTER_DIE_217002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_217002", action = "action_EVENT_ANY_MONSTER_DIE_217002" },
	{ config_id = 1217003, name = "ANY_MONSTER_DIE_217003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_217003", action = "action_EVENT_ANY_MONSTER_DIE_217003" },
	{ config_id = 1217008, name = "TIME_AXIS_PASS_217008", event = EventType.EVENT_TIME_AXIS_PASS, source = "addmonster", condition = "condition_EVENT_TIME_AXIS_PASS_217008", action = "action_EVENT_TIME_AXIS_PASS_217008" },
	{ config_id = 1217009, name = "TIME_AXIS_PASS_217009", event = EventType.EVENT_TIME_AXIS_PASS, source = "addmonster", condition = "condition_EVENT_TIME_AXIS_PASS_217009", action = "action_EVENT_TIME_AXIS_PASS_217009" },
	{ config_id = 1217010, name = "ENTER_REGION_217010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_217010", action = "action_EVENT_ENTER_REGION_217010", trigger_count = 0 },
	{ config_id = 1217011, name = "ANY_MONSTER_DIE_217011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_217011", action = "action_EVENT_ANY_MONSTER_DIE_217011" },
	{ config_id = 1217012, name = "QUEST_FINISH_217012", event = EventType.EVENT_QUEST_FINISH, source = "7216504", condition = "", action = "action_EVENT_QUEST_FINISH_217012", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "questfinish", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	io_type = 1,
	suite = 1,
	end_suite = 0,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suite_disk = {
	[1] = {
		gadgets = {
		},
		monsters = {
		},
		regions = { },
		triggers = { "QUEST_START_217001" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "questfinish", value = 0, no_refresh = true }
		}
	},
	[2] = {
		gadgets = {
		},
		monsters = {
		},
		regions = { 217010 },
		triggers = { "TIME_AXIS_PASS_217008", "TIME_AXIS_PASS_217009", "ENTER_REGION_217010" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "questfinish", value = 0, no_refresh = true }
		}
	},
	[3] = {
		gadgets = {
		},
		monsters = {
			{ config_id = 217004 },
			{ config_id = 217005 },
			{ config_id = 217006 },
			{ config_id = 217007 }
		},
		regions = { },
		triggers = { "ANY_MONSTER_DIE_217002", "ANY_MONSTER_DIE_217003", "ANY_MONSTER_DIE_217011", "QUEST_FINISH_217012" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "questfinish", value = 0, no_refresh = true }
		}
	},
	[4] = {
		gadgets = {
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
			{ config_id = 1, name = "questfinish", value = 0, no_refresh = true }
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_START_217001(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210217, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_217002(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	-- 判断变量"QuestState"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "QuestState", 133210071) ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_217002(context, evt)
	-- 调用提示id为 32100136 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32100136) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7216504") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_217003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	-- 判断变量"QuestState"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "QuestState", 133210071) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_217003(context, evt)
	-- 调用提示id为 32100137 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32100137) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7216504") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_217008(context, evt)
	if evt.param1 ~= 1 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_217008(context, evt)
	-- 判断变量"QuestState"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "QuestState", 133210071) == 0 then
	
	-- 调用提示id为 32100133 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32100133) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	elseif ScriptLib.GetGroupVariableValueByGroup(context, "QuestState", 133210071) == 1 or ScriptLib.GetGroupVariableValueByGroup(context, "QuestState", 133210071) == 2 then
	if 0 ~= ScriptLib.ShowReminder(context, 32100184) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_217009(context, evt)
	if evt.param1 ~= 2 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_217009(context, evt)
	-- 触发镜头注目，注目位置为坐标（-4068，201，-682.41），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-4068, y=201, z=-682.41}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210217, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_217010(context, evt)
	if evt.param1 ~= 217010 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_217010(context, evt)
	-- 创建标识为"addmonster"，时间节点为{1,4}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "addmonster", {1,4}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_217011(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	-- 判断变量"QuestState"为2
	if ScriptLib.GetGroupVariableValueByGroup(context, "QuestState", 133210071) ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_217011(context, evt)
	-- 调用提示id为 32100138 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32100138) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7216504") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_217012(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210217, 4)
	
	return 0
end