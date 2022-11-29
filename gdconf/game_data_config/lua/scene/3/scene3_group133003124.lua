-- 基础信息
local base_info = {
	group_id = 133003124
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 556, monster_id = 21010201, pos = { x = 2264.980, y = 259.714, z = -1505.746 }, rot = { x = 0.000, y = 322.329, z = 0.000 }, level = 15, drop_tag = "丘丘人", disableWander = true, area_id = 1 },
	{ config_id = 557, monster_id = 21010901, pos = { x = 2262.348, y = 259.593, z = -1505.062 }, rot = { x = 0.000, y = 340.978, z = 0.000 }, level = 15, drop_tag = "远程丘丘人", disableWander = true, area_id = 1 },
	{ config_id = 607, monster_id = 21010201, pos = { x = 2264.733, y = 258.987, z = -1503.391 }, rot = { x = 0.000, y = 249.257, z = 0.000 }, level = 15, drop_tag = "丘丘人", disableWander = true, area_id = 1 },
	{ config_id = 712, monster_id = 20010501, pos = { x = 2264.405, y = 258.846, z = -1502.771 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_tag = "史莱姆", area_id = 1 },
	{ config_id = 713, monster_id = 20010501, pos = { x = 2269.760, y = 259.169, z = -1503.618 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_tag = "史莱姆", area_id = 1 },
	{ config_id = 714, monster_id = 20010501, pos = { x = 2263.917, y = 260.013, z = -1506.530 }, rot = { x = 0.000, y = 10.751, z = 0.000 }, level = 10, drop_tag = "史莱姆", area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 148, shape = RegionShape.SPHERE, radius = 10.2, pos = { x = 2269.287, y = 259.158, z = -1503.745 }, area_id = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1000148, name = "ENTER_REGION_148", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_148", action = "action_EVENT_ENTER_REGION_148" }
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
		monsters = { 556, 557, 607 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { },
		regions = { 148 },
		triggers = { "ENTER_REGION_148" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_148(context, evt)
	if evt.param1 ~= 148 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_148(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 712, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 713, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 714, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end