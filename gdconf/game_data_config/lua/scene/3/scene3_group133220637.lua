-- 基础信息
local base_info = {
	group_id = 133220637
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
}

-- 区域
regions = {
	-- 感感感感感觉全身都麻麻麻麻痹了…
	{ config_id = 637001, shape = RegionShape.SPHERE, radius = 15, pos = { x = -2275.046, y = 138.464, z = -4844.288 }, area_id = 11 },
	-- 感感感感感觉全身都麻麻麻麻痹了…
	{ config_id = 637002, shape = RegionShape.SPHERE, radius = 15, pos = { x = -2275.046, y = 138.464, z = -4844.288 }, area_id = 11 }
}

-- 触发器
triggers = {
	-- 感感感感感觉全身都麻麻麻麻痹了…
	{ config_id = 1637001, name = "ENTER_REGION_637001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_637001" },
	-- 感感感感感觉全身都麻麻麻麻痹了…
	{ config_id = 1637002, name = "ENTER_REGION_637002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_637002" }
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
		gadgets = { },
		regions = { 637001 },
		triggers = { "ENTER_REGION_637001" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 637002 },
		triggers = { "ENTER_REGION_637002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ENTER_REGION_637001(context, evt)
	-- 调用提示id为 -1074247294 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, -1074247294) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_637002(context, evt)
	-- 调用提示id为 -1074247294 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, -1074247294) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end