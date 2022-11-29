-- 基础信息
local base_info = {
	group_id = 133101084
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 84001, monster_id = 20011401, pos = { x = 1197.143, y = 267.942, z = 1283.646 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_tag = "史莱姆", area_id = 6 },
	{ config_id = 84002, monster_id = 20011401, pos = { x = 1198.631, y = 267.942, z = 1282.421 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_tag = "史莱姆", area_id = 6 },
	{ config_id = 84003, monster_id = 20011401, pos = { x = 1195.661, y = 267.942, z = 1282.513 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_tag = "史莱姆", area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 84004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1196.563, y = 260.328, z = 1280.370 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1084004, name = "ENTER_REGION_84004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_84004", action = "action_EVENT_ENTER_REGION_84004" }
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
		regions = { 84004 },
		triggers = { "ENTER_REGION_84004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_84004(context, evt)
	if evt.param1 ~= 84004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_84004(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 84001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 84002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 84003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end