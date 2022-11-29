-- 基础信息
local base_info = {
	group_id = 133007115
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 187, monster_id = 20011001, pos = { x = 2119.214, y = 211.606, z = -31.697 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "史莱姆", disableWander = true, area_id = 4 },
	{ config_id = 188, monster_id = 20011001, pos = { x = 2112.729, y = 210.598, z = -36.048 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "史莱姆", disableWander = true, area_id = 4 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 411, gadget_id = 70500000, pos = { x = 2117.468, y = 211.324, z = -34.994 }, rot = { x = 0.000, y = 213.794, z = 0.000 }, level = 23, point_type = 2003, area_id = 4 },
	{ config_id = 412, gadget_id = 70500000, pos = { x = 2115.869, y = 211.530, z = -32.041 }, rot = { x = 0.000, y = 79.868, z = 0.000 }, level = 23, point_type = 2003, area_id = 4 },
	{ config_id = 413, gadget_id = 70500000, pos = { x = 2113.329, y = 210.915, z = -34.835 }, rot = { x = 0.000, y = 246.374, z = 0.000 }, level = 23, point_type = 2003, area_id = 4 },
	{ config_id = 637, gadget_id = 70211101, pos = { x = 2115.472, y = 211.340, z = -33.978 }, rot = { x = 0.000, y = 285.815, z = 0.000 }, level = 21, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 4 }
}

-- 区域
regions = {
	{ config_id = 58, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2115.723, y = 210.175, z = -32.369 }, area_id = 4 }
}

-- 触发器
triggers = {
	{ config_id = 1000058, name = "ENTER_REGION_58", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_58", action = "action_EVENT_ENTER_REGION_58", tlog_tag = "风龙_115_伏击_触发" },
	{ config_id = 1000144, name = "ANY_MONSTER_DIE_144", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_144", action = "action_EVENT_ANY_MONSTER_DIE_144", tlog_tag = "风龙_115_小灯草宝箱_触发" }
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
		gadgets = { 411, 412, 413 },
		regions = { 58 },
		triggers = { "ENTER_REGION_58", "ANY_MONSTER_DIE_144" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_58(context, evt)
	if evt.param1 ~= 58 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_58(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 187, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 188, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_144(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_144(context, evt)
	-- 创建id为637的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 637 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end