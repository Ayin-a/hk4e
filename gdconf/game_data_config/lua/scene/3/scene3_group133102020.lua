-- 基础信息
local base_info = {
	group_id = 133102020
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 22, monster_id = 20011001, pos = { x = 1292.319, y = 200.000, z = 485.213 }, rot = { x = 0.000, y = 43.442, z = 0.000 }, level = 15, drop_tag = "史莱姆", disableWander = true, area_id = 5 },
	{ config_id = 23, monster_id = 20011001, pos = { x = 1294.261, y = 200.000, z = 495.180 }, rot = { x = 0.000, y = 43.442, z = 0.000 }, level = 15, drop_tag = "史莱姆", disableWander = true, area_id = 5 },
	{ config_id = 24, monster_id = 20011001, pos = { x = 1288.966, y = 200.000, z = 489.889 }, rot = { x = 0.000, y = 43.442, z = 0.000 }, level = 15, drop_tag = "史莱姆", disableWander = true, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 103, gadget_id = 70211101, pos = { x = 1357.636, y = 200.436, z = 404.411 }, rot = { x = 354.610, y = 147.450, z = 350.525 }, level = 16, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 }
}

-- 区域
regions = {
	{ config_id = 480, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1292.500, y = 199.400, z = 490.700 }, area_id = 5 }
}

-- 触发器
triggers = {
	{ config_id = 1000480, name = "ENTER_REGION_480", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_480", action = "action_EVENT_ENTER_REGION_480" }
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
		gadgets = { 103 },
		regions = { 480 },
		triggers = { "ENTER_REGION_480" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_480(context, evt)
	if evt.param1 ~= 480 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_480(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 22, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 23, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 24, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end