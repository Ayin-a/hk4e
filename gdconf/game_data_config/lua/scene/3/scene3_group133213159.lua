-- 基础信息
local base_info = {
	group_id = 133213159
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
	-- 真掉落
	{ config_id = 159001, gadget_id = 70210101, pos = { x = -3512.215, y = 199.581, z = -3115.738 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1050131, drop_count = 1, area_id = 12 },
	{ config_id = 159002, gadget_id = 70210101, pos = { x = -3500.722, y = 199.908, z = -3067.124 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用稻妻", area_id = 12 },
	-- 真掉落
	{ config_id = 159003, gadget_id = 70210101, pos = { x = -3484.742, y = 199.698, z = -3047.386 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1050131, drop_count = 1, area_id = 12 },
	{ config_id = 159004, gadget_id = 70210101, pos = { x = -3475.144, y = 199.519, z = -3030.519 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用稻妻", area_id = 12 },
	-- 真掉落
	{ config_id = 159005, gadget_id = 70210101, pos = { x = -3471.150, y = 199.475, z = -3107.110 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1050131, drop_count = 1, area_id = 12 },
	{ config_id = 159006, gadget_id = 70210101, pos = { x = -3440.532, y = 199.523, z = -3036.248 }, rot = { x = 0.895, y = 359.986, z = 358.210 }, level = 26, drop_tag = "搜刮点解谜通用稻妻", area_id = 12 }
}

-- 区域
regions = {
	{ config_id = 159007, shape = RegionShape.SPHERE, radius = 4, pos = { x = -3458.688, y = 201.349, z = -3049.152 }, area_id = 12 },
	-- 原任务触发用，现不用了
	{ config_id = 159008, shape = RegionShape.SPHERE, radius = 12, pos = { x = -3460.010, y = 201.349, z = -3044.333 }, area_id = 12 },
	-- 原任务触发用，现不用了
	{ config_id = 159009, shape = RegionShape.SPHERE, radius = 13, pos = { x = -3460.010, y = 201.349, z = -3044.333 }, area_id = 12 }
}

-- 触发器
triggers = {
	{ config_id = 1159007, name = "ENTER_REGION_159007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_159007", action = "action_EVENT_ENTER_REGION_159007" },
	-- 原任务触发用，现不用了
	{ config_id = 1159008, name = "ENTER_REGION_159008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_159008", action = "", trigger_count = 0 },
	-- 原任务触发用，现不用了
	{ config_id = 1159009, name = "ENTER_REGION_159009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_159009", action = "", trigger_count = 0 },
	-- 首次获得贝壳
	{ config_id = 1159010, name = "QUEST_FINISH_159010", event = EventType.EVENT_QUEST_FINISH, source = "7212807", condition = "", action = "action_EVENT_QUEST_FINISH_159010" },
	-- 首次获得花种
	{ config_id = 1159011, name = "QUEST_FINISH_159011", event = EventType.EVENT_QUEST_FINISH, source = "7212817", condition = "", action = "action_EVENT_QUEST_FINISH_159011" }
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
		gadgets = { 159001, 159002, 159003, 159004, 159005, 159006 },
		regions = { 159007, 159008, 159009 },
		triggers = { "ENTER_REGION_159007", "ENTER_REGION_159008", "ENTER_REGION_159009", "QUEST_FINISH_159010", "QUEST_FINISH_159011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_159007(context, evt)
	if evt.param1 ~= 159007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_159007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7212808_end") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_159008(context, evt)
	if evt.param1 ~= 159008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_ENTER_REGION_159009(context, evt)
	if evt.param1 ~= 159009 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_159010(context, evt)
	-- 调用提示id为 1110376 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110376) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_159011(context, evt)
	-- 调用提示id为 1110377 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110377) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end