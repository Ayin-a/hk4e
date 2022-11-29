-- 基础信息
local base_info = {
	group_id = 133304262
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
	{ config_id = 262001, gadget_id = 70330252, pos = { x = -1039.829, y = 276.744, z = 2994.716 }, rot = { x = 0.000, y = 14.453, z = 0.000 }, level = 27, area_id = 23 },
	{ config_id = 262009, gadget_id = 70210101, pos = { x = -1039.820, y = 276.366, z = 2994.710 }, rot = { x = 0.000, y = 14.453, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", isOneoff = true, persistent = true, area_id = 23 }
}

-- 区域
regions = {
	{ config_id = 262002, shape = RegionShape.SPHERE, radius = 50, pos = { x = -1039.643, y = 276.346, z = 2994.667 }, area_id = 23 },
	-- rmd 1
	{ config_id = 262003, shape = RegionShape.SPHERE, radius = 15, pos = { x = -1039.643, y = 276.346, z = 2994.667 }, area_id = 23 },
	-- rmd  2
	{ config_id = 262004, shape = RegionShape.SPHERE, radius = 2, pos = { x = -1040.087, y = 276.402, z = 2994.693 }, area_id = 23 },
	{ config_id = 262005, shape = RegionShape.SPHERE, radius = 8, pos = { x = -1039.643, y = 276.346, z = 2994.667 }, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1262002, name = "ENTER_REGION_262002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0 },
	-- rmd 1
	{ config_id = 1262003, name = "ENTER_REGION_262003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_262003", action = "action_EVENT_ENTER_REGION_262003" },
	-- rmd  2
	{ config_id = 1262004, name = "ENTER_REGION_262004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_262004", action = "action_EVENT_ENTER_REGION_262004", trigger_count = 3 },
	{ config_id = 1262005, name = "ENTER_REGION_262005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_262005", action = "action_EVENT_ENTER_REGION_262005" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 262007, monster_id = 28050106, pos = { x = -1040.338, y = 277.685, z = 2995.345 }, rot = { x = 0.000, y = 14.453, z = 0.000 }, level = 30, drop_tag = "魔法生物", isOneoff = true, area_id = 23 },
		{ config_id = 262008, monster_id = 28050106, pos = { x = -1038.875, y = 276.831, z = 2995.171 }, rot = { x = 0.000, y = 14.453, z = 0.000 }, level = 30, drop_tag = "魔法生物", isOneoff = true, area_id = 23 }
	}
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
		gadgets = { },
		regions = { 262002 },
		triggers = { "ENTER_REGION_262002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 262001 },
		regions = { 262003, 262004, 262005 },
		triggers = { "ENTER_REGION_262003", "ENTER_REGION_262004", "ENTER_REGION_262005" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 262009 },
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
function condition_EVENT_ENTER_REGION_262003(context, evt)
	if evt.param1 ~= 262003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_262003(context, evt)
	-- 调用提示id为 1111310 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111310) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_262004(context, evt)
	if evt.param1 ~= 262004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_262004(context, evt)
	-- 调用提示id为 1111314 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111314) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_262005(context, evt)
	if evt.param1 ~= 262005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_262005(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7019, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end