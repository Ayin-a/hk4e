-- 基础信息
local base_info = {
	group_id = 133304264
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
	{ config_id = 264001, gadget_id = 70330252, pos = { x = -1195.439, y = 138.655, z = 2288.142 }, rot = { x = 0.000, y = 334.438, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 264007, gadget_id = 70210101, pos = { x = -1195.501, y = 138.387, z = 2288.269 }, rot = { x = 0.000, y = 334.438, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", isOneoff = true, persistent = true, area_id = 21 }
}

-- 区域
regions = {
	{ config_id = 264002, shape = RegionShape.SPHERE, radius = 70, pos = { x = -1202.174, y = 138.387, z = 2303.280 }, area_id = 21 },
	-- rmd 1
	{ config_id = 264003, shape = RegionShape.SPHERE, radius = 18, pos = { x = -1193.735, y = 139.207, z = 2288.269 }, area_id = 21 },
	-- rmd  2
	{ config_id = 264004, shape = RegionShape.SPHERE, radius = 3, pos = { x = -1195.501, y = 138.387, z = 2288.269 }, area_id = 21 },
	{ config_id = 264008, shape = RegionShape.SPHERE, radius = 8, pos = { x = -1195.501, y = 138.387, z = 2288.269 }, area_id = 21 }
}

-- 触发器
triggers = {
	{ config_id = 1264002, name = "ENTER_REGION_264002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0 },
	-- rmd 1
	{ config_id = 1264003, name = "ENTER_REGION_264003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_264003", action = "action_EVENT_ENTER_REGION_264003" },
	-- rmd  2
	{ config_id = 1264004, name = "ENTER_REGION_264004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_264004", action = "action_EVENT_ENTER_REGION_264004", trigger_count = 3 },
	{ config_id = 1264008, name = "ENTER_REGION_264008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_264008", action = "action_EVENT_ENTER_REGION_264008" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 264005, monster_id = 28050106, pos = { x = -1194.301, y = 138.270, z = 2288.986 }, rot = { x = 0.000, y = 295.456, z = 0.000 }, level = 30, drop_tag = "魔法生物", isOneoff = true, area_id = 21 },
		{ config_id = 264006, monster_id = 28050106, pos = { x = -1197.113, y = 140.055, z = 2288.442 }, rot = { x = 0.000, y = 350.522, z = 0.000 }, level = 30, drop_tag = "魔法生物", isOneoff = true, area_id = 21 }
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
		regions = { 264002 },
		triggers = { "ENTER_REGION_264002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 264001 },
		regions = { 264003, 264004, 264008 },
		triggers = { "ENTER_REGION_264003", "ENTER_REGION_264004", "ENTER_REGION_264008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 264007 },
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
function condition_EVENT_ENTER_REGION_264003(context, evt)
	if evt.param1 ~= 264003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_264003(context, evt)
	-- 调用提示id为 1111300 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111300) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_264004(context, evt)
	if evt.param1 ~= 264004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_264004(context, evt)
	-- 调用提示id为 1111313 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111313) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_264008(context, evt)
	if evt.param1 ~= 264008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_264008(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7019, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end