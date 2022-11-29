-- 基础信息
local base_info = {
	group_id = 133304263
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
	{ config_id = 263001, gadget_id = 70330252, pos = { x = -1478.405, y = 354.412, z = 2113.626 }, rot = { x = 0.000, y = 126.428, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 263006, gadget_id = 70210101, pos = { x = -1478.405, y = 354.085, z = 2113.626 }, rot = { x = 0.000, y = 126.428, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", isOneoff = true, persistent = true, area_id = 21 }
}

-- 区域
regions = {
	{ config_id = 263002, shape = RegionShape.SPHERE, radius = 50, pos = { x = -1478.406, y = 354.085, z = 2113.625 }, area_id = 21 },
	-- rmd 1
	{ config_id = 263003, shape = RegionShape.SPHERE, radius = 15, pos = { x = -1478.406, y = 354.085, z = 2113.625 }, area_id = 21 },
	-- rmd  2
	{ config_id = 263004, shape = RegionShape.SPHERE, radius = 2, pos = { x = -1478.842, y = 354.263, z = 2113.539 }, area_id = 21 },
	{ config_id = 263005, shape = RegionShape.SPHERE, radius = 8, pos = { x = -1478.406, y = 354.085, z = 2113.625 }, area_id = 21 }
}

-- 触发器
triggers = {
	{ config_id = 1263002, name = "ENTER_REGION_263002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0 },
	-- rmd 1
	{ config_id = 1263003, name = "ENTER_REGION_263003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_263003", action = "action_EVENT_ENTER_REGION_263003" },
	-- rmd  2
	{ config_id = 1263004, name = "ENTER_REGION_263004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_263004", action = "action_EVENT_ENTER_REGION_263004", trigger_count = 3 },
	{ config_id = 1263005, name = "ENTER_REGION_263005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_263005", action = "action_EVENT_ENTER_REGION_263005" }
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
		regions = { 263002 },
		triggers = { "ENTER_REGION_263002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 263001 },
		regions = { 263003, 263004, 263005 },
		triggers = { "ENTER_REGION_263003", "ENTER_REGION_263004", "ENTER_REGION_263005" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 263006 },
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
function condition_EVENT_ENTER_REGION_263003(context, evt)
	if evt.param1 ~= 263003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_263003(context, evt)
	-- 调用提示id为 1111310 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111310) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_263004(context, evt)
	if evt.param1 ~= 263004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_263004(context, evt)
	-- 调用提示id为 1111314 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111314) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_263005(context, evt)
	if evt.param1 ~= 263005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_263005(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7019, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end