-- 基础信息
local base_info = {
	group_id = 133001316
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1376, monster_id = 20010301, pos = { x = 1929.654, y = 197.061, z = -1259.287 }, rot = { x = 0.000, y = 138.746, z = 0.000 }, level = 10, drop_id = 1000100, area_id = 2 },
	{ config_id = 1377, monster_id = 20010301, pos = { x = 1930.417, y = 197.027, z = -1273.390 }, rot = { x = 0.000, y = 358.863, z = 0.000 }, level = 10, drop_id = 1000100, area_id = 2 },
	{ config_id = 1378, monster_id = 20010301, pos = { x = 1922.497, y = 196.294, z = -1267.934 }, rot = { x = 0.000, y = 59.368, z = 0.000 }, level = 10, drop_id = 1000100, area_id = 2 },
	{ config_id = 1379, monster_id = 20010401, pos = { x = 1922.504, y = 196.770, z = -1260.998 }, rot = { x = 347.411, y = 136.026, z = 337.843 }, level = 10, drop_id = 1000100, affix = { 1007, 1018 }, area_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3366, gadget_id = 70210112, pos = { x = 1928.951, y = 197.638, z = -1265.911 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 }
}

-- 区域
regions = {
	{ config_id = 316001, shape = RegionShape.SPHERE, radius = 26.36, pos = { x = 1928.926, y = 196.877, z = -1266.333 }, area_id = 2 }
}

-- 触发器
triggers = {
	{ config_id = 1000499, name = "ANY_GADGET_DIE_499", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_499", action = "action_EVENT_ANY_GADGET_DIE_499" },
	{ config_id = 1000500, name = "ANY_GADGET_DIE_500", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_500", action = "action_EVENT_ANY_GADGET_DIE_500" },
	{ config_id = 1000501, name = "ANY_MONSTER_DIE_501", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_501", action = "action_EVENT_ANY_MONSTER_DIE_501" },
	{ config_id = 1316001, name = "ENTER_REGION_316001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_316001", action = "action_EVENT_ENTER_REGION_316001" }
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
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 3366 },
		regions = { 316001 },
		triggers = { "ANY_GADGET_DIE_499", "ENTER_REGION_316001" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { 3366 },
		regions = { 316001 },
		triggers = { "ANY_GADGET_DIE_500", "ANY_MONSTER_DIE_501", "ENTER_REGION_316001" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { },
		gadgets = { 3366 },
		regions = { 316001 },
		triggers = { "ANY_GADGET_DIE_499", "ENTER_REGION_316001" },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_499(context, evt)
	if 3366 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_499(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133001316") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_500(context, evt)
	if 3366 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_500(context, evt)
	-- 调用提示id为 1110100 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110100) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1379, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟1.5秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1376, delay_time = 1.5 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟1.5秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1377, delay_time = 1.5 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟1.5秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1378, delay_time = 1.5 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_501(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_501(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133001316") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_316001(context, evt)
	if evt.param1 ~= 316001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_316001(context, evt)
	-- 调用提示id为 1110102 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110102) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end