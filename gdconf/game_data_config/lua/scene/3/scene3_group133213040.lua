-- 基础信息
local base_info = {
	group_id = 133213040
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 40001, monster_id = 28020301, pos = { x = -3554.419, y = 206.034, z = -3302.083 }, rot = { x = 344.285, y = 222.567, z = 358.333 }, level = 27, drop_tag = "走兽", area_id = 12 },
	{ config_id = 40002, monster_id = 28020301, pos = { x = -3558.818, y = 212.673, z = -3289.880 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "走兽", area_id = 12 },
	{ config_id = 40003, monster_id = 28010207, pos = { x = -3582.730, y = 221.707, z = -3255.517 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 12 },
	{ config_id = 40004, monster_id = 28010207, pos = { x = -3571.378, y = 221.612, z = -3254.240 }, rot = { x = 0.000, y = 294.678, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 12 },
	{ config_id = 40005, monster_id = 28020102, pos = { x = -3508.612, y = 203.102, z = -3255.965 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "走兽", area_id = 12 },
	{ config_id = 40006, monster_id = 28020102, pos = { x = -3561.252, y = 215.311, z = -3201.279 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "走兽", area_id = 12 },
	{ config_id = 40007, monster_id = 28020102, pos = { x = -3594.359, y = 206.875, z = -3010.087 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "走兽", area_id = 12 },
	{ config_id = 40008, monster_id = 28020301, pos = { x = -3572.532, y = 207.363, z = -3309.679 }, rot = { x = 22.783, y = 97.521, z = 349.719 }, level = 27, drop_tag = "走兽", area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 40009, shape = RegionShape.SPHERE, radius = 20, pos = { x = -3564.266, y = 206.057, z = -3304.598 }, area_id = 12 },
	{ config_id = 40010, shape = RegionShape.SPHERE, radius = 20, pos = { x = -3557.411, y = 215.168, z = -3202.786 }, area_id = 12 },
	{ config_id = 40011, shape = RegionShape.SPHERE, radius = 20, pos = { x = -3508.242, y = 203.007, z = -3255.699 }, area_id = 12 },
	{ config_id = 40012, shape = RegionShape.SPHERE, radius = 20, pos = { x = -3576.532, y = 221.142, z = -3255.785 }, area_id = 12 }
}

-- 触发器
triggers = {
	{ config_id = 1040009, name = "ENTER_REGION_40009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_40009", action = "action_EVENT_ENTER_REGION_40009" },
	{ config_id = 1040010, name = "ENTER_REGION_40010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_40010", action = "action_EVENT_ENTER_REGION_40010" },
	{ config_id = 1040011, name = "ENTER_REGION_40011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_40011", action = "action_EVENT_ENTER_REGION_40011" },
	{ config_id = 1040012, name = "ENTER_REGION_40012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_40012", action = "action_EVENT_ENTER_REGION_40012" }
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
		monsters = { 40007 },
		gadgets = { },
		regions = { 40009, 40010, 40011, 40012 },
		triggers = { "ENTER_REGION_40009", "ENTER_REGION_40010", "ENTER_REGION_40011", "ENTER_REGION_40012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_40009(context, evt)
	if evt.param1 ~= 40009 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_40009(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 40001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 40002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 40008, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_40010(context, evt)
	if evt.param1 ~= 40010 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_40010(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 40006, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_40011(context, evt)
	if evt.param1 ~= 40011 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_40011(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 40005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_40012(context, evt)
	if evt.param1 ~= 40012 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_40012(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 40003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 40004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end