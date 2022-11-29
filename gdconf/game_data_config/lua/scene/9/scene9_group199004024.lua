-- 基础信息
local base_info = {
	group_id = 199004024
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
	{ config_id = 24002, gadget_id = 70290009, pos = { x = -331.311, y = 120.989, z = -716.991 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, area_id = 400 },
	{ config_id = 24004, gadget_id = 70500000, pos = { x = -331.311, y = 120.989, z = -716.991 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 3005, isOneoff = true, owner = 24002, area_id = 400 },
	{ config_id = 24022, gadget_id = 70220010, pos = { x = -329.851, y = 121.462, z = -713.520 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 400 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1024001, name = "QUEST_START_24001", event = EventType.EVENT_QUEST_START, source = "7902522", condition = "", action = "action_EVENT_QUEST_START_24001", trigger_count = 0 },
	{ config_id = 1024009, name = "QUEST_START_24009", event = EventType.EVENT_QUEST_START, source = "7902521", condition = "", action = "action_EVENT_QUEST_START_24009", trigger_count = 0 }
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
		gadgets = { 24002, 24004 },
		regions = { },
		triggers = { "QUEST_START_24001", "QUEST_START_24009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 24022 },
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
function action_EVENT_QUEST_START_24001(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 199004024, EntityType.GADGET, 24022 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_24009(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199004024, 2)
	
	-- 调用提示id为 1111139 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111139) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end