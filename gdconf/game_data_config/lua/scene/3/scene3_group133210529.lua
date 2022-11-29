-- 基础信息
local base_info = {
	group_id = 133210529
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 529001, monster_id = 24020301, pos = { x = -3472.882, y = 201.547, z = -844.669 }, rot = { x = 0.000, y = 257.054, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 100, area_id = 17 },
	{ config_id = 529002, monster_id = 24020301, pos = { x = -3488.878, y = 202.939, z = -818.381 }, rot = { x = 0.000, y = 351.821, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 100, area_id = 17 },
	{ config_id = 529003, monster_id = 24020401, pos = { x = -3483.041, y = 201.818, z = -834.634 }, rot = { x = 0.000, y = 219.936, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 100, area_id = 17 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 529004, gadget_id = 70500000, pos = { x = -3485.534, y = 206.218, z = -837.533 }, rot = { x = 0.000, y = 45.081, z = 0.000 }, level = 30, point_type = 4011, isOneoff = true, area_id = 17 }
}

-- 区域
regions = {
	{ config_id = 529007, shape = RegionShape.SPHERE, radius = 25, pos = { x = -3482.994, y = 201.957, z = -834.877 }, area_id = 17 }
}

-- 触发器
triggers = {
	{ config_id = 1529005, name = "QUEST_START_529005", event = EventType.EVENT_QUEST_START, source = "7223306", condition = "", action = "action_EVENT_QUEST_START_529005", trigger_count = 0 },
	{ config_id = 1529006, name = "GATHER_529006", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_529006", action = "action_EVENT_GATHER_529006", trigger_count = 0 },
	{ config_id = 1529007, name = "ENTER_REGION_529007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_529007", action = "action_EVENT_ENTER_REGION_529007" }
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
		triggers = { "QUEST_START_529005" },
		npcs = { },
		variables = {
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 529004, state = 0 }
		},
		monsters = {
			{ config_id = 529001 },
			{ config_id = 529002 },
			{ config_id = 529003 }
		},
		regions = { 529007 },
		triggers = { "GATHER_529006", "ENTER_REGION_529007" },
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
function action_EVENT_QUEST_START_529005(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210529, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_529006(context, evt)
	if 529004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_529006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7223306") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 将指定group的suiteIndex设为指定suite
	  ScriptLib.SetFlowSuite(context, 133210529, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_529007(context, evt)
	if evt.param1 ~= 529007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_529007(context, evt)
	-- 调用提示id为 32100208 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32100208) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end