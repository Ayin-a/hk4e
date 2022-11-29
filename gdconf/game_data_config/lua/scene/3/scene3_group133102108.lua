-- 基础信息
local base_info = {
	group_id = 133102108
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
	{ config_id = 108006, monster_id = 20050201, pos = { x = 1663.156, y = 200.000, z = 115.855 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "魔法生物", affix = { 5010, 5011 }, pose_id = 3, area_id = 5 },
	{ config_id = 108014, monster_id = 20050301, pos = { x = 1709.691, y = 200.000, z = 134.106 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "魔法生物", affix = { 5010, 5011 }, pose_id = 2, area_id = 5 },
	{ config_id = 108015, monster_id = 20050701, pos = { x = 1741.428, y = 203.132, z = 104.336 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "魔法生物", affix = { 5010, 5011 }, pose_id = 2, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 108001, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1688.404, y = 204.549, z = 84.778 }, area_id = 5 }
}

-- 触发器
triggers = {
	{ config_id = 1108001, name = "ENTER_REGION_108001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_108001", action = "action_EVENT_ENTER_REGION_108001" }
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
		monsters = { 108006, 108014, 108015 },
		gadgets = { },
		regions = { 108001 },
		triggers = { "ENTER_REGION_108001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_108001(context, evt)
	if evt.param1 ~= 108001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_108001(context, evt)
	-- 调用提示id为 600003 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 600003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

require "Activity_Endora"