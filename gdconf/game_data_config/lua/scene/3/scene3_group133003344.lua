-- 基础信息
local base_info = {
	group_id = 133003344
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1100, monster_id = 20010501, pos = { x = 2159.277, y = 225.385, z = -1352.805 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, drop_tag = "史莱姆", area_id = 1 },
	{ config_id = 1101, monster_id = 20010501, pos = { x = 2159.641, y = 225.798, z = -1350.098 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, drop_tag = "史莱姆", area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 278, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2160.959, y = 226.150, z = -1351.210 }, area_id = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1000278, name = "ENTER_REGION_278", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_278", action = "action_EVENT_ENTER_REGION_278" }
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
		regions = { 278 },
		triggers = { "ENTER_REGION_278" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_278(context, evt)
	if evt.param1 ~= 278 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_278(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1100, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1101, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end