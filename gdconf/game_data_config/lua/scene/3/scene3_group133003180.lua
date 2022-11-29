-- 基础信息
local base_info = {
	group_id = 133003180
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 715, monster_id = 20010501, pos = { x = 2408.570, y = 297.777, z = -1713.774 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 13, drop_tag = "史莱姆", area_id = 1 },
	{ config_id = 716, monster_id = 20010501, pos = { x = 2410.885, y = 297.775, z = -1709.294 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 13, drop_tag = "史莱姆", area_id = 1 },
	{ config_id = 717, monster_id = 20010501, pos = { x = 2407.154, y = 297.777, z = -1709.805 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 13, drop_tag = "史莱姆", area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 150, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2412.104, y = 297.775, z = -1711.002 }, area_id = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1000150, name = "ENTER_REGION_150", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_150", action = "action_EVENT_ENTER_REGION_150" }
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
		gadgets = { },
		regions = { 150 },
		triggers = { "ENTER_REGION_150" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_150(context, evt)
	if evt.param1 ~= 150 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_150(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 716, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 715, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 717, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end