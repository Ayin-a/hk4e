-- 基础信息
local base_info = {
	group_id = 133008166
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
	{ config_id = 166001, gadget_id = 70210101, pos = { x = 874.470, y = 349.438, z = -782.411 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1050109, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 10 }
}

-- 区域
regions = {
	{ config_id = 166002, shape = RegionShape.SPHERE, radius = 10, pos = { x = 872.596, y = 347.744, z = -788.961 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1166002, name = "ENTER_REGION_166002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_166002", action = "action_EVENT_ENTER_REGION_166002" },
	{ config_id = 1166003, name = "QUEST_FINISH_166003", event = EventType.EVENT_QUEST_FINISH, source = "7012105", condition = "", action = "action_EVENT_QUEST_FINISH_166003" }
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
		gadgets = { 166001 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 166001 },
		regions = { 166002 },
		triggers = { "ENTER_REGION_166002", "QUEST_FINISH_166003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_166002(context, evt)
	if evt.param1 ~= 166002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_166002(context, evt)
	-- 调用提示id为 300816501 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 300816501) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_166003(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=873,y=347,z=-787}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 300816401, pos, 15) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end