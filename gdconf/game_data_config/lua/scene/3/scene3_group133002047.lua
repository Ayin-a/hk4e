-- 基础信息
local base_info = {
	group_id = 133002047
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 241, monster_id = 28030101, pos = { x = 1928.389, y = 255.916, z = -844.979 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 3 },
	{ config_id = 242, monster_id = 28030101, pos = { x = 1930.625, y = 256.472, z = -839.261 }, rot = { x = 0.000, y = 180.581, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 3 },
	{ config_id = 243, monster_id = 28030101, pos = { x = 1931.601, y = 256.624, z = -841.353 }, rot = { x = 0.000, y = 290.125, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 3 },
	{ config_id = 244, monster_id = 20011201, pos = { x = 1933.692, y = 256.966, z = -843.017 }, rot = { x = 0.000, y = 295.381, z = 0.000 }, level = 7, drop_tag = "史莱姆", area_id = 3 },
	{ config_id = 245, monster_id = 20011201, pos = { x = 1929.956, y = 256.373, z = -838.439 }, rot = { x = 0.000, y = 179.763, z = 0.000 }, level = 7, drop_tag = "史莱姆", area_id = 3 },
	{ config_id = 246, monster_id = 20011201, pos = { x = 1929.580, y = 256.148, z = -844.809 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 7, drop_tag = "史莱姆", area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 121, shape = RegionShape.SPHERE, radius = 3, pos = { x = 1929.912, y = 256.405, z = -841.856 }, area_id = 3 }
}

-- 触发器
triggers = {
	{ config_id = 1000121, name = "ENTER_REGION_121", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_121", action = "action_EVENT_ENTER_REGION_121" }
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
		monsters = { 241, 242, 243 },
		gadgets = { },
		regions = { 121 },
		triggers = { "ENTER_REGION_121" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_121(context, evt)
	if evt.param1 ~= 121 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_121(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 244, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 245, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 246, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end