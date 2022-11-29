-- 基础信息
local base_info = {
	group_id = 133105013
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 67, monster_id = 26060101, pos = { x = 503.147, y = 200.950, z = -116.912 }, rot = { x = 0.000, y = 298.283, z = 0.000 }, level = 19, drop_tag = "雷萤", area_id = 9 },
	{ config_id = 68, monster_id = 26060101, pos = { x = 499.102, y = 200.950, z = -119.015 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "雷萤", area_id = 9 },
	{ config_id = 69, monster_id = 26060101, pos = { x = 503.038, y = 200.931, z = -113.950 }, rot = { x = 0.000, y = 63.344, z = 0.000 }, level = 19, drop_tag = "雷萤", area_id = 9 },
	{ config_id = 70, monster_id = 26060101, pos = { x = 498.106, y = 200.950, z = -111.905 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "雷萤", area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 10, shape = RegionShape.SPHERE, radius = 8.2, pos = { x = 499.230, y = 200.950, z = -113.037 }, area_id = 9 }
}

-- 触发器
triggers = {
	{ config_id = 1000010, name = "ENTER_REGION_10", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_10", action = "action_EVENT_ENTER_REGION_10" }
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
		regions = { 10 },
		triggers = { "ENTER_REGION_10" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_10(context, evt)
	if evt.param1 ~= 10 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_10(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 67, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 68, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 69, delay_time = 2 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end