-- 基础信息
local base_info = {
	group_id = 133315039
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 39001, monster_id = 25210501, pos = { x = -158.915, y = 205.210, z = 2852.020 }, rot = { x = 0.000, y = 169.744, z = 0.000 }, level = 27, drop_tag = "镀金旅团", disableWander = true, pose_id = 9002, area_id = 20 },
	{ config_id = 39002, monster_id = 25210501, pos = { x = -158.898, y = 205.169, z = 2850.710 }, rot = { x = 0.000, y = 343.642, z = 0.000 }, level = 27, drop_tag = "镀金旅团", disableWander = true, pose_id = 9001, area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 39003, shape = RegionShape.SPHERE, radius = 12, pos = { x = -163.283, y = 205.174, z = 2851.811 }, area_id = 20 }
}

-- 触发器
triggers = {
	{ config_id = 1039003, name = "ENTER_REGION_39003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_39003" },
	{ config_id = 1039004, name = "ANY_MONSTER_DIE_39004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_39004", action = "action_EVENT_ANY_MONSTER_DIE_39004" }
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
		monsters = { 39001, 39002 },
		gadgets = { },
		regions = { 39003 },
		triggers = { "ENTER_REGION_39003", "ANY_MONSTER_DIE_39004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ENTER_REGION_39003(context, evt)
	-- 调用提示id为 33150013 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33150013) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133315040, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_39004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_39004(context, evt)
	-- 调用提示id为 33150015 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33150015) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end