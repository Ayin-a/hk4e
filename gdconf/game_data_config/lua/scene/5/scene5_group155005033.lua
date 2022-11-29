-- 基础信息
local base_info = {
	group_id = 155005033
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
	{ config_id = 33001, gadget_id = 70210102, pos = { x = 617.122, y = 213.290, z = 627.305 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, chest_drop_id = 1000100, drop_count = 1, area_id = 200 },
	{ config_id = 33003, gadget_id = 70360336, pos = { x = 617.610, y = 215.643, z = 627.923 }, rot = { x = 1.025, y = 300.857, z = 7.053 }, level = 36, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1033002, name = "GADGET_STATE_CHANGE_33002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_33002", action = "action_EVENT_GADGET_STATE_CHANGE_33002", trigger_count = 0 },
	-- 监听昼夜变化
	{ config_id = 1033004, name = "LEVEL_TAG_CHANGE_33004", event = EventType.EVENT_LEVEL_TAG_CHANGE, source = "", condition = "", action = "action_EVENT_LEVEL_TAG_CHANGE_33004", trigger_count = 0 },
	-- 初始化
	{ config_id = 1033005, name = "GROUP_LOAD_33005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_33005", trigger_count = 0 },
	{ config_id = 1033006, name = "QUEST_START_33006", event = EventType.EVENT_QUEST_START, source = "7223801", condition = "", action = "action_EVENT_QUEST_START_33006", trigger_count = 0 },
	{ config_id = 1033007, name = "QUEST_FINISH_33007", event = EventType.EVENT_QUEST_FINISH, source = "7223801", condition = "", action = "action_EVENT_QUEST_FINISH_33007", trigger_count = 0 }
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
			{ config_id = 33003, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "QUEST_START_33006" },
		npcs = { },
		variables = {
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 33001, state = 0 },
			{ config_id = 33003, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_33002", "QUEST_FINISH_33007" },
		npcs = { },
		variables = {
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 33003, state = 201 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "LEVEL_TAG_CHANGE_33004", "GROUP_LOAD_33005" },
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
function condition_EVENT_GADGET_STATE_CHANGE_33002(context, evt)
	if GadgetState.ChestOpened ~= ScriptLib.GetGadgetStateByConfigId(context, 155005033, 33001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_33002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "72238_CheckMap") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_LEVEL_TAG_CHANGE_33004(context, evt)
		-- 改变指定group组155005033中， configid为33003的gadget的state
		if evt.param2 == 1 then 
			ScriptLib.SetGroupGadgetStateByConfigId(context, 155005033, 33003,201)
		elseif evt.param2 == 2 then  
			ScriptLib.SetGroupGadgetStateByConfigId(context, 155005033, 33003,301)
		end
		return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_33005(context, evt)
	local current_env_state_id = ScriptLib.GetCurrentLevelTagVec(context, 1)[1]
		if (current_env_state_id == 1) then
			ScriptLib.SetGroupGadgetStateByConfigId(context, 155005033, 33003, 201)
		elseif (current_env_state_id == 2) then
			ScriptLib.SetGroupGadgetStateByConfigId(context, 155005033, 33003, 301)
		end 
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_33006(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 155005033, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_33007(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 155005033, 3)
	
	return 0
end