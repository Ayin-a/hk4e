-- 基础信息
local base_info = {
	group_id = 133002115
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 291, monster_id = 28030101, pos = { x = 1752.613, y = 265.197, z = -692.608 }, rot = { x = 0.000, y = 48.660, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 901, area_id = 3 },
	{ config_id = 292, monster_id = 28030101, pos = { x = 1761.867, y = 266.287, z = -685.172 }, rot = { x = 0.000, y = 48.660, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 901, area_id = 3 },
	{ config_id = 293, monster_id = 28030101, pos = { x = 1750.770, y = 262.957, z = -686.329 }, rot = { x = 0.000, y = 48.660, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 901, area_id = 3 },
	{ config_id = 294, monster_id = 28030101, pos = { x = 1759.086, y = 265.483, z = -691.479 }, rot = { x = 0.000, y = 25.214, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 901, area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 130, shape = RegionShape.SPHERE, radius = 3, pos = { x = 1767.442, y = 250.795, z = -688.674 }, area_id = 3 }
}

-- 触发器
triggers = {
	{ config_id = 1000130, name = "ENTER_REGION_130", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_130", action = "action_EVENT_ENTER_REGION_130" }
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
		regions = { 130 },
		triggers = { "ENTER_REGION_130" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_130(context, evt)
	if evt.param1 ~= 130 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_130(context, evt)
	-- 延迟0.5秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 291, delay_time = 0.5 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 292, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟1.5秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 293, delay_time = 1.5 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 294, delay_time = 2 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end