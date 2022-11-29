-- 基础信息
local base_info = {
	group_id = 133002132
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 339, monster_id = 20010501, pos = { x = 2034.661, y = 207.575, z = -983.170 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆", area_id = 3 },
	{ config_id = 340, monster_id = 20010501, pos = { x = 2040.943, y = 207.067, z = -987.815 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 12, drop_tag = "史莱姆", area_id = 3 },
	{ config_id = 341, monster_id = 20010501, pos = { x = 2043.495, y = 206.791, z = -979.928 }, rot = { x = 0.000, y = 47.168, z = 0.000 }, level = 12, drop_tag = "史莱姆", area_id = 3 },
	{ config_id = 342, monster_id = 20010801, pos = { x = 2035.865, y = 206.743, z = -978.091 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆", area_id = 3 },
	{ config_id = 343, monster_id = 20010801, pos = { x = 2039.524, y = 206.429, z = -976.788 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_tag = "史莱姆", area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 145, shape = RegionShape.SPHERE, radius = 9.6, pos = { x = 2037.810, y = 207.011, z = -984.576 }, area_id = 3 },
	{ config_id = 146, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2037.350, y = 206.355, z = -970.767 }, area_id = 3 }
}

-- 触发器
triggers = {
	{ config_id = 1000145, name = "ENTER_REGION_145", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_145", action = "action_EVENT_ENTER_REGION_145" },
	{ config_id = 1000146, name = "ENTER_REGION_146", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_146", action = "action_EVENT_ENTER_REGION_146" }
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
		regions = { 145 },
		triggers = { "ENTER_REGION_145" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { },
		regions = { 146 },
		triggers = { "ENTER_REGION_146" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_145(context, evt)
	if evt.param1 ~= 145 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_145(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 339, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 340, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 341, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_146(context, evt)
	if evt.param1 ~= 146 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_146(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 342, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 343, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end