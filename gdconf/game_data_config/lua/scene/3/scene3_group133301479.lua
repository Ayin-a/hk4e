-- 基础信息
local base_info = {
	group_id = 133301479
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 479001, monster_id = 35210101, pos = { x = -1259.278, y = 176.082, z = 3006.558 }, rot = { x = 0.000, y = 325.841, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 21, isPartner = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1479002, name = "ANY_MONSTER_LIVE_479002", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_479002", action = "action_EVENT_ANY_MONSTER_LIVE_479002" }
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
		monsters = { 479001 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_479002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 479001 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_479002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_479002(context, evt)
	if 479001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_479002(context, evt)
	-- 调用提示id为 33010022 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33010022) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end