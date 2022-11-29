-- 基础信息
local base_info = {
	group_id = 133003322
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1054, monster_id = 20010501, pos = { x = 2664.747, y = 236.145, z = -1168.552 }, rot = { x = 0.000, y = 289.172, z = 0.000 }, level = 10, drop_tag = "史莱姆", disableWander = true, area_id = 1 },
	{ config_id = 1055, monster_id = 20010501, pos = { x = 2664.395, y = 236.114, z = -1170.148 }, rot = { x = 0.000, y = 280.848, z = 0.000 }, level = 10, drop_tag = "史莱姆", disableWander = true, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 250, shape = RegionShape.SPHERE, radius = 3, pos = { x = 2665.152, y = 236.321, z = -1169.596 }, area_id = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1000250, name = "ENTER_REGION_250", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_250", action = "action_EVENT_ENTER_REGION_250" }
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
		regions = { 250 },
		triggers = { "ENTER_REGION_250" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_250(context, evt)
	if evt.param1 ~= 250 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_250(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1054, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1055, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end