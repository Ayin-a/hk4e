-- 基础信息
local base_info = {
	group_id = 133102146
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 256, monster_id = 20010501, pos = { x = 1025.988, y = 207.648, z = 347.248 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "史莱姆", area_id = 5 },
	{ config_id = 257, monster_id = 20011201, pos = { x = 1023.914, y = 207.689, z = 348.851 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "史莱姆", area_id = 5 },
	{ config_id = 146003, monster_id = 20011001, pos = { x = 1027.823, y = 207.193, z = 345.276 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "史莱姆", area_id = 5 },
	{ config_id = 146004, monster_id = 20011001, pos = { x = 1019.664, y = 207.850, z = 345.284 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "史莱姆", area_id = 5 },
	{ config_id = 146005, monster_id = 20011201, pos = { x = 1019.714, y = 207.813, z = 343.552 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "史莱姆", area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 146001, gadget_id = 70211111, pos = { x = 1022.462, y = 207.966, z = 345.758 }, rot = { x = 0.000, y = 320.036, z = 0.000 }, level = 16, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 }
}

-- 区域
regions = {
	{ config_id = 146002, shape = RegionShape.SPHERE, radius = 2, pos = { x = 1026.283, y = 208.144, z = 348.186 }, area_id = 5 },
	{ config_id = 146006, shape = RegionShape.SPHERE, radius = 2, pos = { x = 1028.316, y = 207.771, z = 345.238 }, area_id = 5 },
	{ config_id = 146007, shape = RegionShape.SPHERE, radius = 2, pos = { x = 1023.949, y = 208.307, z = 349.583 }, area_id = 5 },
	{ config_id = 146009, shape = RegionShape.SPHERE, radius = 2, pos = { x = 1019.425, y = 208.175, z = 345.341 }, area_id = 5 },
	{ config_id = 146010, shape = RegionShape.SPHERE, radius = 2, pos = { x = 1019.670, y = 207.792, z = 343.319 }, area_id = 5 }
}

-- 触发器
triggers = {
	{ config_id = 1146002, name = "ENTER_REGION_146002", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_146002", action = "action_EVENT_ENTER_REGION_146002" },
	{ config_id = 1146006, name = "ENTER_REGION_146006", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_146006", action = "action_EVENT_ENTER_REGION_146006" },
	{ config_id = 1146007, name = "ENTER_REGION_146007", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_146007", action = "action_EVENT_ENTER_REGION_146007" },
	{ config_id = 1146008, name = "VARIABLE_CHANGE_146008", event = EventType.EVENT_VARIABLE_CHANGE, source = "count", condition = "condition_EVENT_VARIABLE_CHANGE_146008", action = "action_EVENT_VARIABLE_CHANGE_146008" },
	{ config_id = 1146009, name = "ENTER_REGION_146009", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_146009", action = "action_EVENT_ENTER_REGION_146009" },
	{ config_id = 1146010, name = "ENTER_REGION_146010", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_146010", action = "action_EVENT_ENTER_REGION_146010" },
	{ config_id = 1146011, name = "ANY_MONSTER_DIE_146011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_146011", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "count", value = 0, no_refresh = false }
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
		regions = { 146002, 146006, 146007, 146009, 146010 },
		triggers = { "ENTER_REGION_146002", "ENTER_REGION_146006", "ENTER_REGION_146007", "VARIABLE_CHANGE_146008", "ENTER_REGION_146009", "ENTER_REGION_146010", "ANY_MONSTER_DIE_146011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_146002(context, evt)
	if evt.param1 ~= 146002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_146002(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 256, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_146006(context, evt)
	if evt.param1 ~= 146006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_146006(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 146003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_146007(context, evt)
	if evt.param1 ~= 146007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_146007(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 257, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_146008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为5
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 5 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_146008(context, evt)
	-- 创建id为146001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 146001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_146009(context, evt)
	if evt.param1 ~= 146009 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_146009(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 146004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_146010(context, evt)
	if evt.param1 ~= 146010 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_146010(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 146005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_146011(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end