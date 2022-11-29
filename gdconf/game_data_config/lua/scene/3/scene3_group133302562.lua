-- 基础信息
local base_info = {
	group_id = 133302562
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
	{ config_id = 562001, gadget_id = 70290498, pos = { x = -275.034, y = 192.589, z = 2519.068 }, rot = { x = 0.000, y = 280.579, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 562002, gadget_id = 70210101, pos = { x = -275.087, y = 192.583, z = 2519.148 }, rot = { x = 0.000, y = 280.579, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", isOneoff = true, persistent = true, area_id = 24 }
}

-- 区域
regions = {
	{ config_id = 562003, shape = RegionShape.SPHERE, radius = 30, pos = { x = -275.690, y = 192.589, z = 2519.009 }, area_id = 24 },
	{ config_id = 562004, shape = RegionShape.SPHERE, radius = 3, pos = { x = -275.205, y = 192.589, z = 2519.114 }, area_id = 24 }
}

-- 触发器
triggers = {
	{ config_id = 1562003, name = "ENTER_REGION_562003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0 },
	{ config_id = 1562004, name = "ENTER_REGION_562004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_562004", action = "action_EVENT_ENTER_REGION_562004" }
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
		regions = { 562003 },
		triggers = { "ENTER_REGION_562003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 562001 },
		regions = { 562004 },
		triggers = { "ENTER_REGION_562004" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 562002 },
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
function condition_EVENT_ENTER_REGION_562004(context, evt)
	if evt.param1 ~= 562004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133302562, 562001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_562004(context, evt)
	-- 调用提示id为 1111320 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111320) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end