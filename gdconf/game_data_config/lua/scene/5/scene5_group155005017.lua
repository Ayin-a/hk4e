-- 基础信息
local base_info = {
	group_id = 155005017
}

-- DEFS_MISCS
local Controllers = {}
local EnvControlGadgets = {17001}
local Worktops = {}
local DayAppearGadgets = {}
local NightAppearGadgets = {}

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
	{ config_id = 17001, gadget_id = 70360302, pos = { x = 269.420, y = 358.704, z = 211.912 }, rot = { x = 0.000, y = 7.184, z = 0.000 }, level = 36, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 加载时给操作台上Option
	{ config_id = 1017002, name = "GROUP_LOAD_17002", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_17002", trigger_count = 0 },
	-- 选择后转换昼夜.
	{ config_id = 1017003, name = "SELECT_OPTION_17003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_17003", action = "action_EVENT_SELECT_OPTION_17003", trigger_count = 0 },
	-- 7217716[22] Start 
	{ config_id = 1017004, name = "QUEST_START_17004", event = EventType.EVENT_QUEST_START, source = "7217716", condition = "", action = "action_EVENT_QUEST_START_17004", trigger_count = 0 },
	-- 延迟切换昼夜
	{ config_id = 1017005, name = "QUEST_FINISH_17005", event = EventType.EVENT_QUEST_FINISH, source = "7217746", condition = "", action = "action_EVENT_QUEST_FINISH_17005", trigger_count = 0 },
	-- 接受任务Start 给机关option
	{ config_id = 1017006, name = "QUEST_START_17006", event = EventType.EVENT_QUEST_START, source = "7217715", condition = "", action = "action_EVENT_QUEST_START_17006", trigger_count = 0 },
	-- 初始解锁机关
	{ config_id = 1017007, name = "GROUP_LOAD_17007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_17007", trigger_count = 0 },
	-- 任务没有完成时,每次加载给自己转换到白天
	{ config_id = 1017008, name = "QUEST_START_17008", event = EventType.EVENT_QUEST_START, source = "7217715", condition = "", action = "action_EVENT_QUEST_START_17008", trigger_count = 0 },
	{ config_id = 1017009, name = "GADGET_CREATE_17009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_17009", action = "action_EVENT_GADGET_CREATE_17009", trigger_count = 0 }
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
			{ config_id = 17001, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "QUEST_START_17006", "GROUP_LOAD_17007" },
		npcs = { },
		variables = {
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 17001, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GROUP_LOAD_17002", "SELECT_OPTION_17003", "QUEST_START_17004", "QUEST_FINISH_17005", "QUEST_START_17008", "GADGET_CREATE_17009" },
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
function action_EVENT_GROUP_LOAD_17002(context, evt)
			DayNight_Gadget_Unlock(context,17001)
	
	
			--线上玩家保护
	
			local uidList = ScriptLib.GetSceneUidList(context)
	
			if (uidList == nil or #uidList == 0) then 
				return 0
			end
	
			local avatar_entity = ScriptLib.GetAvatarEntityIdByUid(context,uidList[1])
			local quest_state = ScriptLib.GetQuestState(context, avatar_entity, 7217716)
	
			if quest_state == QuestState.FINISHED then 
				ScriptLib.GoToFlowSuite(context, 155005017, 3)
			end
			
			return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_17003(context, evt)
	-- 判断是gadgetid 17001 option_id 7
	if 17001 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_17003(context, evt)
			ScriptLib.DelWorktopOptionByGroupId(context, 155005017, 17001, 7)
			ScriptLib.SetGadgetStateByConfigId(context, 17001, 312) 
			local uid_List = ScriptLib.GetSceneUidList(context)
			local host_id = uid_List[1]
		
			ScriptLib.AddQuestProgress(context,"72177_UnlockTokoEngine")
			--ScriptLib.InitTimeAxis(context, "StartEngine", {5}, false)
			--ScriptLib.ChangeToTargetLevelTag(context, 2)
		 
		
		return 0
end

-- 触发操作
function action_EVENT_QUEST_START_17004(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 155005017, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_17005(context, evt)
	ScriptLib.ChangeToTargetLevelTag(context, 2)
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_17006(context, evt)
	DayNight_Gadget_Unlock(context,17001)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 155005017, 2)
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 155005017, 17001, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_17007(context, evt)
	DayNight_Gadget_Unlock(context,17001)
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_17008(context, evt)
	DayNight_Gadget_Unlock(context,17001)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_17009(context, evt)
	if 17001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_17009(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 155005017, 17001, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

require "V2_4/EnvState"