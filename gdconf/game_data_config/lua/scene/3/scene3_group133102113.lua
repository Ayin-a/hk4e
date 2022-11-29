-- 基础信息
local base_info = {
	group_id = 133102113
}

-- DEFS_MISCS
local regionsearch_region_id = 3102001

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 113001, monster_id = 20050301, pos = { x = 1839.414, y = 203.213, z = -99.522 }, rot = { x = 0.000, y = 157.139, z = 0.000 }, level = 1, drop_tag = "魔法生物", affix = { 5010, 5011 }, pose_id = 3, area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 113002, shape = RegionShape.SPHERE, radius = 15, pos = { x = 1871.030, y = 201.922, z = -131.511 }, area_id = 3 }
}

-- 触发器
triggers = {
	{ config_id = 1113002, name = "ENTER_REGION_113002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_113002", action = "action_EVENT_ENTER_REGION_113002" }
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
		monsters = { 113001 },
		gadgets = { },
		regions = { 113002 },
		triggers = { "ENTER_REGION_113002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_113002(context, evt)
	if evt.param1 ~= 113002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_113002(context, evt)
	-- 调用提示id为 600001 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 600001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

require "Activity_Endora"