-- 基础信息
local base_info = {
	group_id = 133303371
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
	{ config_id = 371001, gadget_id = 70330252, pos = { x = -1338.493, y = 192.835, z = 3329.272 }, rot = { x = 0.000, y = 22.265, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 371006, gadget_id = 70210101, pos = { x = -1338.305, y = 192.276, z = 3329.696 }, rot = { x = 0.000, y = 23.965, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", isOneoff = true, persistent = true, area_id = 23 }
}

-- 区域
regions = {
	{ config_id = 371002, shape = RegionShape.SPHERE, radius = 70, pos = { x = -1338.317, y = 192.276, z = 3329.697 }, area_id = 23 },
	-- rmd 1
	{ config_id = 371003, shape = RegionShape.SPHERE, radius = 15, pos = { x = -1338.546, y = 192.275, z = 3329.685 }, area_id = 23 },
	-- rmd  2
	{ config_id = 371004, shape = RegionShape.SPHERE, radius = 4, pos = { x = -1338.609, y = 192.286, z = 3329.965 }, area_id = 23 },
	{ config_id = 371008, shape = RegionShape.SPHERE, radius = 8, pos = { x = -1338.546, y = 192.275, z = 3329.685 }, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1371002, name = "ENTER_REGION_371002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0 },
	-- rmd 1
	{ config_id = 1371003, name = "ENTER_REGION_371003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_371003", action = "action_EVENT_ENTER_REGION_371003" },
	-- rmd  2
	{ config_id = 1371004, name = "ENTER_REGION_371004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_371004", action = "action_EVENT_ENTER_REGION_371004", trigger_count = 3 },
	{ config_id = 1371008, name = "ENTER_REGION_371008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_371008", action = "action_EVENT_ENTER_REGION_371008" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 371005, monster_id = 28050106, pos = { x = -1338.297, y = 194.263, z = 3331.315 }, rot = { x = 0.000, y = 341.095, z = 0.000 }, level = 30, drop_tag = "魔法生物", isOneoff = true, area_id = 23 },
		{ config_id = 371007, monster_id = 28050106, pos = { x = -1337.131, y = 193.560, z = 3329.581 }, rot = { x = 0.000, y = 341.095, z = 0.000 }, level = 30, drop_tag = "魔法生物", isOneoff = true, area_id = 23 }
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
		regions = { 371002 },
		triggers = { "ENTER_REGION_371002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 371001 },
		regions = { 371003, 371004, 371008 },
		triggers = { "ENTER_REGION_371003", "ENTER_REGION_371004", "ENTER_REGION_371008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 371006 },
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
function condition_EVENT_ENTER_REGION_371003(context, evt)
	if evt.param1 ~= 371003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_371003(context, evt)
	-- 调用提示id为 1111311 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111311) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_371004(context, evt)
	if evt.param1 ~= 371004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_371004(context, evt)
	-- 调用提示id为 1111314 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111314) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_371008(context, evt)
	if evt.param1 ~= 371008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_371008(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7019, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end