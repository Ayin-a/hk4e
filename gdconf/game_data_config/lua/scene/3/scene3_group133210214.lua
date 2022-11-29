-- 基础信息
local base_info = {
	group_id = 133210214
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 214001, monster_id = 25080301, pos = { x = -3772.348, y = 201.319, z = -1337.449 }, rot = { x = 0.000, y = 292.110, z = 0.000 }, level = 32, drop_id = 1000100, isElite = true, pose_id = 1, area_id = 17 },
	{ config_id = 214002, monster_id = 25100101, pos = { x = -3774.817, y = 201.217, z = -1340.151 }, rot = { x = 0.000, y = 315.314, z = 0.000 }, level = 32, drop_id = 1000100, isElite = true, pose_id = 1, area_id = 17 },
	{ config_id = 214005, monster_id = 25080301, pos = { x = -3781.585, y = 200.865, z = -1341.031 }, rot = { x = 0.000, y = 356.678, z = 0.000 }, level = 32, drop_id = 1000100, isElite = true, pose_id = 1, area_id = 17 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 214007, gadget_id = 70211002, pos = { x = -3782.117, y = 202.649, z = -1330.795 }, rot = { x = 355.487, y = 141.539, z = 0.729 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 17 }
}

-- 区域
regions = {
	{ config_id = 214004, shape = RegionShape.SPHERE, radius = 10, pos = { x = -3781.127, y = 201.770, z = -1329.807 }, area_id = 17 }
}

-- 触发器
triggers = {
	{ config_id = 1214003, name = "QUEST_START_214003", event = EventType.EVENT_QUEST_START, source = "7216508", condition = "", action = "action_EVENT_QUEST_START_214003", trigger_count = 0 },
	{ config_id = 1214004, name = "ENTER_REGION_214004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_214004", action = "action_EVENT_ENTER_REGION_214004" },
	{ config_id = 1214006, name = "ANY_MONSTER_DIE_214006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_214006", action = "action_EVENT_ANY_MONSTER_DIE_214006" },
	{ config_id = 1214008, name = "TIME_AXIS_PASS_214008", event = EventType.EVENT_TIME_AXIS_PASS, source = "addmonster", condition = "condition_EVENT_TIME_AXIS_PASS_214008", action = "action_EVENT_TIME_AXIS_PASS_214008" },
	{ config_id = 1214009, name = "TIME_AXIS_PASS_214009", event = EventType.EVENT_TIME_AXIS_PASS, source = "addmonster", condition = "condition_EVENT_TIME_AXIS_PASS_214009", action = "action_EVENT_TIME_AXIS_PASS_214009" },
	{ config_id = 1214010, name = "GADGET_STATE_CHANGE_214010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_214010", action = "action_EVENT_GADGET_STATE_CHANGE_214010" },
	-- 保底完成
	{ config_id = 1214011, name = "QUEST_START_214011", event = EventType.EVENT_QUEST_START, source = "7216508", condition = "", action = "action_EVENT_QUEST_START_214011", trigger_count = 0 }
}

-- 变量
variables = {
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
		triggers = { "QUEST_START_214003", "GADGET_STATE_CHANGE_214010" },
		npcs = { },
		variables = {
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 214007, state = 101 }
		},
		monsters = {
		},
		regions = { 214004 },
		triggers = { "ENTER_REGION_214004", "TIME_AXIS_PASS_214008", "TIME_AXIS_PASS_214009", "GADGET_STATE_CHANGE_214010" },
		npcs = { },
		variables = {
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 214007, state = 101 }
		},
		monsters = {
			{ config_id = 214001 },
			{ config_id = 214002 },
			{ config_id = 214005 }
		},
		regions = { },
		triggers = { "ANY_MONSTER_DIE_214006", "GADGET_STATE_CHANGE_214010" },
		npcs = { },
		variables = {
		}
	},
	[4] = {
		gadgets = {
			{ config_id = 214007, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_214010", "QUEST_START_214011" },
		npcs = { },
		variables = {
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_START_214003(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210214, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_214004(context, evt)
	if evt.param1 ~= 214004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_214004(context, evt)
		-- 将指定group的suiteIndex设为指定suite
	  ScriptLib.SetFlowSuite(context, 133210214, 3)
	
	-- 创建标识为"addmonster"，时间节点为{1,4}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "addmonster", {1,4}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_214006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_214006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7216508") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 调用提示id为 32100143 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32100143) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210214, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_214008(context, evt)
	if evt.param1 ~= 1 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_214008(context, evt)
	-- 调用提示id为 32100140 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32100140) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_214009(context, evt)
	if evt.param1 ~= 2 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_214009(context, evt)
	-- 触发镜头注目，注目位置为坐标（-3774.9，202，-1341.9），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-3774.9, y=202, z=-1341.9}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
		-- 添加某个flowSuite里的要素，如果当前与目标suite属性不一样，会纠正为目标属性，同时触发相应Trigger
	  ScriptLib.AddExtraFlowSuite(context, 133210214, 3, FlowSuiteOperatePolicy.COMPLETE)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_214010(context, evt)
	if 214007 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_214010(context, evt)
	-- 调用提示id为 32100132 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32100132) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_214011(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7216508") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end