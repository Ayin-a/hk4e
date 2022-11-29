-- 基础信息
local base_info = {
	group_id = 133213081
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 81001, monster_id = 28020301, pos = { x = -3577.907, y = 253.116, z = -3192.878 }, rot = { x = 0.000, y = 314.065, z = 0.000 }, level = 27, drop_tag = "走兽", area_id = 12 },
	{ config_id = 81002, monster_id = 28020301, pos = { x = -3614.281, y = 273.580, z = -3111.234 }, rot = { x = 0.000, y = 303.429, z = 0.000 }, level = 27, drop_tag = "走兽", area_id = 12 },
	{ config_id = 81003, monster_id = 28020301, pos = { x = -3661.177, y = 285.175, z = -3065.032 }, rot = { x = 0.000, y = 69.190, z = 0.000 }, level = 27, drop_tag = "走兽", area_id = 12 },
	{ config_id = 81004, monster_id = 28020301, pos = { x = -3688.163, y = 285.031, z = -3045.032 }, rot = { x = 0.000, y = 202.502, z = 0.000 }, level = 27, drop_tag = "走兽", area_id = 12 },
	{ config_id = 81005, monster_id = 28020301, pos = { x = -3740.775, y = 301.382, z = -3058.564 }, rot = { x = 0.000, y = 216.348, z = 0.000 }, level = 27, drop_tag = "走兽", area_id = 12 },
	{ config_id = 81006, monster_id = 28020301, pos = { x = -3784.059, y = 322.126, z = -3100.447 }, rot = { x = 0.000, y = 79.939, z = 0.000 }, level = 27, drop_tag = "走兽", area_id = 12 },
	{ config_id = 81007, monster_id = 28010207, pos = { x = -3835.247, y = 341.056, z = -3143.279 }, rot = { x = 0.000, y = 250.219, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 12 },
	{ config_id = 81008, monster_id = 28010207, pos = { x = -3812.501, y = 330.959, z = -3118.445 }, rot = { x = 0.000, y = 332.587, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 12 },
	{ config_id = 81009, monster_id = 28010207, pos = { x = -3658.903, y = 269.769, z = -3015.329 }, rot = { x = 0.000, y = 359.839, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 12 },
	{ config_id = 81010, monster_id = 28010207, pos = { x = -3619.566, y = 255.708, z = -3269.024 }, rot = { x = 0.000, y = 118.826, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 12 },
	{ config_id = 81021, monster_id = 28030201, pos = { x = -3916.170, y = 403.635, z = -3157.042 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "鸟类", area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 81011, shape = RegionShape.SPHERE, radius = 15, pos = { x = -3577.382, y = 252.809, z = -3194.181 }, area_id = 12 },
	{ config_id = 81012, shape = RegionShape.SPHERE, radius = 15, pos = { x = -3618.237, y = 273.733, z = -3114.939 }, area_id = 12 },
	{ config_id = 81013, shape = RegionShape.SPHERE, radius = 15, pos = { x = -3660.816, y = 285.184, z = -3065.567 }, area_id = 12 },
	{ config_id = 81014, shape = RegionShape.SPHERE, radius = 15, pos = { x = -3687.847, y = 285.425, z = -3046.662 }, area_id = 12 },
	{ config_id = 81015, shape = RegionShape.SPHERE, radius = 15, pos = { x = -3741.463, y = 301.420, z = -3057.921 }, area_id = 12 },
	{ config_id = 81016, shape = RegionShape.SPHERE, radius = 15, pos = { x = -3784.593, y = 322.328, z = -3099.954 }, area_id = 12 },
	{ config_id = 81017, shape = RegionShape.SPHERE, radius = 15, pos = { x = -3835.170, y = 340.653, z = -3142.463 }, area_id = 12 },
	{ config_id = 81018, shape = RegionShape.SPHERE, radius = 15, pos = { x = -3811.984, y = 330.789, z = -3117.713 }, area_id = 12 },
	{ config_id = 81019, shape = RegionShape.SPHERE, radius = 15, pos = { x = -3658.787, y = 269.617, z = -3014.949 }, area_id = 12 },
	{ config_id = 81020, shape = RegionShape.SPHERE, radius = 15, pos = { x = -3619.231, y = 255.505, z = -3268.245 }, area_id = 12 }
}

-- 触发器
triggers = {
	{ config_id = 1081011, name = "ENTER_REGION_81011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_81011", action = "action_EVENT_ENTER_REGION_81011" },
	{ config_id = 1081012, name = "ENTER_REGION_81012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_81012", action = "action_EVENT_ENTER_REGION_81012" },
	{ config_id = 1081013, name = "ENTER_REGION_81013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_81013", action = "action_EVENT_ENTER_REGION_81013" },
	{ config_id = 1081014, name = "ENTER_REGION_81014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_81014", action = "action_EVENT_ENTER_REGION_81014" },
	{ config_id = 1081015, name = "ENTER_REGION_81015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_81015", action = "action_EVENT_ENTER_REGION_81015" },
	{ config_id = 1081016, name = "ENTER_REGION_81016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_81016", action = "action_EVENT_ENTER_REGION_81016" },
	{ config_id = 1081017, name = "ENTER_REGION_81017", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_81017", action = "action_EVENT_ENTER_REGION_81017" },
	{ config_id = 1081018, name = "ENTER_REGION_81018", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_81018", action = "action_EVENT_ENTER_REGION_81018" },
	{ config_id = 1081019, name = "ENTER_REGION_81019", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_81019", action = "action_EVENT_ENTER_REGION_81019" },
	{ config_id = 1081020, name = "ENTER_REGION_81020", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_81020", action = "action_EVENT_ENTER_REGION_81020" }
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
		monsters = { 81021 },
		gadgets = { },
		regions = { 81011, 81012, 81013, 81014, 81015, 81016, 81017, 81018, 81019, 81020 },
		triggers = { "ENTER_REGION_81011", "ENTER_REGION_81012", "ENTER_REGION_81013", "ENTER_REGION_81014", "ENTER_REGION_81015", "ENTER_REGION_81016", "ENTER_REGION_81017", "ENTER_REGION_81018", "ENTER_REGION_81019", "ENTER_REGION_81020" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_81011(context, evt)
	if evt.param1 ~= 81011 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_81011(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 81001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_81012(context, evt)
	if evt.param1 ~= 81012 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_81012(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 81002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_81013(context, evt)
	if evt.param1 ~= 81013 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_81013(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 81003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_81014(context, evt)
	if evt.param1 ~= 81014 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_81014(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 81004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_81015(context, evt)
	if evt.param1 ~= 81015 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_81015(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 81005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_81016(context, evt)
	if evt.param1 ~= 81016 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_81016(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 81006, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_81017(context, evt)
	if evt.param1 ~= 81017 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_81017(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 81007, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_81018(context, evt)
	if evt.param1 ~= 81018 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_81018(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 81008, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_81019(context, evt)
	if evt.param1 ~= 81019 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_81019(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 81009, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_81020(context, evt)
	if evt.param1 ~= 81020 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_81020(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 81010, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end