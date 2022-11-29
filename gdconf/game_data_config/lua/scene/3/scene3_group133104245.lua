-- 基础信息
local base_info = {
	group_id = 133104245
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 245001, monster_id = 20010301, pos = { x = 688.998, y = 212.357, z = 393.503 }, rot = { x = 0.000, y = 135.899, z = 0.000 }, level = 19, drop_tag = "史莱姆", disableWander = true, area_id = 9 },
	{ config_id = 245002, monster_id = 20010401, pos = { x = 686.822, y = 214.287, z = 399.448 }, rot = { x = 0.000, y = 185.021, z = 0.000 }, level = 19, drop_tag = "大史莱姆", disableWander = true, area_id = 9 },
	{ config_id = 245003, monster_id = 20010301, pos = { x = 683.268, y = 213.016, z = 393.424 }, rot = { x = 0.000, y = 135.761, z = 0.000 }, level = 17, drop_tag = "史莱姆", disableWander = true, area_id = 9 },
	{ config_id = 245004, monster_id = 20010301, pos = { x = 685.974, y = 212.109, z = 391.327 }, rot = { x = 0.000, y = 186.238, z = 0.000 }, level = 17, drop_tag = "史莱姆", disableWander = true, area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 245005, gadget_id = 70620002, pos = { x = 686.820, y = 214.231, z = 399.406 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, isOneoff = true, persistent = true, area_id = 9 }
}

-- 区域
regions = {
	{ config_id = 245006, shape = RegionShape.SPHERE, radius = 2, pos = { x = 686.763, y = 214.209, z = 399.207 }, area_id = 9 },
	{ config_id = 245008, shape = RegionShape.SPHERE, radius = 8, pos = { x = 686.740, y = 213.534, z = 399.538 }, area_id = 9 }
}

-- 触发器
triggers = {
	{ config_id = 1245006, name = "ENTER_REGION_245006", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_245006", action = "action_EVENT_ENTER_REGION_245006" },
	{ config_id = 1245007, name = "ANY_MONSTER_DIE_245007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_245007", action = "action_EVENT_ANY_MONSTER_DIE_245007" },
	{ config_id = 1245008, name = "ENTER_REGION_245008", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_245008", action = "action_EVENT_ENTER_REGION_245008" }
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
		gadgets = { 245005 },
		regions = { 245006, 245008 },
		triggers = { "ENTER_REGION_245006", "ANY_MONSTER_DIE_245007", "ENTER_REGION_245008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 245005 },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_245006(context, evt)
	if evt.param1 ~= 245006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_245006(context, evt)
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133104245, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_245007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_245007(context, evt)
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133104245, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_245008(context, evt)
	if evt.param1 ~= 245008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_245008(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 245002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 245001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 245003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 245004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end