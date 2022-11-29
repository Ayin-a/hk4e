-- 基础信息
local base_info = {
	group_id = 133008165
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
	{ config_id = 165001, gadget_id = 70211111, pos = { x = 813.826, y = 325.426, z = -661.003 }, rot = { x = 15.264, y = 14.014, z = 3.760 }, level = 26, chest_drop_id = 1050111, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, autopick = true, explore = { name = "chest", exp = 1 }, area_id = 10 }
}

-- 区域
regions = {
	{ config_id = 165003, shape = RegionShape.SPHERE, radius = 15, pos = { x = 826.664, y = 325.052, z = -649.720 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1165002, name = "QUEST_FINISH_165002", event = EventType.EVENT_QUEST_FINISH, source = "7012109", condition = "", action = "action_EVENT_QUEST_FINISH_165002" },
	{ config_id = 1165003, name = "ENTER_REGION_165003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_165003", action = "action_EVENT_ENTER_REGION_165003" }
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
		gadgets = { 165001 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 165001 },
		regions = { 165003 },
		triggers = { "QUEST_FINISH_165002", "ENTER_REGION_165003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_165002(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=817,y=325,z=-659}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 300816403, pos, 15) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_165003(context, evt)
	if evt.param1 ~= 165003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_165003(context, evt)
	-- 调用提示id为 300816521 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 300816521) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end