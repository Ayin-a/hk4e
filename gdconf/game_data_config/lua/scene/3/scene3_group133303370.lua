-- 基础信息
local base_info = {
	group_id = 133303370
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
	{ config_id = 370001, gadget_id = 70330252, pos = { x = -1804.108, y = 157.673, z = 3387.363 }, rot = { x = 0.000, y = 150.847, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 370006, gadget_id = 70210101, pos = { x = -1803.898, y = 157.364, z = 3387.505 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", isOneoff = true, persistent = true, area_id = 23 }
}

-- 区域
regions = {
	{ config_id = 370002, shape = RegionShape.SPHERE, radius = 50, pos = { x = -1804.101, y = 157.354, z = 3387.359 }, area_id = 23 },
	-- rmd 1
	{ config_id = 370003, shape = RegionShape.SPHERE, radius = 18, pos = { x = -1803.908, y = 157.360, z = 3387.482 }, area_id = 23 },
	-- rmd  2
	{ config_id = 370004, shape = RegionShape.SPHERE, radius = 4, pos = { x = -1804.099, y = 157.355, z = 3387.228 }, area_id = 23 },
	{ config_id = 370005, shape = RegionShape.SPHERE, radius = 8, pos = { x = -1803.908, y = 157.360, z = 3387.482 }, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1370002, name = "ENTER_REGION_370002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0 },
	-- rmd 1
	{ config_id = 1370003, name = "ENTER_REGION_370003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_370003", action = "action_EVENT_ENTER_REGION_370003" },
	-- rmd  2
	{ config_id = 1370004, name = "ENTER_REGION_370004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_370004", action = "action_EVENT_ENTER_REGION_370004", trigger_count = 3 },
	{ config_id = 1370005, name = "ENTER_REGION_370005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_370005", action = "action_EVENT_ENTER_REGION_370005" }
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
		regions = { 370002 },
		triggers = { "ENTER_REGION_370002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 370001 },
		regions = { 370003, 370004, 370005 },
		triggers = { "ENTER_REGION_370003", "ENTER_REGION_370004", "ENTER_REGION_370005" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 370006 },
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
function condition_EVENT_ENTER_REGION_370003(context, evt)
	if evt.param1 ~= 370003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_370003(context, evt)
	-- 调用提示id为 1111309 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111309) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_370004(context, evt)
	if evt.param1 ~= 370004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_370004(context, evt)
	-- 调用提示id为 1111301 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111301) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_370005(context, evt)
	if evt.param1 ~= 370005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_370005(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7019, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end