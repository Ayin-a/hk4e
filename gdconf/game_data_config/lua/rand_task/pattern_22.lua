-- 基础信息
local base_info = {
	group_id = 139999022
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 22001, monster_id = 20010101, pos = { x = -0.714, y = 0.011, z = 2.731 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆", pose_id = 201, area_id = 3 },
	{ config_id = 22002, monster_id = 20010101, pos = { x = 0.015, y = 0.027, z = 0.910 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆", pose_id = 201, area_id = 3 },
	{ config_id = 22003, monster_id = 20010101, pos = { x = -1.701, y = -0.206, z = -0.290 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆", pose_id = 201, area_id = 3 },
	{ config_id = 22004, monster_id = 20010201, pos = { x = -0.794, y = -0.034, z = 1.164 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "大史莱姆", pose_id = 201, area_id = 3 },
	{ config_id = 22005, monster_id = 20011301, pos = { x = -1.786, y = -0.001, z = 0.853 }, rot = { x = 0.000, y = 89.847, z = 0.000 }, level = 1, drop_tag = "大史莱姆", affix = { 1007 }, area_id = 3 },
	{ config_id = 22006, monster_id = 20011201, pos = { x = -0.945, y = 0.005, z = -1.136 }, rot = { x = 0.000, y = 21.133, z = 0.000 }, level = 1, drop_tag = "史莱姆", pose_id = 901, area_id = 3 },
	{ config_id = 22007, monster_id = 20011201, pos = { x = 0.228, y = -0.033, z = 2.563 }, rot = { x = 0.000, y = 21.133, z = 0.000 }, level = 1, drop_tag = "史莱姆", pose_id = 901, area_id = 3 },
	{ config_id = 22008, monster_id = 20011201, pos = { x = 0.969, y = 0.014, z = 0.782 }, rot = { x = 0.000, y = 21.133, z = 0.000 }, level = 1, drop_tag = "史莱姆", pose_id = 901, area_id = 3 },
	{ config_id = 22012, monster_id = 20010601, pos = { x = -1.806, y = -0.021, z = 2.187 }, rot = { x = 0.000, y = 124.773, z = 0.000 }, level = 1, drop_tag = "大史莱姆", area_id = 3 },
	{ config_id = 22013, monster_id = 20010501, pos = { x = -1.324, y = 0.017, z = -1.366 }, rot = { x = 0.000, y = 57.932, z = 0.000 }, level = 1, drop_tag = "史莱姆", area_id = 3 },
	{ config_id = 22014, monster_id = 20010501, pos = { x = 0.012, y = -0.016, z = -0.775 }, rot = { x = 0.000, y = 321.679, z = 0.000 }, level = 1, drop_tag = "史莱姆", area_id = 3 },
	{ config_id = 22021, monster_id = 20010501, pos = { x = 0.105, y = -0.031, z = 1.824 }, rot = { x = 0.000, y = 57.932, z = 0.000 }, level = 1, drop_tag = "史莱姆", area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 22015, gadget_id = 70210112, pos = { x = -0.078, y = 1.218, z = -0.139 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 }
}

-- 区域
regions = {
	{ config_id = 22018, shape = RegionShape.SPHERE, radius = 50, pos = { x = -0.396, y = -0.013, z = 0.281 }, area_id = 3 }
}

-- 触发器
triggers = {
	{ config_id = 1022016, name = "ANY_GADGET_DIE_22016", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_22016", action = "action_EVENT_ANY_GADGET_DIE_22016" },
	{ config_id = 1022017, name = "ANY_MONSTER_DIE_22017", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_22017", action = "action_EVENT_ANY_MONSTER_DIE_22017" },
	{ config_id = 1022018, name = "ENTER_REGION_22018", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_22018", action = "action_EVENT_ENTER_REGION_22018", forbid_guest = false },
	{ config_id = 1022019, name = "ANY_GADGET_DIE_22019", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_22019", action = "action_EVENT_ANY_GADGET_DIE_22019" },
	{ config_id = 1022020, name = "ANY_GADGET_DIE_22020", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_22020", action = "action_EVENT_ANY_GADGET_DIE_22020" }
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
		monsters = { },
		gadgets = { 22015 },
		regions = { 22018 },
		triggers = { "ANY_GADGET_DIE_22016", "ANY_MONSTER_DIE_22017", "ENTER_REGION_22018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 22015 },
		regions = { 22018 },
		triggers = { "ANY_MONSTER_DIE_22017", "ENTER_REGION_22018", "ANY_GADGET_DIE_22019" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { 22015 },
		regions = { 22018 },
		triggers = { "ANY_MONSTER_DIE_22017", "ENTER_REGION_22018", "ANY_GADGET_DIE_22020" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_22016(context, evt)
	if 22015 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_22016(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 22012, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 22013, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 22014, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 22021, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_22017(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_22017(context, evt)
	-- 设置操作台选项
	
	    ScriptLib.FinishRandTask(context, 22, true)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_22018(context, evt)
	if evt.param1 ~= 22018 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_22018(context, evt)
	-- 调用提示id为 1110025 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110025) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_22019(context, evt)
	if 22015 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_22019(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 22005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 22006, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 22007, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 22008, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_22020(context, evt)
	if 22015 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_22020(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 22001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 22002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 22003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 22004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end