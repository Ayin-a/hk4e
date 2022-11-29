-- 基础信息
local base_info = {
	group_id = 133001354
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 354005, monster_id = 20011401, pos = { x = 1663.910, y = 277.853, z = -1520.302 }, rot = { x = 0.000, y = 299.670, z = 0.000 }, level = 11, drop_tag = "史莱姆", ban_excel_drop = true, area_id = 2 },
	{ config_id = 354006, monster_id = 20011401, pos = { x = 1668.488, y = 277.441, z = -1512.402 }, rot = { x = 0.000, y = 272.190, z = 0.000 }, level = 11, drop_tag = "史莱姆", ban_excel_drop = true, area_id = 2 },
	{ config_id = 354007, monster_id = 20011401, pos = { x = 1662.243, y = 276.596, z = -1506.164 }, rot = { x = 0.000, y = 274.410, z = 0.000 }, level = 11, drop_tag = "史莱姆", ban_excel_drop = true, area_id = 2 },
	{ config_id = 354008, monster_id = 20011401, pos = { x = 1652.205, y = 277.004, z = -1507.431 }, rot = { x = 0.000, y = 287.030, z = 0.000 }, level = 11, drop_tag = "史莱姆", ban_excel_drop = true, area_id = 2 },
	{ config_id = 354009, monster_id = 20011401, pos = { x = 1654.314, y = 277.344, z = -1518.001 }, rot = { x = 0.000, y = 308.000, z = 0.000 }, level = 11, drop_tag = "史莱姆", ban_excel_drop = true, area_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 354004, shape = RegionShape.SPHERE, radius = 8, pos = { x = 1659.674, y = 276.111, z = -1512.462 }, area_id = 2 }
}

-- 触发器
triggers = {
	{ config_id = 1354004, name = "ENTER_REGION_354004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_354004", action = "action_EVENT_ENTER_REGION_354004" }
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
		regions = { 354004 },
		triggers = { "ENTER_REGION_354004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_354004(context, evt)
	if evt.param1 ~= 354004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_354004(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 354005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 354006, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 354007, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 354008, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 354009, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end