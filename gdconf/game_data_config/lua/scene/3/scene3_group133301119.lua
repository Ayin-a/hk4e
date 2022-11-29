-- 基础信息
local base_info = {
	group_id = 133301119
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
	{ config_id = 119004, gadget_id = 70330252, pos = { x = -882.363, y = 305.049, z = 3136.433 }, rot = { x = 2.442, y = 147.713, z = 2.346 }, level = 33, area_id = 23 },
	{ config_id = 119006, gadget_id = 70210101, pos = { x = -882.219, y = 304.730, z = 3136.250 }, rot = { x = 2.442, y = 147.713, z = 2.346 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", isOneoff = true, persistent = true, area_id = 23 }
}

-- 区域
regions = {
	{ config_id = 119001, shape = RegionShape.SPHERE, radius = 50, pos = { x = -882.052, y = 304.687, z = 3136.173 }, area_id = 23 },
	-- rmd 1
	{ config_id = 119002, shape = RegionShape.SPHERE, radius = 15, pos = { x = -882.052, y = 304.687, z = 3136.173 }, area_id = 23 },
	-- rmd  2
	{ config_id = 119003, shape = RegionShape.SPHERE, radius = 4, pos = { x = -881.758, y = 304.628, z = 3136.043 }, area_id = 23 },
	{ config_id = 119005, shape = RegionShape.SPHERE, radius = 8, pos = { x = -882.052, y = 304.687, z = 3136.173 }, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1119001, name = "ENTER_REGION_119001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0 },
	-- rmd 1
	{ config_id = 1119002, name = "ENTER_REGION_119002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_119002", action = "action_EVENT_ENTER_REGION_119002" },
	-- rmd  2
	{ config_id = 1119003, name = "ENTER_REGION_119003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_119003", action = "action_EVENT_ENTER_REGION_119003", trigger_count = 3 },
	{ config_id = 1119005, name = "ENTER_REGION_119005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_119005", action = "action_EVENT_ENTER_REGION_119005" }
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
		regions = { 119001 },
		triggers = { "ENTER_REGION_119001" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 119004 },
		regions = { 119002, 119003, 119005 },
		triggers = { "ENTER_REGION_119002", "ENTER_REGION_119003", "ENTER_REGION_119005" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 119006 },
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
function condition_EVENT_ENTER_REGION_119002(context, evt)
	if evt.param1 ~= 119002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_119002(context, evt)
	-- 调用提示id为 1111300 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111300) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_119003(context, evt)
	if evt.param1 ~= 119003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_119003(context, evt)
	-- 调用提示id为 1111301 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111301) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_119005(context, evt)
	if evt.param1 ~= 119005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_119005(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7019, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end