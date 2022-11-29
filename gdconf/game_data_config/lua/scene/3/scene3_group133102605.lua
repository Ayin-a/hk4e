-- 基础信息
local base_info = {
	group_id = 133102605
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 605002, monster_id = 20011401, pos = { x = 1739.123, y = 211.672, z = 612.512 }, rot = { x = 0.000, y = 137.189, z = 0.000 }, level = 18, drop_tag = "史莱姆", area_id = 5 },
	{ config_id = 605003, monster_id = 20011401, pos = { x = 1739.202, y = 211.672, z = 610.635 }, rot = { x = 0.000, y = 21.300, z = 0.000 }, level = 18, drop_tag = "史莱姆", area_id = 5 },
	{ config_id = 605004, monster_id = 20011401, pos = { x = 1740.927, y = 211.672, z = 610.328 }, rot = { x = 0.000, y = 349.907, z = 0.000 }, level = 18, drop_tag = "史莱姆", area_id = 5 },
	{ config_id = 605005, monster_id = 20011401, pos = { x = 1741.208, y = 211.672, z = 612.748 }, rot = { x = 0.000, y = 208.087, z = 0.000 }, level = 18, drop_tag = "史莱姆", area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 605001, shape = RegionShape.SPHERE, radius = 4, pos = { x = 1740.006, y = 211.672, z = 611.621 }, area_id = 5 }
}

-- 触发器
triggers = {
	{ config_id = 1605001, name = "ENTER_REGION_605001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_605001", action = "action_EVENT_ENTER_REGION_605001" }
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
		regions = { 605001 },
		triggers = { "ENTER_REGION_605001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_605001(context, evt)
	if evt.param1 ~= 605001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_605001(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 605002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 605003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 605004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 605005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end