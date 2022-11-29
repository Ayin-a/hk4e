-- 基础信息
local base_info = {
	group_id = 133104154
}

-- DEFS_MISCS
local regionsearch_region_id = 3104001

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 154006, monster_id = 20050201, pos = { x = 232.567, y = 200.294, z = 730.302 }, rot = { x = 0.000, y = 202.993, z = 0.000 }, level = 1, drop_tag = "魔法生物", affix = { 5010, 5011 }, pose_id = 3, area_id = 9 },
	{ config_id = 154007, monster_id = 25030201, pos = { x = 231.815, y = 200.291, z = 728.484 }, rot = { x = 0.000, y = 19.878, z = 0.000 }, level = 1, drop_tag = "盗宝团", pose_id = 9003, area_id = 9 },
	{ config_id = 154008, monster_id = 25010401, pos = { x = 232.798, y = 200.237, z = 734.707 }, rot = { x = 0.000, y = 121.670, z = 0.000 }, level = 1, drop_tag = "盗宝团", pose_id = 9006, area_id = 9 },
	{ config_id = 154009, monster_id = 25010401, pos = { x = 234.011, y = 200.234, z = 735.123 }, rot = { x = 0.000, y = 222.696, z = 0.000 }, level = 1, drop_tag = "盗宝团", pose_id = 9002, area_id = 9 },
	{ config_id = 154010, monster_id = 20050801, pos = { x = 203.468, y = 200.000, z = 742.549 }, rot = { x = 0.000, y = 182.074, z = 0.000 }, level = 1, drop_tag = "魔法生物", affix = { 5010, 5011 }, pose_id = 3, area_id = 9 },
	{ config_id = 154011, monster_id = 20050201, pos = { x = 267.666, y = 200.000, z = 724.122 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "魔法生物", affix = { 5010, 5011 }, pose_id = 3, area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 154001, gadget_id = 70220051, pos = { x = 235.975, y = 200.223, z = 734.831 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 9 },
	{ config_id = 154002, gadget_id = 70300093, pos = { x = 236.442, y = 200.168, z = 736.004 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 9 },
	{ config_id = 154003, gadget_id = 70300105, pos = { x = 238.590, y = 200.293, z = 732.055 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 9 },
	{ config_id = 154004, gadget_id = 70220052, pos = { x = 237.739, y = 200.294, z = 731.377 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 9 },
	{ config_id = 154005, gadget_id = 70310006, pos = { x = 234.831, y = 200.290, z = 732.256 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 9 }
}

-- 区域
regions = {
	{ config_id = 154012, shape = RegionShape.SPHERE, radius = 25, pos = { x = 228.528, y = 200.280, z = 729.782 }, area_id = 9 }
}

-- 触发器
triggers = {
	{ config_id = 1154012, name = "ENTER_REGION_154012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_154012", action = "action_EVENT_ENTER_REGION_154012" }
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
		monsters = { 154006, 154007, 154008, 154009, 154010, 154011 },
		gadgets = { 154001, 154002, 154003, 154004, 154005 },
		regions = { 154012 },
		triggers = { "ENTER_REGION_154012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_154012(context, evt)
	if evt.param1 ~= 154012 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_154012(context, evt)
	-- 调用提示id为 600015 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 600015) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

require "Activity_Endora"