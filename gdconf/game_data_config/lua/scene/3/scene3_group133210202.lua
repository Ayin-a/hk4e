-- 基础信息
local base_info = {
	group_id = 133210202
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
	{ config_id = 202009, npc_id = 20422, pos = { x = -3820.707, y = 160.071, z = -1044.053 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 17 }
}

-- 装置
gadgets = {
	{ config_id = 202001, gadget_id = 70330080, pos = { x = -3820.267, y = 157.289, z = -1044.395 }, rot = { x = 0.000, y = 359.972, z = 0.000 }, level = 1, area_id = 17 }
}

-- 区域
regions = {
	{ config_id = 202002, shape = RegionShape.SPHERE, radius = 5, pos = { x = -3820.826, y = 159.737, z = -1039.800 }, area_id = 17 },
	{ config_id = 202003, shape = RegionShape.CUBIC, size = { x = 30.000, y = 10.000, z = 10.000 }, pos = { x = -3819.392, y = 161.230, z = -1061.896 }, area_id = 17 },
	-- 进入大范围内时
	{ config_id = 202010, shape = RegionShape.SPHERE, radius = 40, pos = { x = -3779.054, y = 152.578, z = -1117.362 }, area_id = 17 }
}

-- 触发器
triggers = {
	{ config_id = 1202002, name = "ENTER_REGION_202002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_202002", action = "action_EVENT_ENTER_REGION_202002" },
	{ config_id = 1202003, name = "ENTER_REGION_202003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_202003", action = "action_EVENT_ENTER_REGION_202003" },
	{ config_id = 1202004, name = "QUEST_START_202004", event = EventType.EVENT_QUEST_START, source = "7214902", condition = "", action = "action_EVENT_QUEST_START_202004", trigger_count = 0 },
	{ config_id = 1202006, name = "QUEST_FINISH_202006", event = EventType.EVENT_QUEST_FINISH, source = "7214903", condition = "", action = "action_EVENT_QUEST_FINISH_202006", trigger_count = 0 },
	{ config_id = 1202007, name = "QUEST_FINISH_202007", event = EventType.EVENT_QUEST_FINISH, source = "7214907", condition = "", action = "action_EVENT_QUEST_FINISH_202007", trigger_count = 0 },
	{ config_id = 1202008, name = "QUEST_START_202008", event = EventType.EVENT_QUEST_START, source = "7214903", condition = "", action = "action_EVENT_QUEST_START_202008", trigger_count = 0 },
	-- 进入大范围内时
	{ config_id = 1202010, name = "ENTER_REGION_202010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_202010", action = "action_EVENT_ENTER_REGION_202010" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 202005, gadget_id = 70950134, pos = { x = -3588.944, y = 219.773, z = -629.579 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 17 }
	}
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
			{ config_id = 202001, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "QUEST_START_202004" },
		npcs = { 202009 },
		variables = {
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 202001, state = 0 }
		},
		monsters = {
		},
		regions = { 202002 },
		triggers = { "ENTER_REGION_202002", "QUEST_START_202008" },
		npcs = { 202009 },
		variables = {
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 202001, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "QUEST_FINISH_202007" },
		npcs = { 202009 },
		variables = {
		}
	},
	[4] = {
		gadgets = {
			{ config_id = 202001, state = 201 }
		},
		monsters = {
		},
		regions = { 202003 },
		triggers = { "ENTER_REGION_202003", "QUEST_FINISH_202006" },
		npcs = { },
		variables = {
		}
	},
	[5] = {
		gadgets = {
		},
		monsters = {
		},
		regions = { 202010 },
		triggers = { "ENTER_REGION_202010" },
		npcs = { },
		variables = {
		}
	},
	[6] = {
		gadgets = {
		},
		monsters = {
		},
		regions = { },
		triggers = { },
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

-- 触发条件
function condition_EVENT_ENTER_REGION_202002(context, evt)
	if evt.param1 ~= 202002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_202002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7214902") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 调用提示id为 32100112 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32100112) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_202003(context, evt)
	if evt.param1 ~= 202003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_202003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7214903") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 调用提示id为 32100114 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32100114) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-3776.4，151.8，-1116.6），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-3776.4, y=151.8, z=-1116.6}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = true, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_202004(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210202, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_202006(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210202, 5)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_202007(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210202, 4)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_202008(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210202, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_202010(context, evt)
	if evt.param1 ~= 202010 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_202010(context, evt)
	-- 调用提示id为 32100115 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32100115) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210202, 6)
	
	return 0
end