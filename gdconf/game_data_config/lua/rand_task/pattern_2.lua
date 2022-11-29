-- 基础信息
local base_info = {
	group_id = 139999002
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 4, monster_id = 21010101, pos = { x = -0.083, y = -0.045, z = -1.436 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, area_id = 1 },
	{ config_id = 16, monster_id = 21010101, pos = { x = -2.301, y = 0.243, z = 1.640 }, rot = { x = 0.000, y = 125.068, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, area_id = 1 },
	{ config_id = 17, monster_id = 21010701, pos = { x = 0.377, y = 0.354, z = 2.816 }, rot = { x = 0.000, y = 125.068, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, area_id = 1 },
	{ config_id = 18, monster_id = 21010701, pos = { x = 1.605, y = 0.021, z = -0.085 }, rot = { x = 0.000, y = 91.015, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, area_id = 1 },
	{ config_id = 19, monster_id = 21010701, pos = { x = -1.835, y = -0.032, z = -0.091 }, rot = { x = 0.000, y = 286.001, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, area_id = 1 },
	{ config_id = 2001, monster_id = 21010601, pos = { x = -0.241, y = -0.041, z = -1.165 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, area_id = 1 },
	{ config_id = 2002, monster_id = 21020101, pos = { x = -2.318, y = -0.033, z = -1.629 }, rot = { x = 0.000, y = 49.348, z = 0.000 }, level = 2, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 1 },
	{ config_id = 2003, monster_id = 21030101, pos = { x = -3.463, y = 0.085, z = 1.111 }, rot = { x = 0.000, y = 105.093, z = 0.000 }, level = 1, drop_tag = "丘丘萨满", disableWander = true, area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3, gadget_id = 70220013, pos = { x = -1.153, y = -0.133, z = 0.253 }, rot = { x = 0.000, y = 312.186, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 2004, gadget_id = 70220014, pos = { x = 0.166, y = -0.082, z = -0.063 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 }
}

-- 区域
regions = {
	{ config_id = 22, shape = RegionShape.SPHERE, radius = 50, pos = { x = -0.749, y = 1.484, z = -0.363 }, area_id = 1 },
	{ config_id = 31, shape = RegionShape.SPHERE, radius = 50, pos = { x = -0.416, y = 0.985, z = -0.245 }, area_id = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1000006, name = "ANY_MONSTER_DIE_6", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6", action = "action_EVENT_ANY_MONSTER_DIE_6" },
	{ config_id = 1000022, name = "ENTER_REGION_22", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_22", action = "action_EVENT_ENTER_REGION_22", forbid_guest = false },
	{ config_id = 1000031, name = "ENTER_REGION_31", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_31", action = "action_EVENT_ENTER_REGION_31", forbid_guest = false }
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
		monsters = { 4, 16, 17 },
		gadgets = { 3, 2004 },
		regions = { 22, 31 },
		triggers = { "ANY_MONSTER_DIE_6", "ENTER_REGION_22", "ENTER_REGION_31" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 4, 18, 19 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_6" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 2001, 2002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_6" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 2001, 2002, 2003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_6" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { 4, 18, 19, 2003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_6" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_6(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_6(context, evt)
	-- 设置操作台选项
	
	    ScriptLib.FinishRandTask(context, 2, true)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_22(context, evt)
	if evt.param1 ~= 22 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_22(context, evt)
	-- 调用提示id为 1110007 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110007) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_31(context, evt)
	if evt.param1 ~= 31 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_31(context, evt)
	-- 调用提示id为 1110027 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110027) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end