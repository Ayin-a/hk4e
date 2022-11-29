-- 基础信息
local base_info = {
	group_id = 133002035
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 727, monster_id = 20010801, pos = { x = 1824.070, y = 217.961, z = -387.109 }, rot = { x = 0.000, y = 215.875, z = 0.000 }, level = 10, drop_id = 1000100, area_id = 3 },
	{ config_id = 728, monster_id = 20010801, pos = { x = 1819.411, y = 218.156, z = -386.721 }, rot = { x = 0.000, y = 191.934, z = 0.000 }, level = 10, drop_id = 1000100, area_id = 3 },
	{ config_id = 729, monster_id = 20010801, pos = { x = 1823.085, y = 218.524, z = -394.892 }, rot = { x = 0.000, y = 256.635, z = 0.000 }, level = 10, drop_id = 1000100, area_id = 3 },
	{ config_id = 730, monster_id = 20011401, pos = { x = 1812.521, y = 218.397, z = -409.354 }, rot = { x = 0.000, y = 106.131, z = 0.000 }, level = 10, drop_id = 1000100, area_id = 3 },
	{ config_id = 731, monster_id = 20011401, pos = { x = 1813.548, y = 218.127, z = -419.796 }, rot = { x = 0.000, y = 317.453, z = 0.000 }, level = 10, drop_id = 1000100, area_id = 3 },
	{ config_id = 732, monster_id = 20011401, pos = { x = 1806.809, y = 219.565, z = -415.886 }, rot = { x = 0.000, y = 96.875, z = 0.000 }, level = 10, drop_id = 1000100, area_id = 3 },
	{ config_id = 733, monster_id = 20011501, pos = { x = 1814.614, y = 218.123, z = -413.733 }, rot = { x = 0.000, y = 95.452, z = 0.000 }, level = 10, drop_id = 1000100, area_id = 3 },
	{ config_id = 734, monster_id = 20010901, pos = { x = 1820.578, y = 218.232, z = -392.714 }, rot = { x = 0.000, y = 264.593, z = 0.000 }, level = 10, drop_id = 1000100, area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 35001, gadget_id = 70900201, pos = { x = 1813.164, y = 221.497, z = -394.228 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 3 },
	{ config_id = 35002, gadget_id = 70900201, pos = { x = 1818.248, y = 221.673, z = -414.040 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 3 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000238, name = "ANY_MONSTER_DIE_238", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_238", action = "action_EVENT_ANY_MONSTER_DIE_238" },
	{ config_id = 1000239, name = "ANY_MONSTER_DIE_239", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_239", action = "action_EVENT_ANY_MONSTER_DIE_239" },
	{ config_id = 1000240, name = "ANY_MONSTER_DIE_240", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_240", action = "action_EVENT_ANY_MONSTER_DIE_240" },
	{ config_id = 1035003, name = "ANY_MONSTER_LIVE_35003", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_35003", action = "action_EVENT_ANY_MONSTER_LIVE_35003" }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 727, 728, 729 },
		gadgets = { 35001 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_238", "ANY_MONSTER_LIVE_35003" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 730, 731, 732 },
		gadgets = { 35002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_239" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 733, 734 },
		gadgets = { 35001, 35002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_240" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_238(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_238(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133002035, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 调用提示id为 400002 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_239(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_239(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133002035, suite = 4 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 调用提示id为 400003 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_240(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_240(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "3002035") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 35001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 35002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_35003(context, evt)
	if 727 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_35003(context, evt)
	-- 调用提示id为 400001 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end