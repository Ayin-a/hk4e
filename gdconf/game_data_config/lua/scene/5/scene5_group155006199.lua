-- 基础信息
local base_info = {
	group_id = 155006199
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
	{ config_id = 199002, shape = RegionShape.SPHERE, radius = 10, pos = { x = 219.252, y = 174.406, z = -415.082 }, area_id = 200 }
}

-- 触发器
triggers = {
	-- 开启Reminder
	{ config_id = 1199001, name = "QUEST_START_199001", event = EventType.EVENT_QUEST_START, source = "7219001", condition = "", action = "action_EVENT_QUEST_START_199001", trigger_count = 0 },
	{ config_id = 1199002, name = "ENTER_REGION_199002", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_199002", action = "action_EVENT_ENTER_REGION_199002", trigger_count = 0 },
	{ config_id = 1199003, name = "TIME_AXIS_PASS_199003", event = EventType.EVENT_TIME_AXIS_PASS, source = "resetReminder", condition = "", action = "action_EVENT_TIME_AXIS_PASS_199003", trigger_count = 0 },
	-- 跳转Reminder结束
	{ config_id = 1199004, name = "QUEST_START_199004", event = EventType.EVENT_QUEST_START, source = "7219003", condition = "", action = "action_EVENT_QUEST_START_199004", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "replayWaiting", value = 0, no_refresh = true }
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
		triggers = { "QUEST_START_199001" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "replayWaiting", value = 0, no_refresh = true }
		}
	},
	[2] = {
		gadgets = {
		},
		monsters = {
		},
		regions = { 199002 },
		triggers = { "ENTER_REGION_199002", "TIME_AXIS_PASS_199003", "QUEST_START_199004" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "replayWaiting", value = 0, no_refresh = true }
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
			{ config_id = 1, name = "replayWaiting", value = 0, no_refresh = true }
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_START_199001(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 155006199, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_199002(context, evt)
		-- 判断角色数量不少于0
		if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
			return false
		end
		
		-- 判断变量"replayWaiting"为0
		if ScriptLib.GetGroupVariableValue(context, "replayWaiting") ~= 0 then
				return false
		end
		
		local current_env_state_id = ScriptLib.GetCurrentLevelTagVec(context,1)[1]
		if (current_env_state_id == 2) then
			return false
		end 
		
		return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_199002(context, evt)
	-- 调用提示id为 7217714 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7217714) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将本组内变量名为 "replayWaiting" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "replayWaiting", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建标识为"resetReminder"，时间节点为{5}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "resetReminder", {5}, false)
	
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_199003(context, evt)
	-- 将本组内变量名为 "replayWaiting" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "replayWaiting", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_199004(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 155006199, 3)
	
	return 0
end