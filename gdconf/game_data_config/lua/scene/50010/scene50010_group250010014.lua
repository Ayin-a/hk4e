-- 基础信息
local base_info = {
	group_id = 250010014
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 11, monster_id = 21020201, pos = { x = 44.881, y = 6.980, z = -20.725 }, rot = { x = 0.000, y = 169.232, z = 0.000 }, level = 1 },
	{ config_id = 12, monster_id = 21020201, pos = { x = 67.676, y = 6.980, z = -22.148 }, rot = { x = 0.000, y = 197.710, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 92, gadget_id = 70380004, pos = { x = 55.634, y = 6.980, z = -32.416 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 7 }
}

-- 区域
regions = {
	{ config_id = 46, shape = RegionShape.SPHERE, radius = 2, pos = { x = 55.563, y = 6.984, z = -36.123 } }
}

-- 触发器
triggers = {
	{ config_id = 1000046, name = "ENTER_REGION_46", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_46", action = "action_EVENT_ENTER_REGION_46", forbid_guest = false },
	{ config_id = 1000048, name = "ANY_MONSTER_DIE_48", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_48", action = "action_EVENT_ANY_MONSTER_DIE_48", trigger_count = 0 },
	{ config_id = 1000049, name = "ANY_MONSTER_DIE_49", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_49", action = "action_EVENT_ANY_MONSTER_DIE_49", trigger_count = 0 }
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
		regions = { 46 },
		triggers = { "ENTER_REGION_46", "ANY_MONSTER_DIE_48", "ANY_MONSTER_DIE_49" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_46(context, evt)
	if evt.param1 ~= 46 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_46(context, evt)
	-- 创建id为92的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 92 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 11, delay_time = 2 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟4秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 12, delay_time = 4 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_48(context, evt)
	--判断死亡怪物的configid是否为 11
	if evt.param1 ~= 11 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_48(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 11, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_49(context, evt)
	--判断死亡怪物的configid是否为 12
	if evt.param1 ~= 12 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_49(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 12, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end