-- 基础信息
local base_info = {
	group_id = 133105350
}

-- DEFS_MISCS
local regionsearch_region_id = 3105001

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 350002, monster_id = 20050201, pos = { x = 411.647, y = 200.950, z = -265.019 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "魔法生物", affix = { 5010, 5011 }, pose_id = 4, area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 350001, gadget_id = 70620008, pos = { x = 413.485, y = 196.514, z = -265.291 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 9 }
}

-- 区域
regions = {
	{ config_id = 350004, shape = RegionShape.SPHERE, radius = 25, pos = { x = 415.574, y = 200.950, z = -265.359 }, area_id = 9 }
}

-- 触发器
triggers = {
	{ config_id = 1350003, name = "ANY_MONSTER_DIE_350003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_350003", action = "action_EVENT_ANY_MONSTER_DIE_350003" },
	{ config_id = 1350004, name = "ENTER_REGION_350004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_350004", action = "action_EVENT_ENTER_REGION_350004" }
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
		monsters = { 350002 },
		gadgets = { 350001 },
		regions = { 350004 },
		triggers = { "ANY_MONSTER_DIE_350003", "ENTER_REGION_350004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_350003(context, evt)
	if 350002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_350003(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 350001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_350004(context, evt)
	if evt.param1 ~= 350004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_350004(context, evt)
	-- 调用提示id为 600012 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 600012) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

require "Activity_Endora"