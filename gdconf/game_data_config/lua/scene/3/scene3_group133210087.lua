-- 基础信息
local base_info = {
	group_id = 133210087
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 87001, monster_id = 25010201, pos = { x = -3704.816, y = 128.232, z = -998.166 }, rot = { x = 0.000, y = 244.076, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, pose_id = 9002, area_id = 17 },
	{ config_id = 87004, monster_id = 25010201, pos = { x = -3721.763, y = 127.409, z = -1007.463 }, rot = { x = 0.000, y = 285.297, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 2, area_id = 17 },
	{ config_id = 87005, monster_id = 25020201, pos = { x = -3712.719, y = 128.194, z = -1007.423 }, rot = { x = 0.000, y = 292.389, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 9004, area_id = 17 },
	{ config_id = 87006, monster_id = 25010301, pos = { x = -3697.985, y = 128.558, z = -997.892 }, rot = { x = 0.000, y = 248.603, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 4, area_id = 17 },
	{ config_id = 87007, monster_id = 25010501, pos = { x = -3721.254, y = 128.337, z = -1014.841 }, rot = { x = 0.000, y = 319.937, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 4, area_id = 17 },
	{ config_id = 87008, monster_id = 25020201, pos = { x = -3716.781, y = 128.205, z = -1010.273 }, rot = { x = 0.000, y = 334.702, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 4, area_id = 17 },
	{ config_id = 87009, monster_id = 25020201, pos = { x = -3710.516, y = 128.152, z = -1003.735 }, rot = { x = 0.000, y = 235.970, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 4, area_id = 17 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 87002, gadget_id = 70211012, pos = { x = -3705.960, y = 128.348, z = -1001.186 }, rot = { x = 3.050, y = 285.974, z = 357.326 }, level = 26, drop_tag = "战斗中级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 17 }
}

-- 区域
regions = {
	{ config_id = 87012, shape = RegionShape.SPHERE, radius = 30, pos = { x = -3709.378, y = 127.449, z = -1007.892 }, area_id = 17 }
}

-- 触发器
triggers = {
	{ config_id = 1087003, name = "ANY_MONSTER_DIE_87003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_87003", action = "action_EVENT_ANY_MONSTER_DIE_87003" },
	{ config_id = 1087010, name = "ANY_MONSTER_DIE_87010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_87010", action = "action_EVENT_ANY_MONSTER_DIE_87010" },
	{ config_id = 1087011, name = "QUEST_START_87011", event = EventType.EVENT_QUEST_START, source = "7215202", condition = "", action = "action_EVENT_QUEST_START_87011", trigger_count = 0 },
	{ config_id = 1087012, name = "ENTER_REGION_87012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_87012", action = "action_EVENT_ENTER_REGION_87012" },
	{ config_id = 1087013, name = "GADGET_STATE_CHANGE_87013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_87013", action = "action_EVENT_GADGET_STATE_CHANGE_87013" }
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
		triggers = { "QUEST_START_87011" },
		npcs = { },
		variables = {
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 87002, state = 101 }
		},
		monsters = {
			{ config_id = 87001 },
			{ config_id = 87004 },
			{ config_id = 87005 }
		},
		regions = { 87012 },
		triggers = { "ANY_MONSTER_DIE_87003", "ENTER_REGION_87012" },
		npcs = { },
		variables = {
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 87002, state = 101 }
		},
		monsters = {
			{ config_id = 87006 },
			{ config_id = 87007 },
			{ config_id = 87008 },
			{ config_id = 87009 }
		},
		regions = { },
		triggers = { "ANY_MONSTER_DIE_87010" },
		npcs = { },
		variables = {
		}
	},
	[4] = {
		gadgets = {
			{ config_id = 87002, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_87013" },
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
function condition_EVENT_ANY_MONSTER_DIE_87003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_87003(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210087, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_87010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_87010(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4001, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 调用提示id为 32100149 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32100149) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210087, 4)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_87011(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210087, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_87012(context, evt)
	if evt.param1 ~= 87012 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_87012(context, evt)
	-- 调用提示id为 32100148 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32100148) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_87013(context, evt)
	if 87002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_87013(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7215202") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end