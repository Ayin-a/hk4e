-- 基础信息
local base_info = {
	group_id = 133302379
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
	{ config_id = 379001, gadget_id = 70330252, pos = { x = -1017.709, y = 244.336, z = 2516.164 }, rot = { x = 0.000, y = 71.072, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 379006, gadget_id = 70210101, pos = { x = -1017.514, y = 243.945, z = 2516.167 }, rot = { x = 0.000, y = 71.072, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", isOneoff = true, persistent = true, area_id = 24 },
	{ config_id = 379007, gadget_id = 70220103, pos = { x = -1024.315, y = 245.150, z = 2526.960 }, rot = { x = 0.000, y = 71.072, z = 0.000 }, level = 27, persistent = true, area_id = 24 }
}

-- 区域
regions = {
	{ config_id = 379002, shape = RegionShape.SPHERE, radius = 60, pos = { x = -1017.518, y = 230.518, z = 2516.165 }, area_id = 24 },
	-- rmd 1
	{ config_id = 379003, shape = RegionShape.SPHERE, radius = 25, pos = { x = -1017.518, y = 236.274, z = 2516.165 }, area_id = 24 },
	-- rmd  2
	{ config_id = 379004, shape = RegionShape.SPHERE, radius = 3, pos = { x = -1017.954, y = 244.099, z = 2516.079 }, area_id = 24 },
	{ config_id = 379005, shape = RegionShape.SPHERE, radius = 8, pos = { x = -1017.518, y = 236.274, z = 2516.165 }, area_id = 24 }
}

-- 触发器
triggers = {
	{ config_id = 1379002, name = "ENTER_REGION_379002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0 },
	-- rmd 1
	{ config_id = 1379003, name = "ENTER_REGION_379003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_379003", action = "action_EVENT_ENTER_REGION_379003" },
	-- rmd  2
	{ config_id = 1379004, name = "ENTER_REGION_379004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_379004", action = "action_EVENT_ENTER_REGION_379004", trigger_count = 3 },
	{ config_id = 1379005, name = "ENTER_REGION_379005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_379005", action = "action_EVENT_ENTER_REGION_379005" }
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
		regions = { 379002 },
		triggers = { "ENTER_REGION_379002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 379001, 379007 },
		regions = { 379003, 379004, 379005 },
		triggers = { "ENTER_REGION_379003", "ENTER_REGION_379004", "ENTER_REGION_379005" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 379006, 379007 },
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
function condition_EVENT_ENTER_REGION_379003(context, evt)
	if evt.param1 ~= 379003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_379003(context, evt)
	-- 调用提示id为 1111300 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111300) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_379004(context, evt)
	if evt.param1 ~= 379004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_379004(context, evt)
	-- 调用提示id为 1111313 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111313) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_379005(context, evt)
	if evt.param1 ~= 379005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_379005(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7019, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end