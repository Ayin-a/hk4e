-- 基础信息
local base_info = {
	group_id = 133210227
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
}

-- 区域
regions = {
	{ config_id = 227001, shape = RegionShape.SPHERE, radius = 8, pos = { x = -3594.670, y = 123.329, z = -746.124 }, area_id = 17 },
	{ config_id = 227003, shape = RegionShape.SPHERE, radius = 8, pos = { x = -3594.670, y = 123.329, z = -746.124 }, area_id = 17 }
}

-- 触发器
triggers = {
	{ config_id = 1227001, name = "ENTER_REGION_227001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_227001", action = "action_EVENT_ENTER_REGION_227001" },
	{ config_id = 1227002, name = "QUEST_FINISH_227002", event = EventType.EVENT_QUEST_FINISH, source = "7215201", condition = "", action = "action_EVENT_QUEST_FINISH_227002", trigger_count = 0 },
	{ config_id = 1227003, name = "ENTER_REGION_227003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_227003", action = "action_EVENT_ENTER_REGION_227003" }
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
	end_suite = 2,
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
		regions = { 227003 },
		triggers = { "QUEST_FINISH_227002", "ENTER_REGION_227003" },
		npcs = { },
		variables = {
		}
	},
	[2] = {
		gadgets = {
		},
		monsters = {
		},
		regions = { 227001 },
		triggers = { "ENTER_REGION_227001" },
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

-- 触发条件
function condition_EVENT_ENTER_REGION_227001(context, evt)
	if evt.param1 ~= 227001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_227001(context, evt)
	-- 调用提示id为 32100152 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32100152) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 针对当前group内变量名为 "FindCount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "FindCount", 1, 133210482) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210227, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_227002(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210227, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_227003(context, evt)
	if evt.param1 ~= 227003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_227003(context, evt)
	-- 调用提示id为 32100150 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32100150) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end