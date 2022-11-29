-- 基础信息
local base_info = {
	group_id = 199005002
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
	{ config_id = 2001, gadget_id = 70211001, pos = { x = 1448.570, y = 135.100, z = -733.069 }, rot = { x = 0.000, y = 280.163, z = 0.000 }, level = 16, chest_drop_id = 1050187, drop_count = 1, isOneoff = true, persistent = true, autopick = true, explore = { name = "chest", exp = 1 }, area_id = 401 }
}

-- 区域
regions = {
	{ config_id = 2002, shape = RegionShape.SPHERE, radius = 30, pos = { x = 1444.981, y = 134.804, z = -725.031 }, area_id = 401 }
}

-- 触发器
triggers = {
	{ config_id = 1002002, name = "ENTER_REGION_2002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2002", action = "action_EVENT_ENTER_REGION_2002" },
	{ config_id = 1002003, name = "QUEST_FINISH_2003", event = EventType.EVENT_QUEST_FINISH, source = "7902905", condition = "", action = "action_EVENT_QUEST_FINISH_2003", trigger_count = 0 }
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
		gadgets = { 2001 },
		regions = { 2002 },
		triggers = { "ENTER_REGION_2002", "QUEST_FINISH_2003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_2002(context, evt)
	if evt.param1 ~= 2002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2002(context, evt)
	    if ScriptLib.GetHostQuestState(context,7902001)==3 then
	-- 调用提示id为 1111235 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111235) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	end
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_2003(context, evt)
	    if ScriptLib.GetHostQuestState(context,7902001)==3 then
	-- 调用提示id为 1111233 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111233) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	end
	return 0
end