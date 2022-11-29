-- 基础信息
local base_info = {
	group_id = 133303369
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
	{ config_id = 369001, gadget_id = 70330252, pos = { x = -1169.253, y = 268.283, z = 3336.236 }, rot = { x = 0.000, y = 107.757, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 369007, gadget_id = 70210101, pos = { x = -1168.989, y = 267.952, z = 3336.046 }, rot = { x = 0.000, y = 107.757, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", isOneoff = true, persistent = true, area_id = 23 }
}

-- 区域
regions = {
	{ config_id = 369002, shape = RegionShape.SPHERE, radius = 50, pos = { x = -1169.027, y = 267.945, z = 3335.947 }, area_id = 23 },
	-- rmd 1
	{ config_id = 369003, shape = RegionShape.SPHERE, radius = 20, pos = { x = -1169.255, y = 267.941, z = 3335.935 }, area_id = 23 },
	-- rmd  2
	{ config_id = 369004, shape = RegionShape.SPHERE, radius = 4, pos = { x = -1169.015, y = 267.945, z = 3335.946 }, area_id = 23 },
	{ config_id = 369005, shape = RegionShape.SPHERE, radius = 8, pos = { x = -1169.255, y = 267.941, z = 3335.935 }, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1369002, name = "ENTER_REGION_369002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0 },
	-- rmd 1
	{ config_id = 1369003, name = "ENTER_REGION_369003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_369003", action = "action_EVENT_ENTER_REGION_369003" },
	-- rmd  2
	{ config_id = 1369004, name = "ENTER_REGION_369004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_369004", action = "action_EVENT_ENTER_REGION_369004", trigger_count = 3 },
	{ config_id = 1369005, name = "ENTER_REGION_369005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_369005", action = "action_EVENT_ENTER_REGION_369005" }
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
		regions = { 369002 },
		triggers = { "ENTER_REGION_369002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 369001 },
		regions = { 369003, 369004, 369005 },
		triggers = { "ENTER_REGION_369003", "ENTER_REGION_369004", "ENTER_REGION_369005" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 369007 },
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
function condition_EVENT_ENTER_REGION_369003(context, evt)
	if evt.param1 ~= 369003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_369003(context, evt)
	-- 调用提示id为 1111312 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111312) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_369004(context, evt)
	if evt.param1 ~= 369004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_369004(context, evt)
	-- 调用提示id为 1111314 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111314) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_369005(context, evt)
	if evt.param1 ~= 369005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_369005(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7019, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end