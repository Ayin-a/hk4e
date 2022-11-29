-- 基础信息
local base_info = {
	group_id = 133003156
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 634, monster_id = 28030401, pos = { x = 2615.227, y = 216.506, z = -1603.576 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 1 },
	{ config_id = 635, monster_id = 28030401, pos = { x = 2616.128, y = 216.544, z = -1601.036 }, rot = { x = 0.000, y = 260.701, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 1 },
	{ config_id = 636, monster_id = 28030401, pos = { x = 2616.928, y = 216.170, z = -1602.984 }, rot = { x = 0.000, y = 341.099, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 1 },
	{ config_id = 1108, monster_id = 28030401, pos = { x = 2618.361, y = 221.631, z = -1304.117 }, rot = { x = 0.000, y = 324.401, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 1 },
	{ config_id = 1109, monster_id = 28030401, pos = { x = 2617.888, y = 221.607, z = -1306.612 }, rot = { x = 0.000, y = 301.733, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 1 },
	{ config_id = 1110, monster_id = 28030401, pos = { x = 2621.032, y = 222.526, z = -1304.214 }, rot = { x = 0.000, y = 324.401, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 1 },
	{ config_id = 1111, monster_id = 28030401, pos = { x = 2620.390, y = 221.650, z = -1303.633 }, rot = { x = 0.000, y = 168.331, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2873, gadget_id = 70211101, pos = { x = 2659.736, y = 250.887, z = -1471.193 }, rot = { x = 0.000, y = 269.468, z = 0.000 }, level = 26, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 },
	{ config_id = 3794, gadget_id = 70211101, pos = { x = 2621.846, y = 224.218, z = -1356.678 }, rot = { x = 0.491, y = 176.267, z = 352.596 }, level = 1, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 }
}

-- 区域
regions = {
	{ config_id = 541, shape = RegionShape.SPHERE, radius = 8.3, pos = { x = 2618.453, y = 214.631, z = -1605.237 }, area_id = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1000541, name = "ENTER_REGION_541", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_541", action = "action_EVENT_ENTER_REGION_541" }
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
		monsters = { 1108, 1109, 1110, 1111 },
		gadgets = { 2873, 3794 },
		regions = { 541 },
		triggers = { "ENTER_REGION_541" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_541(context, evt)
	if evt.param1 ~= 541 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_541(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 634, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 635, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 636, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end