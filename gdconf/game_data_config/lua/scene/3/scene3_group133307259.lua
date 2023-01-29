-- 基础信息
local base_info = {
	group_id = 133307259
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
	-- 流沙遗迹 物件对话测试
	{ config_id = 259001, gadget_id = 70330324, pos = { x = -1496.964, y = 44.533, z = 5614.160 }, rot = { x = 0.000, y = 330.096, z = 0.000 }, level = 32, area_id = 32 },
	-- 居尔城大门 物件对话测试
	{ config_id = 259003, gadget_id = 70330324, pos = { x = -1107.929, y = -36.839, z = 5422.815 }, rot = { x = 0.000, y = 14.599, z = 0.000 }, level = 32, area_id = 32 },
	-- 秃鹫巢穴遗迹
	{ config_id = 259004, gadget_id = 70330324, pos = { x = -322.205, y = -49.218, z = 4791.306 }, rot = { x = 0.000, y = 125.359, z = 0.000 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1259002, name = "QUEST_START_259002", event = EventType.EVENT_QUEST_START, source = "7330509", condition = "", action = "action_EVENT_QUEST_START_259002", trigger_count = 0 },
	{ config_id = 1259005, name = "GROUP_LOAD_259005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_259005", action = "action_EVENT_GROUP_LOAD_259005", trigger_count = 0 }
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
		gadgets = { 259001, 259003, 259004 },
		regions = { },
		triggers = { "QUEST_START_259002", "GROUP_LOAD_259005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_START_259002(context, evt)
	ScriptLib.SetGadgetTalkByConfigId(context, 133307259, 259001, 1)
	ScriptLib.SetGadgetTalkByConfigId(context, 133307259, 259003, 1)
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_259005(context, evt)
	local curQuestState = ScriptLib.GetHostQuestState(context,7330510)
	if -1 == curQuestState or 0 == curQuestState then
	  return false
	end
	if curQuestState ~= 3 then
	   return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_259005(context, evt)
	ScriptLib.SetGadgetTalkByConfigId(context, 133307259, 259001, 1)
	ScriptLib.SetGadgetTalkByConfigId(context, 133307259, 259003, 1)
end