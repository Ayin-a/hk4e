-- 基础信息
local base_info = {
	group_id = 133001065
}

-- Trigger变量
local defs = {
	group_id = 133001065,
	challenge_id = 255,
	region_id = 65014,
	target_count = 6
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 65001, monster_id = 28020601, pos = { x = 985.406, y = 199.894, z = -1317.181 }, rot = { x = 0.000, y = 64.297, z = 0.000 }, level = 1, drop_tag = "走兽", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 65002, monster_id = 21010201, pos = { x = 1016.898, y = 201.477, z = -1319.161 }, rot = { x = 0.000, y = 269.978, z = 0.000 }, level = 1, drop_tag = "丘丘人", isOneoff = true, pose_id = 9003, climate_area_id = 1, area_id = 10 },
	{ config_id = 65003, monster_id = 28050103, pos = { x = 1009.573, y = 218.782, z = -1287.608 }, rot = { x = 328.744, y = 212.936, z = 306.445 }, level = 1, drop_tag = "魔法生物", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 65004, monster_id = 28050103, pos = { x = 1010.095, y = 218.754, z = -1288.144 }, rot = { x = 327.272, y = 213.719, z = 11.015 }, level = 1, drop_tag = "魔法生物", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 65006, monster_id = 28030403, pos = { x = 1029.324, y = 202.425, z = -1306.517 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 65007, monster_id = 28020601, pos = { x = 1049.806, y = 200.589, z = -1300.743 }, rot = { x = 0.000, y = 26.890, z = 0.000 }, level = 1, drop_tag = "走兽", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 65015, monster_id = 28030403, pos = { x = 1030.119, y = 202.281, z = -1306.461 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 65016, monster_id = 28020303, pos = { x = 1014.114, y = 201.304, z = -1318.356 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 65017, monster_id = 28020303, pos = { x = 995.291, y = 200.568, z = -1300.769 }, rot = { x = 0.000, y = 313.664, z = 0.000 }, level = 1, drop_tag = "走兽", isOneoff = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 65018, monster_id = 21020401, pos = { x = 1020.018, y = 203.240, z = -1308.046 }, rot = { x = 0.000, y = 180.053, z = 0.000 }, level = 1, drop_tag = "丘丘岩盔王", isOneoff = true, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 65008, gadget_id = 70220083, pos = { x = 1050.108, y = 200.637, z = -1301.131 }, rot = { x = 349.690, y = 97.854, z = 14.037 }, level = 1, isOneoff = true, area_id = 10 },
	{ config_id = 65009, gadget_id = 70220083, pos = { x = 1029.691, y = 202.760, z = -1306.170 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, area_id = 10 },
	{ config_id = 65010, gadget_id = 70220083, pos = { x = 985.035, y = 199.896, z = -1317.946 }, rot = { x = 0.000, y = 64.297, z = 0.000 }, level = 1, isOneoff = true, area_id = 10 },
	{ config_id = 65011, gadget_id = 70220083, pos = { x = 1014.034, y = 201.885, z = -1318.249 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, area_id = 10 },
	{ config_id = 65012, gadget_id = 70220083, pos = { x = 995.404, y = 201.241, z = -1300.582 }, rot = { x = 0.000, y = 159.977, z = 0.000 }, level = 1, isOneoff = true, area_id = 10 },
	{ config_id = 65013, gadget_id = 70220083, pos = { x = 1009.732, y = 218.930, z = -1287.251 }, rot = { x = 4.970, y = 235.609, z = 4.179 }, level = 1, isOneoff = true, area_id = 10 }
}

-- 区域
regions = {
	{ config_id = 65014, shape = RegionShape.SPHERE, radius = 50, pos = { x = 1018.144, y = 201.713, z = -1311.689 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1065019, name = "ANY_MONSTER_DIE_65019", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_65019", action = "action_EVENT_ANY_MONSTER_DIE_65019" }
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
		monsters = { 65002 },
		gadgets = { 65008, 65009, 65010, 65011, 65012, 65013 },
		regions = { 65014 },
		triggers = { "ANY_MONSTER_DIE_65019" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 65007 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 65006, 65015 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 65001 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 65016 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { 65017 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { 65003, 65004 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { 65018 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { },
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
function condition_EVENT_ANY_MONSTER_DIE_65019(context, evt)
	if 65002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_65019(context, evt)
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001065, 8)
	
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

require "V2_3/WinterCampGacha"