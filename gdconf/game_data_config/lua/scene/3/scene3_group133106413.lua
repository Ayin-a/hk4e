-- 基础信息
local base_info = {
	group_id = 133106413
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 413001, monster_id = 25070101, pos = { x = -742.871, y = 158.155, z = 1577.680 }, rot = { x = 0.000, y = 124.668, z = 0.000 }, level = 36, drop_id = 1000100, area_id = 19 },
	{ config_id = 413002, monster_id = 25030301, pos = { x = -741.450, y = 156.728, z = 1581.424 }, rot = { x = 0.000, y = 138.330, z = 0.000 }, level = 36, drop_id = 1000100, area_id = 19 },
	{ config_id = 413003, monster_id = 25010501, pos = { x = -746.347, y = 157.562, z = 1580.487 }, rot = { x = 0.000, y = 126.251, z = 0.000 }, level = 36, drop_id = 1000100, area_id = 19 },
	{ config_id = 413004, monster_id = 25020201, pos = { x = -745.293, y = 156.729, z = 1582.475 }, rot = { x = 0.000, y = 138.613, z = 0.000 }, level = 36, drop_id = 1000100, area_id = 19 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 413006, shape = RegionShape.SPHERE, radius = 15, pos = { x = -732.513, y = 160.695, z = 1561.858 }, area_id = 19 }
}

-- 触发器
triggers = {
	{ config_id = 1413005, name = "ANY_MONSTER_DIE_413005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_413005", action = "action_EVENT_ANY_MONSTER_DIE_413005" },
	{ config_id = 1413006, name = "ENTER_REGION_413006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_413006", action = "action_EVENT_ENTER_REGION_413006" },
	{ config_id = 1413007, name = "TIME_AXIS_PASS_413007", event = EventType.EVENT_TIME_AXIS_PASS, source = "create_monster", condition = "condition_EVENT_TIME_AXIS_PASS_413007", action = "action_EVENT_TIME_AXIS_PASS_413007" }
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
		regions = { 413006 },
		triggers = { "ANY_MONSTER_DIE_413005", "ENTER_REGION_413006", "TIME_AXIS_PASS_413007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 413001, 413002, 413003, 413004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_413005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_413005(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133106413) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_413005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7104408finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 调用提示id为 710440803 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 710440803) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_413006(context, evt)
	if evt.param1 ~= 413006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_413006(context, evt)
	-- 调用提示id为 710440801 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 710440801) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 创建标识为"create_monster"，时间节点为{2}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "create_monster", {2}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_413007(context, evt)
	if "create_monster" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_413007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106413, 2)
	
	return 0
end