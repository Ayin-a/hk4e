-- 基础信息
local base_info = {
	group_id = 220104002
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 2005, monster_id = 22020102, pos = { x = -28.317, y = 44.815, z = -67.518 }, rot = { x = 0.000, y = 157.474, z = 0.000 }, level = 1, pose_id = 101, title_id = 10009, special_name_id = 10025 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 废弃了,不招
	{ config_id = 2004, gadget_id = 70211121, pos = { x = -18.823, y = 44.827, z = -66.702 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 11, drop_tag = "解谜高级璃月", isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 2001, shape = RegionShape.CUBIC, size = { x = 8.000, y = 10.000, z = 4.000 }, pos = { x = -28.074, y = 49.983, z = -82.124 } }
}

-- 触发器
triggers = {
	{ config_id = 1002001, name = "ENTER_REGION_2001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2001", action = "action_EVENT_ENTER_REGION_2001", trigger_count = 0 },
	{ config_id = 1002003, name = "SPECIFIC_MONSTER_HP_CHANGE_2003", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "2005", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_2003", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_2003" },
	{ config_id = 1002006, name = "ANY_MONSTER_LIVE_2006", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_2006", action = "action_EVENT_ANY_MONSTER_LIVE_2006" }
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
		regions = { 2001 },
		triggers = { "ENTER_REGION_2001" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 2005 },
		gadgets = { },
		regions = { },
		triggers = { "SPECIFIC_MONSTER_HP_CHANGE_2003", "ANY_MONSTER_LIVE_2006" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 2004 },
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

-- 触发条件
function condition_EVENT_ENTER_REGION_2001(context, evt)
	if evt.param1 ~= 2001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2001(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "22010400201") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220104003, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_2003(context, evt)
	--[[判断指定configid的怪物的血量小于%30时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 30 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_2003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "22010400202") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 220104002, EntityType.MONSTER, 2005)
	
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_2006(context, evt)
	if 2005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_2006(context, evt)
	-- 调用提示id为 201040109 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 201040109) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end