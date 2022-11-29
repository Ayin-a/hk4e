-- 基础信息
local base_info = {
	group_id = 133008023
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 23004, monster_id = 23010401, pos = { x = 1330.609, y = 271.952, z = -507.287 }, rot = { x = 0.000, y = 262.955, z = 0.000 }, level = 30, drop_tag = "先遣队", disableWander = true, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 23002, gadget_id = 70211001, pos = { x = 1326.245, y = 272.950, z = -508.188 }, rot = { x = 14.110, y = 78.953, z = 359.043 }, level = 26, drop_tag = "雪山战斗低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 }
}

-- 区域
regions = {
	{ config_id = 23001, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1326.762, y = 273.143, z = -508.092 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1023001, name = "ENTER_REGION_23001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_23001", action = "action_EVENT_ENTER_REGION_23001" }
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
		gadgets = { 23002 },
		regions = { 23001 },
		triggers = { "ENTER_REGION_23001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_23001(context, evt)
	if evt.param1 ~= 23001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_23001(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 23004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end