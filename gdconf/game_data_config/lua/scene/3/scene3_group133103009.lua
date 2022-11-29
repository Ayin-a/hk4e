-- 基础信息
local base_info = {
	group_id = 133103009
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
	{ config_id = 9001, gadget_id = 70360045, pos = { x = 771.348, y = 283.474, z = 1850.837 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 6 }
}

-- 区域
regions = {
	{ config_id = 9005, shape = RegionShape.SPHERE, radius = 15, pos = { x = 772.112, y = 306.772, z = 1851.672 }, area_id = 6 },
	{ config_id = 9006, shape = RegionShape.SPHERE, radius = 3, pos = { x = 795.456, y = 334.620, z = 1842.306 }, area_id = 6 },
	{ config_id = 9007, shape = RegionShape.SPHERE, radius = 25, pos = { x = 769.867, y = 337.685, z = 1828.409 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1009002, name = "GADGET_STATE_CHANGE_9002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_9002", trigger_count = 0 },
	{ config_id = 1009003, name = "GADGET_STATE_CHANGE_9003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_9003", action = "action_EVENT_GADGET_STATE_CHANGE_9003", trigger_count = 0 },
	{ config_id = 1009004, name = "QUEST_FINISH_9004", event = EventType.EVENT_QUEST_FINISH, source = "7214406", condition = "", action = "action_EVENT_QUEST_FINISH_9004" },
	{ config_id = 1009005, name = "ENTER_REGION_9005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_9005", action = "action_EVENT_ENTER_REGION_9005" },
	{ config_id = 1009006, name = "ENTER_REGION_9006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_9006", action = "action_EVENT_ENTER_REGION_9006" },
	{ config_id = 1009007, name = "ENTER_REGION_9007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_9007", action = "action_EVENT_ENTER_REGION_9007" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1009008, name = "GADGET_CREATE_9008", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_9008", action = "action_EVENT_GADGET_CREATE_9008" }
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
	rand_suite = false,
	father_quest = 72144,
	quest_config = {
		[7214405] = {
			{
				state = 2,
				suite = 2
			}
		},
		[7214406] = {
			{
				state = 2,
				suite = 3
			}
		},
		[7214407] = {
			{
				state = 2,
				suite = 4
			}
		}
	}
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
		triggers = { },
		npcs = { },
		variables = {
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 9001, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_9002", "GADGET_STATE_CHANGE_9003" },
		npcs = { },
		variables = {
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 9001, state = 201 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_9002", "QUEST_FINISH_9004" },
		npcs = { },
		variables = {
		}
	},
	[4] = {
		gadgets = {
			{ config_id = 9001, state = 201 }
		},
		monsters = {
		},
		regions = { 9005, 9006 },
		triggers = { "GADGET_STATE_CHANGE_9002", "ENTER_REGION_9005", "ENTER_REGION_9006" },
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
function action_EVENT_GADGET_STATE_CHANGE_9002(context, evt)
	ScriptLib.PrintContextLog(context, "## debug : "..evt.param2.." | "..evt.param3.." -> "..evt.param1)
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_9003(context, evt)
	if 9001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_9003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7214405") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 添加某个flowSuite里的要素，不会更改当前场上已存在的物件/怪物状态
	  ScriptLib.AddExtraFlowSuite(context, 133103009, 3, FlowSuiteOperatePolicy.DEFAULT)
	
		-- 将指定group的suiteIndex设为指定suite
	  ScriptLib.SetFlowSuite(context, 133103009, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_9004(context, evt)
		-- 添加某个flowSuite里的要素，不会更改当前场上已存在的物件/怪物状态
	  ScriptLib.AddExtraFlowSuite(context, 133103009, 4, FlowSuiteOperatePolicy.DEFAULT)
	
		-- 将指定group的suiteIndex设为指定suite
	  ScriptLib.SetFlowSuite(context, 133103009, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_9005(context, evt)
	if evt.param1 ~= 9005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	
	--判断子任务7214407未完成
	local uidList = ScriptLib.GetSceneUidList(context)
	local avatar_entity = ScriptLib.GetAvatarEntityIdByUid(context, uidList[1])
	
	if ScriptLib.GetQuestState(context, avatar_entity, 7214407) ~= QuestState.UNFINISHED then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_9005(context, evt)
	-- 调用提示id为 310300903 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 310300903) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_9006(context, evt)
	if evt.param1 ~= 9006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_9006(context, evt)
		-- 将指定group的suiteIndex设为指定suite
	  ScriptLib.SetFlowSuite(context, 133103009, 1)
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7214407") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_9007(context, evt)
	if evt.param1 ~= 9007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_9007(context, evt)
	-- 调用提示id为 310300901 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 310300901) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end