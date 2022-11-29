-- 基础信息
local base_info = {
	group_id = 133210528
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 528004, monster_id = 23010201, pos = { x = -3789.585, y = 151.127, z = -1112.300 }, rot = { x = 0.000, y = 257.054, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 9014, area_id = 17 },
	{ config_id = 528005, monster_id = 23010201, pos = { x = -3782.496, y = 151.288, z = -1104.413 }, rot = { x = 0.000, y = 351.821, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 9014, area_id = 17 },
	{ config_id = 528006, monster_id = 23050101, pos = { x = -3783.301, y = 151.407, z = -1110.799 }, rot = { x = 0.000, y = 142.108, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, area_id = 17 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 528001, gadget_id = 70500000, pos = { x = -3782.256, y = 153.884, z = -1112.206 }, rot = { x = 0.000, y = 325.011, z = 0.000 }, level = 30, point_type = 4010, isOneoff = true, area_id = 17 }
}

-- 区域
regions = {
	{ config_id = 528007, shape = RegionShape.SPHERE, radius = 45, pos = { x = -3782.298, y = 151.573, z = -1112.002 }, area_id = 17 }
}

-- 触发器
triggers = {
	{ config_id = 1528002, name = "QUEST_START_528002", event = EventType.EVENT_QUEST_START, source = "7223305", condition = "", action = "action_EVENT_QUEST_START_528002", trigger_count = 0 },
	{ config_id = 1528003, name = "GATHER_528003", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_528003", action = "action_EVENT_GATHER_528003", trigger_count = 0 },
	{ config_id = 1528007, name = "ENTER_REGION_528007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_528007", action = "action_EVENT_ENTER_REGION_528007" }
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
		triggers = { "QUEST_START_528002" },
		npcs = { },
		variables = {
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 528001, state = 0 }
		},
		monsters = {
			{ config_id = 528004 },
			{ config_id = 528005 },
			{ config_id = 528006 }
		},
		regions = { 528007 },
		triggers = { "GATHER_528003", "ENTER_REGION_528007" },
		npcs = { },
		variables = {
		}
	},
	[3] = {
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

-- 触发操作
function action_EVENT_QUEST_START_528002(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210528, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_528003(context, evt)
	if 528001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_528003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7223305") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 将指定group的suiteIndex设为指定suite
	  ScriptLib.SetFlowSuite(context, 133210528, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_528007(context, evt)
	if evt.param1 ~= 528007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_528007(context, evt)
	-- 调用提示id为 32100207 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32100207) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end