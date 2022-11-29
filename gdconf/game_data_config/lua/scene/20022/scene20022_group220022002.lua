-- 基础信息
local base_info = {
	group_id = 220022002
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3, monster_id = 21010301, pos = { x = 31.256, y = 50.952, z = 42.884 }, rot = { x = 0.000, y = 53.766, z = 0.000 }, level = 1, disableWander = true, pose_id = 9003 },
	{ config_id = 4, monster_id = 21010701, pos = { x = 31.874, y = 51.102, z = 41.978 }, rot = { x = 0.000, y = 49.251, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 45, monster_id = 20010801, pos = { x = 39.134, y = 42.017, z = 87.641 }, rot = { x = 0.000, y = 107.677, z = 0.000 }, level = 1 },
	{ config_id = 46, monster_id = 20010801, pos = { x = 39.941, y = 42.016, z = 90.644 }, rot = { x = 0.000, y = 107.677, z = 0.000 }, level = 1 },
	{ config_id = 47, monster_id = 20010801, pos = { x = 36.672, y = 42.017, z = 89.236 }, rot = { x = 0.000, y = 107.677, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1, gadget_id = 70211001, pos = { x = 33.374, y = 50.797, z = 41.493 }, rot = { x = 0.000, y = 43.077, z = 0.000 }, level = 6, drop_tag = "战斗低级蒙德", isOneoff = true, persistent = true },
	{ config_id = 51, gadget_id = 70211001, pos = { x = -6.936, y = 42.016, z = 121.403 }, rot = { x = 0.000, y = 87.658, z = 0.000 }, level = 6, drop_tag = "战斗低级蒙德", isOneoff = true, persistent = true },
	{ config_id = 52, gadget_id = 70211011, pos = { x = 45.693, y = 42.017, z = 80.384 }, rot = { x = 0.000, y = 359.713, z = 0.000 }, level = 6, drop_tag = "战斗中级蒙德", isOneoff = true, persistent = true },
	{ config_id = 2002, gadget_id = 70220014, pos = { x = 2.554, y = 52.977, z = 25.265 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2003, gadget_id = 70220014, pos = { x = 3.150, y = 52.942, z = 26.949 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2004, gadget_id = 70220014, pos = { x = -2.411, y = 53.017, z = 24.851 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2005, gadget_id = 70220014, pos = { x = -2.746, y = 53.016, z = 25.741 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2006, gadget_id = 70220013, pos = { x = 4.694, y = 53.016, z = 26.893 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 19, shape = RegionShape.SPHERE, radius = 4, pos = { x = 45.653, y = 42.108, z = 80.846 } },
	{ config_id = 2001, shape = RegionShape.SPHERE, radius = 6.08, pos = { x = 28.928, y = 51.007, z = 39.405 } }
}

-- 触发器
triggers = {
	{ config_id = 1000019, name = "ENTER_REGION_19", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_19", action = "action_EVENT_ENTER_REGION_19", forbid_guest = false },
	{ config_id = 1002001, name = "ENTER_REGION_2001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2001", action = "action_EVENT_ENTER_REGION_2001", forbid_guest = false }
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
		monsters = { 3, 4 },
		gadgets = { 1, 51, 52, 2002, 2003, 2004, 2005, 2006 },
		regions = { 19, 2001 },
		triggers = { "ENTER_REGION_19", "ENTER_REGION_2001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_19(context, evt)
	if evt.param1 ~= 19 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_19(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 45, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 46, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 47, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2001(context, evt)
	if evt.param1 ~= 2001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2001(context, evt)
	-- 调用提示id为 200220101 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 200220101) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end