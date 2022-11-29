-- 基础信息
local base_info = {
	group_id = 139999008
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 39, monster_id = 20010901, pos = { x = 2.854, y = 0.073, z = 0.055 }, rot = { x = 0.000, y = 269.141, z = 0.000 }, level = 1, drop_tag = "大史莱姆", disableWander = true, area_id = 1 },
	{ config_id = 40, monster_id = 20010801, pos = { x = 0.754, y = -0.003, z = 2.002 }, rot = { x = 0.000, y = 198.999, z = 0.000 }, level = 1, drop_tag = "史莱姆", area_id = 1 },
	{ config_id = 41, monster_id = 20010801, pos = { x = -0.964, y = -0.029, z = 1.892 }, rot = { x = 0.000, y = 155.669, z = 0.000 }, level = 1, drop_tag = "史莱姆", area_id = 1 },
	{ config_id = 8001, monster_id = 20010801, pos = { x = -1.452, y = 0.019, z = -0.694 }, rot = { x = 0.000, y = 73.839, z = 0.000 }, level = 1, drop_tag = "史莱姆", area_id = 1 },
	{ config_id = 8003, monster_id = 20011301, pos = { x = -1.786, y = 0.000, z = 0.853 }, rot = { x = 0.000, y = 89.847, z = 0.000 }, level = 1, drop_tag = "大史莱姆", disableWander = true, affix = { 1007 }, area_id = 1 },
	{ config_id = 8004, monster_id = 20011201, pos = { x = -0.945, y = 0.006, z = -1.136 }, rot = { x = 0.000, y = 21.133, z = 0.000 }, level = 1, drop_tag = "史莱姆", pose_id = 901, area_id = 1 },
	{ config_id = 8005, monster_id = 20011201, pos = { x = 0.228, y = -0.033, z = 2.563 }, rot = { x = 0.000, y = 21.133, z = 0.000 }, level = 1, drop_tag = "史莱姆", pose_id = 901, area_id = 1 },
	{ config_id = 8006, monster_id = 20011201, pos = { x = 0.969, y = 0.014, z = 0.782 }, rot = { x = 0.000, y = 21.133, z = 0.000 }, level = 1, drop_tag = "史莱姆", pose_id = 901, area_id = 1 },
	{ config_id = 8007, monster_id = 20011201, pos = { x = -2.074, y = 0.029, z = -0.744 }, rot = { x = 0.000, y = 21.133, z = 0.000 }, level = 1, drop_tag = "史莱姆", pose_id = 901, area_id = 1 },
	{ config_id = 8009, monster_id = 20011501, pos = { x = -1.806, y = -0.021, z = 2.187 }, rot = { x = 0.000, y = 124.773, z = 0.000 }, level = 1, drop_tag = "大史莱姆", disableWander = true, area_id = 1 },
	{ config_id = 8010, monster_id = 20011401, pos = { x = -2.421, y = 0.023, z = 0.186 }, rot = { x = 0.000, y = 57.932, z = 0.000 }, level = 1, drop_tag = "史莱姆", area_id = 1 },
	{ config_id = 8011, monster_id = 20011401, pos = { x = -1.324, y = 0.017, z = -1.366 }, rot = { x = 0.000, y = 57.932, z = 0.000 }, level = 1, drop_tag = "史莱姆", area_id = 1 },
	{ config_id = 8012, monster_id = 20011401, pos = { x = 0.012, y = -0.016, z = -0.775 }, rot = { x = 0.000, y = 321.679, z = 0.000 }, level = 1, drop_tag = "史莱姆", area_id = 1 },
	{ config_id = 8013, monster_id = 20011401, pos = { x = 0.105, y = -0.031, z = 1.824 }, rot = { x = 0.000, y = 57.932, z = 0.000 }, level = 1, drop_tag = "史莱姆", area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 9, gadget_id = 70210112, pos = { x = -0.078, y = 1.218, z = -0.139 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 }
}

-- 区域
regions = {
	{ config_id = 28, shape = RegionShape.SPHERE, radius = 50, pos = { x = -0.396, y = -0.013, z = 0.281 }, area_id = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1000014, name = "ANY_GADGET_DIE_14", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_14", action = "action_EVENT_ANY_GADGET_DIE_14" },
	{ config_id = 1000015, name = "ANY_MONSTER_DIE_15", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_15", action = "action_EVENT_ANY_MONSTER_DIE_15" },
	{ config_id = 1000028, name = "ENTER_REGION_28", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_28", action = "action_EVENT_ENTER_REGION_28", forbid_guest = false },
	{ config_id = 1008002, name = "ANY_GADGET_DIE_8002", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_8002", action = "action_EVENT_ANY_GADGET_DIE_8002" },
	{ config_id = 1008008, name = "ANY_GADGET_DIE_8008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_8008", action = "action_EVENT_ANY_GADGET_DIE_8008" }
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
		gadgets = { 9 },
		regions = { 28 },
		triggers = { "ANY_GADGET_DIE_14", "ANY_MONSTER_DIE_15", "ENTER_REGION_28" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 9 },
		regions = { 28 },
		triggers = { "ANY_MONSTER_DIE_15", "ENTER_REGION_28", "ANY_GADGET_DIE_8002" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { 9 },
		regions = { 28 },
		triggers = { "ANY_MONSTER_DIE_15", "ENTER_REGION_28", "ANY_GADGET_DIE_8008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_14(context, evt)
	if 9 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_14(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 40, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 41, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 39, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 8001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_15(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_15(context, evt)
	-- 设置操作台选项
	
	    ScriptLib.FinishRandTask(context, 8, true)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_28(context, evt)
	if evt.param1 ~= 28 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_28(context, evt)
	-- 调用提示id为 1110025 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110025) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_8002(context, evt)
	if 9 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_8002(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 8003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 8004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 8005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 8006, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 8007, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_8008(context, evt)
	if 9 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_8008(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 8009, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 8010, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 8011, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 8012, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 8013, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end