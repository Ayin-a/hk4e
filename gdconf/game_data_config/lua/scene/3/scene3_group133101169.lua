-- 基础信息
local base_info = {
	group_id = 133101169
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 169001, monster_id = 20010501, pos = { x = 1418.826, y = 230.072, z = 1366.441 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 23, drop_tag = "史莱姆", area_id = 5 },
	{ config_id = 169002, monster_id = 20010501, pos = { x = 1420.314, y = 230.053, z = 1365.216 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 23, drop_tag = "史莱姆", area_id = 5 },
	{ config_id = 169003, monster_id = 20010601, pos = { x = 1417.344, y = 229.954, z = 1365.308 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 23, drop_tag = "大史莱姆", area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 169004, shape = RegionShape.SPHERE, radius = 7, pos = { x = 1418.816, y = 230.050, z = 1365.239 }, area_id = 5 }
}

-- 触发器
triggers = {
	{ config_id = 1169004, name = "ENTER_REGION_169004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_169004", action = "action_EVENT_ENTER_REGION_169004" }
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
		regions = { 169004 },
		triggers = { "ENTER_REGION_169004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_169004(context, evt)
	if evt.param1 ~= 169004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_169004(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 169001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 169002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 169003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end