-- 基础信息
local base_info = {
	group_id = 133301344
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
	{ config_id = 344001, gadget_id = 70330252, pos = { x = -797.725, y = 12.701, z = 3190.070 }, rot = { x = 0.000, y = 275.935, z = 0.000 }, level = 33, area_id = 23 },
	{ config_id = 344006, gadget_id = 70210101, pos = { x = -797.601, y = 12.433, z = 3190.080 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", isOneoff = true, persistent = true, area_id = 23 }
}

-- 区域
regions = {
	{ config_id = 344002, shape = RegionShape.SPHERE, radius = 50, pos = { x = -797.725, y = 12.420, z = 3190.070 }, area_id = 23 },
	-- rmd 1
	{ config_id = 344003, shape = RegionShape.SPHERE, radius = 15, pos = { x = -797.725, y = 12.420, z = 3190.070 }, area_id = 23 },
	-- rmd  2
	{ config_id = 344004, shape = RegionShape.SPHERE, radius = 2, pos = { x = -797.725, y = 12.420, z = 3190.070 }, area_id = 23 },
	{ config_id = 344005, shape = RegionShape.SPHERE, radius = 8, pos = { x = -797.725, y = 12.420, z = 3190.070 }, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1344002, name = "ENTER_REGION_344002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0 },
	-- rmd 1
	{ config_id = 1344003, name = "ENTER_REGION_344003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_344003", action = "action_EVENT_ENTER_REGION_344003" },
	-- rmd  2
	{ config_id = 1344004, name = "ENTER_REGION_344004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_344004", action = "action_EVENT_ENTER_REGION_344004", trigger_count = 3 },
	{ config_id = 1344005, name = "ENTER_REGION_344005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_344005", action = "action_EVENT_ENTER_REGION_344005" }
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
		regions = { 344002 },
		triggers = { "ENTER_REGION_344002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 344001 },
		regions = { 344003, 344004, 344005 },
		triggers = { "ENTER_REGION_344003", "ENTER_REGION_344004", "ENTER_REGION_344005" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 344006 },
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
function condition_EVENT_ENTER_REGION_344003(context, evt)
	if evt.param1 ~= 344003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_344003(context, evt)
	-- 调用提示id为 1111310 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111310) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_344004(context, evt)
	if evt.param1 ~= 344004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_344004(context, evt)
	-- 调用提示id为 1111314 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111314) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_344005(context, evt)
	if evt.param1 ~= 344005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_344005(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7019, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end