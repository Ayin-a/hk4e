-- 基础信息
local base_info = {
	group_id = 155005053
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
	{ config_id = 53001, shape = RegionShape.SPHERE, radius = 5, pos = { x = 640.893, y = 161.022, z = 761.740 }, area_id = 200 }
}

-- 触发器
triggers = {
	{ config_id = 1053001, name = "ENTER_REGION_53001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_53001", trigger_count = 0 },
	{ config_id = 1053002, name = "QUEST_START_53002", event = EventType.EVENT_QUEST_START, source = "7224301", condition = "", action = "", trigger_count = 0 },
	{ config_id = 1053003, name = "QUEST_FINISH_53003", event = EventType.EVENT_QUEST_FINISH, source = "7224301", condition = "", action = "action_EVENT_QUEST_FINISH_53003", trigger_count = 0 }
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
		regions = { 53001 },
		triggers = { "ENTER_REGION_53001", "QUEST_START_53002", "QUEST_FINISH_53003" },
		npcs = { },
		variables = {
		}
	},
	[2] = {
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
function action_EVENT_ENTER_REGION_53001(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "72243_EnterChamber") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_53003(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 155005053, 2)
	
	return 0
end