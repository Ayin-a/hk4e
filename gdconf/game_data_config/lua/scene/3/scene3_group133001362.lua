-- 基础信息
local base_info = {
	group_id = 133001362
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 362001, monster_id = 20010301, pos = { x = 1474.665, y = 267.687, z = -1748.486 }, rot = { x = 0.000, y = 110.289, z = 0.000 }, level = 18, drop_tag = "史莱姆", area_id = 2 },
	{ config_id = 362002, monster_id = 20010301, pos = { x = 1473.453, y = 267.675, z = -1751.700 }, rot = { x = 0.000, y = 106.802, z = 0.000 }, level = 18, drop_tag = "史莱姆", area_id = 2 },
	{ config_id = 362003, monster_id = 20010301, pos = { x = 1472.699, y = 266.996, z = -1749.369 }, rot = { x = 0.000, y = 106.658, z = 0.000 }, level = 18, drop_tag = "史莱姆", area_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 362004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1474.886, y = 267.719, z = -1749.953 }, area_id = 2 }
}

-- 触发器
triggers = {
	{ config_id = 1362004, name = "ENTER_REGION_362004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_362004", action = "action_EVENT_ENTER_REGION_362004" }
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
		regions = { 362004 },
		triggers = { "ENTER_REGION_362004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_362004(context, evt)
	if evt.param1 ~= 362004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_362004(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 362001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 362002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 362003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end