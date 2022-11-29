-- 基础信息
local base_info = {
	group_id = 166001185
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
	-- 第一处黑泥
	{ config_id = 185001, shape = RegionShape.SPHERE, radius = 10, pos = { x = 863.355, y = 992.901, z = 723.813 }, area_id = 300 },
	-- 刷怪
	{ config_id = 185002, shape = RegionShape.SPHERE, radius = 10, pos = { x = 860.288, y = 992.877, z = 724.765 }, area_id = 300 },
	-- 打完怪
	{ config_id = 185003, shape = RegionShape.SPHERE, radius = 30, pos = { x = 841.221, y = 988.474, z = 728.250 }, area_id = 300 },
	-- 夜阑路面消失
	{ config_id = 185005, shape = RegionShape.SPHERE, radius = 20, pos = { x = 794.996, y = 968.431, z = 770.185 }, area_id = 300 }
}

-- 触发器
triggers = {
	-- 第一处黑泥
	{ config_id = 1185001, name = "ENTER_REGION_185001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_185001", action = "action_EVENT_ENTER_REGION_185001" },
	-- 刷怪
	{ config_id = 1185002, name = "ENTER_REGION_185002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_185002" },
	-- 打完怪
	{ config_id = 1185003, name = "ENTER_REGION_185003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_185003" },
	-- 夜阑路面消失
	{ config_id = 1185005, name = "ENTER_REGION_185005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_185005" }
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
		regions = { 185001 },
		triggers = { "ENTER_REGION_185001" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 185002 },
		triggers = { "ENTER_REGION_185002" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 185003 },
		triggers = { "ENTER_REGION_185003" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 185005 },
		triggers = { "ENTER_REGION_185005" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { },
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
function condition_EVENT_ENTER_REGION_185001(context, evt)
	if evt.param1 ~= 185001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_185001(context, evt)
	-- 调用提示id为 60010112 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010112) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_185002(context, evt)
	-- 调用提示id为 60010113 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010113) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_185003(context, evt)
	-- 调用提示id为 60010114 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010114) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_185005(context, evt)
	-- 调用提示id为 60010117 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010117) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end