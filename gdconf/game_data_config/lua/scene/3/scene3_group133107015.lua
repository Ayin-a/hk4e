-- 基础信息
local base_info = {
	group_id = 133107015
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 15001, monster_id = 20011201, pos = { x = -266.564, y = 237.383, z = 82.770 }, rot = { x = 0.000, y = 255.679, z = 0.000 }, level = 18, drop_tag = "史莱姆", area_id = 7 },
	{ config_id = 15002, monster_id = 20011201, pos = { x = -265.054, y = 239.029, z = 77.905 }, rot = { x = 0.000, y = 31.810, z = 0.000 }, level = 18, drop_tag = "史莱姆", area_id = 7 },
	{ config_id = 15003, monster_id = 20011201, pos = { x = -269.660, y = 237.148, z = 78.353 }, rot = { x = 0.000, y = 87.489, z = 0.000 }, level = 18, drop_tag = "史莱姆", area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 15004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -267.227, y = 237.855, z = 79.680 }, area_id = 7 }
}

-- 触发器
triggers = {
	{ config_id = 1015004, name = "ENTER_REGION_15004", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_15004", action = "action_EVENT_ENTER_REGION_15004" }
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
		regions = { 15004 },
		triggers = { "ENTER_REGION_15004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_15004(context, evt)
	if evt.param1 ~= 15004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_15004(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 15001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 15002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 15003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end