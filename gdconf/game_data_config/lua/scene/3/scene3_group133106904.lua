-- 基础信息
local base_info = {
	group_id = 133106904
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 904002, monster_id = 23010301, pos = { x = -695.486, y = 215.226, z = 1343.059 }, rot = { x = 0.000, y = 308.231, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 8 },
	{ config_id = 904004, monster_id = 23010101, pos = { x = -692.926, y = 215.588, z = 1347.622 }, rot = { x = 0.000, y = 269.039, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 8 },
	{ config_id = 904005, monster_id = 23010601, pos = { x = -696.541, y = 215.362, z = 1350.713 }, rot = { x = 0.000, y = 215.863, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 8 },
	{ config_id = 904006, monster_id = 23010501, pos = { x = -696.261, y = 215.159, z = 1342.086 }, rot = { x = 0.000, y = 308.231, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 8 },
	{ config_id = 904007, monster_id = 23010201, pos = { x = -693.050, y = 215.468, z = 1345.185 }, rot = { x = 0.000, y = 269.039, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 8 },
	{ config_id = 904008, monster_id = 23010601, pos = { x = -695.439, y = 215.442, z = 1349.754 }, rot = { x = 0.000, y = 215.863, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 8 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 904001, shape = RegionShape.SPHERE, radius = 25, pos = { x = -699.787, y = 215.056, z = 1340.845 }, area_id = 8 }
}

-- 触发器
triggers = {
	{ config_id = 1904001, name = "ENTER_REGION_904001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_904001", action = "action_EVENT_ENTER_REGION_904001", trigger_count = 0 },
	{ config_id = 1904003, name = "ANY_MONSTER_DIE_904003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_904003", action = "action_EVENT_ANY_MONSTER_DIE_904003", trigger_count = 0 },
	{ config_id = 1904009, name = "ANY_MONSTER_DIE_904009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_904009", action = "action_EVENT_ANY_MONSTER_DIE_904009", trigger_count = 0 },
	{ config_id = 1904010, name = "TIMER_EVENT_904010", event = EventType.EVENT_TIMER_EVENT, source = "delay", condition = "", action = "action_EVENT_TIMER_EVENT_904010", trigger_count = 0 }
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
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 904001 },
		triggers = { "ENTER_REGION_904001" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 904002, 904004, 904005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_904009", "TIMER_EVENT_904010" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 904006, 904007, 904008 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_904003" },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_904001(context, evt)
	if evt.param1 ~= 904001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_904001(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310690401") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_904003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_904003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310690402") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_904009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_904009(context, evt)
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 延迟1.5秒后,向groupId为：133106904的对象,请求一次调用,并将string参数："delay" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133106904, "delay", 1.5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_904010(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133106904, suite = 4 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end