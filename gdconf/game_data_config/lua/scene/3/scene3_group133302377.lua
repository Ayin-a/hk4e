-- 基础信息
local base_info = {
	group_id = 133302377
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
	{ config_id = 377001, gadget_id = 70330252, pos = { x = 44.784, y = 459.506, z = 2057.822 }, rot = { x = 0.000, y = 332.913, z = 0.000 }, level = 30, area_id = 20 },
	{ config_id = 377007, gadget_id = 70210101, pos = { x = 44.784, y = 459.181, z = 2057.822 }, rot = { x = 0.000, y = 332.913, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", isOneoff = true, persistent = true, area_id = 20 }
}

-- 区域
regions = {
	{ config_id = 377002, shape = RegionShape.SPHERE, radius = 60, pos = { x = 44.784, y = 459.181, z = 2057.821 }, area_id = 20 },
	-- rmd 1
	{ config_id = 377003, shape = RegionShape.SPHERE, radius = 15, pos = { x = 44.784, y = 459.181, z = 2057.821 }, area_id = 20 },
	-- rmd  2
	{ config_id = 377004, shape = RegionShape.SPHERE, radius = 4, pos = { x = 44.970, y = 458.805, z = 2057.987 }, area_id = 20 },
	{ config_id = 377005, shape = RegionShape.SPHERE, radius = 8, pos = { x = 44.784, y = 459.181, z = 2057.821 }, area_id = 20 }
}

-- 触发器
triggers = {
	{ config_id = 1377002, name = "ENTER_REGION_377002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0 },
	-- rmd 1
	{ config_id = 1377003, name = "ENTER_REGION_377003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_377003", action = "action_EVENT_ENTER_REGION_377003" },
	-- rmd  2
	{ config_id = 1377004, name = "ENTER_REGION_377004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_377004", action = "action_EVENT_ENTER_REGION_377004", trigger_count = 3 },
	{ config_id = 1377005, name = "ENTER_REGION_377005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_377005", action = "action_EVENT_ENTER_REGION_377005" }
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
		regions = { 377002 },
		triggers = { "ENTER_REGION_377002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 377001 },
		regions = { 377003, 377004, 377005 },
		triggers = { "ENTER_REGION_377003", "ENTER_REGION_377004", "ENTER_REGION_377005" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 377007 },
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
function condition_EVENT_ENTER_REGION_377003(context, evt)
	if evt.param1 ~= 377003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_377003(context, evt)
	-- 调用提示id为 1111300 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111300) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_377004(context, evt)
	if evt.param1 ~= 377004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_377004(context, evt)
	-- 调用提示id为 1111313 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111313) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_377005(context, evt)
	if evt.param1 ~= 377005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_377005(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7019, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end