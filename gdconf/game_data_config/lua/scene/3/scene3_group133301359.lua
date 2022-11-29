-- 基础信息
local base_info = {
	group_id = 133301359
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
	{ config_id = 359001, gadget_id = 70330252, pos = { x = -982.600, y = 241.243, z = 3454.210 }, rot = { x = 0.000, y = 345.952, z = 0.000 }, level = 33, area_id = 23 },
	{ config_id = 359007, gadget_id = 70210101, pos = { x = -982.556, y = 241.030, z = 3454.066 }, rot = { x = 0.000, y = 345.952, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", isOneoff = true, persistent = true, area_id = 23 }
}

-- 区域
regions = {
	{ config_id = 359002, shape = RegionShape.SPHERE, radius = 50, pos = { x = -982.619, y = 240.981, z = 3454.194 }, area_id = 23 },
	-- rmd 1
	{ config_id = 359003, shape = RegionShape.SPHERE, radius = 15, pos = { x = -982.619, y = 240.981, z = 3454.194 }, area_id = 23 },
	-- rmd  2
	{ config_id = 359004, shape = RegionShape.SPHERE, radius = 4, pos = { x = -982.600, y = 240.979, z = 3454.211 }, area_id = 23 },
	{ config_id = 359005, shape = RegionShape.SPHERE, radius = 8, pos = { x = -982.619, y = 240.981, z = 3454.194 }, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1359002, name = "ENTER_REGION_359002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0 },
	-- rmd 1
	{ config_id = 1359003, name = "ENTER_REGION_359003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_359003", action = "action_EVENT_ENTER_REGION_359003" },
	-- rmd  2
	{ config_id = 1359004, name = "ENTER_REGION_359004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_359004", action = "action_EVENT_ENTER_REGION_359004", trigger_count = 3 },
	{ config_id = 1359005, name = "ENTER_REGION_359005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_359005", action = "action_EVENT_ENTER_REGION_359005" }
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
		regions = { 359002 },
		triggers = { "ENTER_REGION_359002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 359001 },
		regions = { 359003, 359004, 359005 },
		triggers = { "ENTER_REGION_359003", "ENTER_REGION_359004", "ENTER_REGION_359005" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 359007 },
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
function condition_EVENT_ENTER_REGION_359003(context, evt)
	if evt.param1 ~= 359003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_359003(context, evt)
	-- 调用提示id为 1111312 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111312) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_359004(context, evt)
	if evt.param1 ~= 359004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_359004(context, evt)
	-- 调用提示id为 1111313 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111313) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_359005(context, evt)
	if evt.param1 ~= 359005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_359005(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7019, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end