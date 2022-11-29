-- 基础信息
local base_info = {
	group_id = 133213145
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 145006, monster_id = 21010101, pos = { x = -3283.645, y = 207.568, z = -3261.574 }, rot = { x = 0.000, y = 197.411, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, isOneoff = true, pose_id = 9016, area_id = 12 },
	{ config_id = 145007, monster_id = 21010101, pos = { x = -3284.699, y = 207.517, z = -3261.666 }, rot = { x = 0.000, y = 152.814, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, isOneoff = true, area_id = 12 },
	{ config_id = 145009, monster_id = 28020102, pos = { x = -3261.817, y = 201.235, z = -3266.457 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "走兽", isOneoff = true, area_id = 12 },
	{ config_id = 145010, monster_id = 28020102, pos = { x = -3260.980, y = 201.151, z = -3265.246 }, rot = { x = 0.000, y = 228.982, z = 0.000 }, level = 27, drop_tag = "走兽", isOneoff = true, area_id = 12 },
	{ config_id = 145015, monster_id = 21010101, pos = { x = -3241.345, y = 200.000, z = -3256.137 }, rot = { x = 0.000, y = 110.733, z = 0.000 }, level = 27, drop_id = 1000100, isOneoff = true, pose_id = 9016, area_id = 12 },
	{ config_id = 145016, monster_id = 21010101, pos = { x = -3241.156, y = 200.000, z = -3257.486 }, rot = { x = 0.000, y = 66.136, z = 0.000 }, level = 27, drop_id = 1000100, isOneoff = true, pose_id = 9016, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 145002, gadget_id = 70900394, pos = { x = -3288.333, y = 208.287, z = -3254.086 }, rot = { x = 1.658, y = 5.896, z = 0.731 }, level = 27, isOneoff = true, persistent = true, area_id = 12 },
	{ config_id = 145004, gadget_id = 70360001, pos = { x = -3288.390, y = 209.123, z = -3253.896 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 145008, gadget_id = 71700105, pos = { x = -3261.553, y = 201.365, z = -3265.773 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, isOneoff = true, area_id = 12 },
	{ config_id = 145013, gadget_id = 70220064, pos = { x = -3282.580, y = 206.178, z = -3267.878 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 145014, gadget_id = 70220064, pos = { x = -3284.530, y = 207.365, z = -3263.198 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 145017, gadget_id = 70210101, pos = { x = -3239.761, y = 200.000, z = -3257.167 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用稻妻", isOneoff = true, persistent = true, area_id = 12 }
}

-- 区域
regions = {
	{ config_id = 145001, shape = RegionShape.SPHERE, radius = 20, pos = { x = -3273.311, y = 202.412, z = -3260.877 }, area_id = 12 }
}

-- 触发器
triggers = {
	{ config_id = 1145001, name = "ENTER_REGION_145001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_145001", action = "action_EVENT_ENTER_REGION_145001" },
	{ config_id = 1145003, name = "GADGET_CREATE_145003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_145003", action = "action_EVENT_GADGET_CREATE_145003", trigger_count = 0 },
	{ config_id = 1145005, name = "SELECT_OPTION_145005", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_145005", action = "action_EVENT_SELECT_OPTION_145005" }
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
	end_suite = 3,
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
		gadgets = { 145002 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 145006, 145007, 145009, 145010, 145015, 145016 },
		gadgets = { 145002, 145004, 145008, 145013, 145014, 145017 },
		regions = { 145001 },
		triggers = { "ENTER_REGION_145001", "GADGET_CREATE_145003", "SELECT_OPTION_145005" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "SELECT_OPTION_145005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_145001(context, evt)
	if evt.param1 ~= 145001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_145001(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7212405_end") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 调用提示id为 1110352 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110352) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_145003(context, evt)
	if 145004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_145003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133213145, 145004, {70}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_145005(context, evt)
	-- 判断是gadgetid 145004 option_id 70
	if 145004 ~= evt.param1 then
		return false	
	end
	
	if 70 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_145005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7212406_end") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133213145, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 调用提示id为 1110354 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110354) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end