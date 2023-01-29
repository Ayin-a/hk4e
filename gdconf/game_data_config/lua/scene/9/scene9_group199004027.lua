-- 基础信息
local base_info = {
	group_id = 199004027
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
	{ config_id = 27001, gadget_id = 70210102, pos = { x = -391.433, y = 199.527, z = -615.654 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, chest_drop_id = 1050189, drop_count = 1, isOneoff = true, autopick = true, area_id = 400 },
	{ config_id = 27003, gadget_id = 70360001, pos = { x = -391.910, y = 193.567, z = -614.810 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 400 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1027002, name = "QUEST_FINISH_27002", event = EventType.EVENT_QUEST_FINISH, source = "7903104", condition = "", action = "action_EVENT_QUEST_FINISH_27002" },
	{ config_id = 1027004, name = "LEVEL_TAG_CHANGE_27004", event = EventType.EVENT_LEVEL_TAG_CHANGE, source = "", condition = "", action = "action_EVENT_LEVEL_TAG_CHANGE_27004", trigger_count = 0 },
	{ config_id = 1027005, name = "GROUP_LOAD_27005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_27005", trigger_count = 0 }
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
		gadgets = { 27003 },
		regions = { },
		triggers = { "LEVEL_TAG_CHANGE_27004", "GROUP_LOAD_27005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 27001 },
		regions = { },
		triggers = { "QUEST_FINISH_27002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_27002(context, evt)
	-- 调用提示id为 1111231 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111231) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_LEVEL_TAG_CHANGE_27004(context, evt)
	if ScriptLib.CheckSceneTag(context, 9,1026 ) then
		ScriptLib.AddExtraGroupSuite(context, 0, 2)
	else
		ScriptLib.RemoveExtraGroupSuite(context, 199004027, 2)
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_27005(context, evt)
	if ScriptLib.CheckSceneTag(context, 9,1026 ) then
		ScriptLib.AddExtraGroupSuite(context, 0, 2)
	end
	
	return 0
end