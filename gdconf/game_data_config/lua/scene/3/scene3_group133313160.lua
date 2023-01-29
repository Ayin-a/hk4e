-- 基础信息
local base_info = {
	group_id = 133313160
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
	-- 居尔城大门
	{ config_id = 160001, gadget_id = 70290825, pos = { x = -1407.505, y = -28.610, z = 5624.494 }, rot = { x = 0.000, y = 284.950, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 32 },
	{ config_id = 160003, gadget_id = 70290831, pos = { x = -1407.505, y = -28.610, z = 5624.494 }, rot = { x = 0.000, y = 284.950, z = 0.000 }, level = 32, persistent = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1160002, name = "QUEST_START_160002", event = EventType.EVENT_QUEST_START, source = "7330502", condition = "", action = "action_EVENT_QUEST_START_160002", trigger_count = 0 },
	{ config_id = 1160005, name = "GROUP_LOAD_160005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_160005", action = "action_EVENT_GROUP_LOAD_160005", trigger_count = 0 }
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
	suite = 1,
	end_suite = 0,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suites = {
	{
		-- suite_id = 1,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "QUEST_START_160002", "GROUP_LOAD_160005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 160001, 160003 },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_START_160002(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133313160, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_160005(context, evt)
	local curQuestState = ScriptLib.GetHostQuestState(context,7330501)
	if -1 == curQuestState or 0 == curQuestState then
	  return false
	end
	if curQuestState ~= 3 then
	   return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_160005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133313160, 2)
	
	return 0
end