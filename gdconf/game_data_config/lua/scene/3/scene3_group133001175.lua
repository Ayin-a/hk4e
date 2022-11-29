-- 基础信息
local base_info = {
	group_id = 133001175
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 175001, monster_id = 20010501, pos = { x = 1400.966, y = 257.954, z = -1682.346 }, rot = { x = 0.000, y = 102.062, z = 0.000 }, level = 13, drop_tag = "史莱姆", area_id = 2 },
	{ config_id = 175002, monster_id = 20010501, pos = { x = 1400.231, y = 258.005, z = -1684.461 }, rot = { x = 0.000, y = 90.465, z = 0.000 }, level = 13, drop_tag = "史莱姆", area_id = 2 },
	{ config_id = 175003, monster_id = 20010501, pos = { x = 1400.499, y = 258.130, z = -1686.633 }, rot = { x = 0.000, y = 71.257, z = 0.000 }, level = 13, drop_tag = "史莱姆", area_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 175004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1402.151, y = 257.658, z = -1684.544 }, area_id = 2 }
}

-- 触发器
triggers = {
	{ config_id = 1175004, name = "ENTER_REGION_175004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_175004", action = "action_EVENT_ENTER_REGION_175004" }
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
		regions = { 175004 },
		triggers = { "ENTER_REGION_175004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_175004(context, evt)
	if evt.param1 ~= 175004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_175004(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 175001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 175002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 175003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end