-- 基础信息
local base_info = {
	group_id = 133102111
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
	{ config_id = 111001, monster_id = 20050601, pos = { x = 1826.123, y = 200.000, z = -88.951 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "魔法生物", affix = { 5010, 5011 }, pose_id = 3, area_id = 3 },
	{ config_id = 111002, monster_id = 20050601, pos = { x = 1823.732, y = 200.000, z = -95.525 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "魔法生物", affix = { 5010, 5011 }, pose_id = 3, area_id = 3 },
	{ config_id = 111003, monster_id = 20050601, pos = { x = 1821.773, y = 200.000, z = -91.707 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "魔法生物", affix = { 5010, 5011 }, pose_id = 3, area_id = 3 },
	{ config_id = 111004, monster_id = 20050201, pos = { x = 1821.406, y = 200.000, z = -22.914 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "魔法生物", affix = { 5010, 5011 }, pose_id = 3, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 111007, gadget_id = 70290008, pos = { x = 1821.451, y = 200.000, z = -21.472 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 5 },
	{ config_id = 111008, gadget_id = 70500000, pos = { x = 1821.451, y = 200.000, z = -21.472 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 3008, owner = 111007, area_id = 5 }
}

-- 区域
regions = {
	{ config_id = 111005, shape = RegionShape.SPHERE, radius = 20, pos = { x = 1823.904, y = 200.241, z = -23.296 }, area_id = 5 }
}

-- 触发器
triggers = {
	{ config_id = 1111005, name = "ENTER_REGION_111005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_111005", action = "action_EVENT_ENTER_REGION_111005" }
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
		monsters = { 111001, 111002, 111003, 111004 },
		gadgets = { 111007, 111008 },
		regions = { 111005 },
		triggers = { "ENTER_REGION_111005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_111005(context, evt)
	if evt.param1 ~= 111005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_111005(context, evt)
	-- 调用提示id为 600007 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 600007) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

require "Activity_Endora"