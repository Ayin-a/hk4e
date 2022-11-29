-- 基础信息
local base_info = {
	group_id = 220118002
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 2003, monster_id = 25080201, pos = { x = 66.495, y = 76.940, z = -77.762 }, rot = { x = 0.000, y = 265.394, z = 0.000 }, level = 1, disableWander = true, pose_id = 1 },
	{ config_id = 2011, monster_id = 25080201, pos = { x = 66.501, y = 76.940, z = -85.105 }, rot = { x = 0.000, y = 271.127, z = 0.000 }, level = 1, disableWander = true, pose_id = 1 },
	{ config_id = 2014, monster_id = 25100201, pos = { x = 64.670, y = 76.942, z = -81.187 }, rot = { x = 0.000, y = 270.075, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 }, isElite = true, pose_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 2001, shape = RegionShape.SPHERE, radius = 6.49, pos = { x = 34.291, y = 77.892, z = -80.947 } },
	{ config_id = 2002, shape = RegionShape.CUBIC, size = { x = 10.000, y = 11.940, z = 54.660 }, pos = { x = 52.993, y = 78.658, z = -81.830 } }
}

-- 触发器
triggers = {
	{ config_id = 1002001, name = "ENTER_REGION_2001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_2001" },
	{ config_id = 1002002, name = "ENTER_REGION_2002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_2002" },
	{ config_id = 1002007, name = "ANY_MONSTER_DIE_2007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2007", action = "action_EVENT_ANY_MONSTER_DIE_2007" }
}

-- 变量
variables = {
	{ config_id = 1, name = "alive1", value = 0, no_refresh = false }
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
		regions = { 2001, 2002 },
		triggers = { "ENTER_REGION_2001", "ENTER_REGION_2002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 2003, 2011, 2014 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_2007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ENTER_REGION_2001(context, evt)
	-- 调用提示id为 1110408 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110408) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_2002(context, evt)
	-- 调用提示id为 1110409 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110409) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220118002, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2007(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 220118002) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2007(context, evt)
	-- 调用提示id为 1110410 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110410) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end