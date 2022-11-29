-- 基础信息
local base_info = {
	group_id = 133304265
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
	{ config_id = 265001, gadget_id = 70330252, pos = { x = -1724.458, y = 325.627, z = 2339.521 }, rot = { x = 0.000, y = 339.621, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 265006, gadget_id = 70210101, pos = { x = -1724.265, y = 325.323, z = 2339.521 }, rot = { x = 0.000, y = 339.621, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", isOneoff = true, persistent = true, area_id = 21 }
}

-- 区域
regions = {
	{ config_id = 265002, shape = RegionShape.SPHERE, radius = 50, pos = { x = -1724.266, y = 325.323, z = 2339.521 }, area_id = 21 },
	-- rmd 1
	{ config_id = 265003, shape = RegionShape.SPHERE, radius = 20, pos = { x = -1724.266, y = 325.323, z = 2339.521 }, area_id = 21 },
	-- rmd  2
	{ config_id = 265004, shape = RegionShape.SPHERE, radius = 2, pos = { x = -1724.278, y = 325.375, z = 2339.390 }, area_id = 21 },
	{ config_id = 265007, shape = RegionShape.SPHERE, radius = 8, pos = { x = -1724.266, y = 325.323, z = 2339.521 }, area_id = 21 }
}

-- 触发器
triggers = {
	{ config_id = 1265002, name = "ENTER_REGION_265002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0 },
	-- rmd 1
	{ config_id = 1265003, name = "ENTER_REGION_265003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_265003", action = "action_EVENT_ENTER_REGION_265003" },
	-- rmd  2
	{ config_id = 1265004, name = "ENTER_REGION_265004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_265004", action = "action_EVENT_ENTER_REGION_265004", trigger_count = 3 },
	{ config_id = 1265007, name = "ENTER_REGION_265007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_265007", action = "action_EVENT_ENTER_REGION_265007" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 265005, monster_id = 28050106, pos = { x = -1724.003, y = 325.687, z = 2340.887 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "魔法生物", area_id = 21 }
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
		regions = { 265002 },
		triggers = { "ENTER_REGION_265002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 265001 },
		regions = { 265003, 265004, 265007 },
		triggers = { "ENTER_REGION_265003", "ENTER_REGION_265004", "ENTER_REGION_265007" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 265006 },
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
function condition_EVENT_ENTER_REGION_265003(context, evt)
	if evt.param1 ~= 265003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_265003(context, evt)
	-- 调用提示id为 1111312 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111312) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_265004(context, evt)
	if evt.param1 ~= 265004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_265004(context, evt)
	-- 调用提示id为 1111314 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111314) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_265007(context, evt)
	if evt.param1 ~= 265007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_265007(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7019, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end