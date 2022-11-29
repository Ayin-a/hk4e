-- 基础信息
local base_info = {
	group_id = 133212158
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
	{ config_id = 158009, gadget_id = 70210101, pos = { x = -4074.968, y = 234.930, z = -2413.513 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1050142, drop_count = 1, isOneoff = true, persistent = true, area_id = 13 }
}

-- 区域
regions = {
	{ config_id = 158001, shape = RegionShape.SPHERE, radius = 5, pos = { x = -4075.021, y = 235.118, z = -2411.932 }, area_id = 13 }
}

-- 触发器
triggers = {
	{ config_id = 1158001, name = "ENTER_REGION_158001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_158001", action = "action_EVENT_ENTER_REGION_158001" },
	{ config_id = 1158008, name = "GADGET_STATE_CHANGE_158008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_158008", action = "action_EVENT_GADGET_STATE_CHANGE_158008" }
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
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 158009 },
		regions = { 158001 },
		triggers = { "ENTER_REGION_158001", "GADGET_STATE_CHANGE_158008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_158001(context, evt)
	if evt.param1 ~= 158001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_158001(context, evt)
	-- 调用提示id为 321240011 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 321240011) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_158008(context, evt)
	if GadgetState.ChestOpened ~= ScriptLib.GetGadgetStateByConfigId(context, 133212158, 158009) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_158008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7214003_finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 调用提示id为 321240012 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 321240012) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end