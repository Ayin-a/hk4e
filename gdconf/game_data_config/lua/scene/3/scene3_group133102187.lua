-- 基础信息
local base_info = {
	group_id = 133102187
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 341, monster_id = 20010501, pos = { x = 1557.964, y = 202.199, z = 311.189 }, rot = { x = 0.000, y = 127.957, z = 0.000 }, level = 18, drop_tag = "史莱姆", area_id = 5 },
	{ config_id = 342, monster_id = 20010501, pos = { x = 1560.513, y = 202.195, z = 306.989 }, rot = { x = 0.000, y = 292.415, z = 0.000 }, level = 18, drop_tag = "史莱姆", area_id = 5 },
	{ config_id = 343, monster_id = 20010701, pos = { x = 1561.620, y = 202.508, z = 310.798 }, rot = { x = 0.000, y = 220.432, z = 0.000 }, level = 18, drop_tag = "大史莱姆", area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 374, shape = RegionShape.SPHERE, radius = 7, pos = { x = 1561.400, y = 202.700, z = 309.400 }, area_id = 5 }
}

-- 触发器
triggers = {
	{ config_id = 1000374, name = "ENTER_REGION_374", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_374", action = "action_EVENT_ENTER_REGION_374" }
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
		regions = { 374 },
		triggers = { "ENTER_REGION_374" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_374(context, evt)
	if evt.param1 ~= 374 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_374(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 343, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 341, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 342, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end