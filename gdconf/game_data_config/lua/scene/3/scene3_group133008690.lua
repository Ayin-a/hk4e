-- 基础信息
local base_info = {
	group_id = 133008690
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 690001, monster_id = 21010101, pos = { x = 1050.164, y = 313.267, z = -1135.376 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘人", climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 690002, gadget_id = 70220009, pos = { x = 1046.318, y = 314.933, z = -1135.654 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 }
}

-- 区域
regions = {
	-- 提示 300868310
	{ config_id = 690003, shape = RegionShape.SPHERE, radius = 30, pos = { x = 1012.910, y = 312.906, z = -1127.695 }, area_id = 10 }
}

-- 触发器
triggers = {
	-- 提示 300868310
	{ config_id = 1690003, name = "ENTER_REGION_690003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_690003", action = "action_EVENT_ENTER_REGION_690003" }
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
	end_suite = 0,
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
		gadgets = { 690002 },
		regions = { 690003 },
		triggers = { "ENTER_REGION_690003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_690003(context, evt)
	if evt.param1 ~= 690003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_690003(context, evt)
	-- 调用提示id为 300868310 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 300868310) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end