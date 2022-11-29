-- 基础信息
local base_info = {
	group_id = 139999003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 6, monster_id = 21010201, pos = { x = 1.579, y = 0.126, z = 1.096 }, rot = { x = 0.000, y = 233.587, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 1 },
	{ config_id = 7, monster_id = 21010201, pos = { x = -1.684, y = 0.090, z = -1.630 }, rot = { x = 0.000, y = 30.270, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 1 },
	{ config_id = 8, monster_id = 21010201, pos = { x = 1.180, y = 0.248, z = -1.897 }, rot = { x = 0.000, y = 323.307, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 1 },
	{ config_id = 20, monster_id = 21030101, pos = { x = -1.242, y = 0.019, z = 1.322 }, rot = { x = 0.000, y = 146.101, z = 0.000 }, level = 1, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 1 },
	{ config_id = 21, monster_id = 21030201, pos = { x = -0.887, y = 0.011, z = 1.011 }, rot = { x = 0.000, y = 146.101, z = 0.000 }, level = 1, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 1 },
	{ config_id = 22, monster_id = 21010601, pos = { x = 1.023, y = 0.098, z = -1.814 }, rot = { x = 0.000, y = 323.307, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 1 },
	{ config_id = 3001, monster_id = 22010201, pos = { x = -1.246, y = 0.015, z = 1.233 }, rot = { x = 350.011, y = 140.993, z = 0.000 }, level = 1, drop_tag = "深渊法师", disableWander = true, affix = { 1007 }, pose_id = 9013, area_id = 1 },
	{ config_id = 3002, monster_id = 22010101, pos = { x = -1.856, y = 0.029, z = 1.692 }, rot = { x = 0.000, y = 137.364, z = 0.000 }, level = 1, drop_tag = "深渊法师", disableWander = true, affix = { 1007 }, pose_id = 9013, area_id = 1 },
	{ config_id = 3003, monster_id = 22010301, pos = { x = -1.074, y = -0.010, z = 0.818 }, rot = { x = 0.000, y = 135.706, z = 0.000 }, level = 1, drop_tag = "深渊法师", disableWander = true, pose_id = 9013, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 23, shape = RegionShape.SPHERE, radius = 50, pos = { x = -0.037, y = -0.003, z = 0.022 }, area_id = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1000004, name = "ANY_MONSTER_DIE_4", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4", action = "action_EVENT_ANY_MONSTER_DIE_4" },
	{ config_id = 1000023, name = "ENTER_REGION_23", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_23", action = "action_EVENT_ENTER_REGION_23", forbid_guest = false }
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
	rand_suite = true
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
		monsters = { 6, 7, 8, 20 },
		gadgets = { },
		regions = { 23 },
		triggers = { "ANY_MONSTER_DIE_4", "ENTER_REGION_23" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 6, 7, 21, 22 },
		gadgets = { },
		regions = { 23 },
		triggers = { "ANY_MONSTER_DIE_4", "ENTER_REGION_23" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 6, 7, 22, 3001 },
		gadgets = { },
		regions = { 23 },
		triggers = { "ANY_MONSTER_DIE_4", "ENTER_REGION_23" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 6, 7, 22, 3002 },
		gadgets = { },
		regions = { 23 },
		triggers = { "ANY_MONSTER_DIE_4", "ENTER_REGION_23" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { 6, 7, 22, 3003 },
		gadgets = { },
		regions = { 23 },
		triggers = { "ANY_MONSTER_DIE_4", "ENTER_REGION_23" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4(context, evt)
	-- 设置操作台选项
	
	    ScriptLib.FinishRandTask(context, 3, true)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_23(context, evt)
	if evt.param1 ~= 23 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_23(context, evt)
	-- 调用提示id为 1110010 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110010) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end