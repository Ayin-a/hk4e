-- 基础信息
local base_info = {
	group_id = 133002485
}

-- DEFS_MISCS
local regionsearch_region_id = 3002001

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 485005, monster_id = 20050201, pos = { x = 1252.653, y = 200.645, z = -160.405 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "魔法生物", affix = { 5010, 5011 }, pose_id = 3, area_id = 5 },
	{ config_id = 485006, monster_id = 21010201, pos = { x = 1252.768, y = 200.824, z = -162.577 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘人", pose_id = 9016, area_id = 5 },
	{ config_id = 485007, monster_id = 21010201, pos = { x = 1253.833, y = 200.421, z = -158.701 }, rot = { x = 0.000, y = 203.544, z = 0.000 }, level = 1, drop_tag = "丘丘人", pose_id = 9016, area_id = 5 },
	{ config_id = 485008, monster_id = 21010401, pos = { x = 1258.207, y = 206.441, z = -158.789 }, rot = { x = 0.000, y = 266.891, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 485001, gadget_id = 70300090, pos = { x = 1257.999, y = 200.995, z = -158.957 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 485002, gadget_id = 70220013, pos = { x = 1256.415, y = 200.975, z = -161.975 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 485003, gadget_id = 70220013, pos = { x = 1255.092, y = 200.993, z = -163.755 }, rot = { x = 0.000, y = 48.358, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 485004, gadget_id = 70220005, pos = { x = 1255.995, y = 200.604, z = -156.655 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 485009, gadget_id = 70300108, pos = { x = 1257.380, y = 200.393, z = -156.053 }, rot = { x = 0.000, y = 148.799, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 485010, gadget_id = 70310006, pos = { x = 1251.266, y = 200.553, z = -160.117 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 }
}

-- 区域
regions = {
	{ config_id = 485011, shape = RegionShape.SPHERE, radius = 20, pos = { x = 1244.874, y = 200.583, z = -164.130 }, area_id = 5 }
}

-- 触发器
triggers = {
	{ config_id = 1485011, name = "ENTER_REGION_485011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_485011", action = "action_EVENT_ENTER_REGION_485011" }
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
		monsters = { 485005, 485006, 485007, 485008 },
		gadgets = { 485001, 485002, 485003, 485004, 485009, 485010 },
		regions = { 485011 },
		triggers = { "ENTER_REGION_485011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_485011(context, evt)
	if evt.param1 ~= 485011 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_485011(context, evt)
	-- 调用提示id为 600005 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 600005) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

require "Activity_Endora"