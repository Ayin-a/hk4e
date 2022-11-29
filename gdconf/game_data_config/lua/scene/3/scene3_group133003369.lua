-- 基础信息
local base_info = {
	group_id = 133003369
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1228, monster_id = 20011201, pos = { x = 2193.086, y = 209.199, z = -1048.521 }, rot = { x = 0.000, y = 131.648, z = 0.000 }, level = 1, drop_tag = "史莱姆", area_id = 1 },
	{ config_id = 1229, monster_id = 20011201, pos = { x = 2193.972, y = 209.348, z = -1047.624 }, rot = { x = 0.000, y = 131.648, z = 0.000 }, level = 1, drop_tag = "史莱姆", area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3542, gadget_id = 70211103, pos = { x = 2193.038, y = 208.988, z = -1050.247 }, rot = { x = 353.601, y = 59.670, z = 0.939 }, level = 1, drop_tag = "解谜低级蒙德", state = GadgetState.ChestBramble, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 }
}

-- 区域
regions = {
	{ config_id = 478, shape = RegionShape.SPHERE, radius = 3, pos = { x = 2192.946, y = 209.092, z = -1049.551 }, area_id = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1000478, name = "ENTER_REGION_478", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_478", action = "action_EVENT_ENTER_REGION_478" }
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
		gadgets = { 3542 },
		regions = { 478 },
		triggers = { "ENTER_REGION_478" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_478(context, evt)
	if evt.param1 ~= 478 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_478(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1228, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1229, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end