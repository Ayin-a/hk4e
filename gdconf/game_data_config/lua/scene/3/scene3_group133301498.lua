-- 基础信息
local base_info = {
	group_id = 133301498
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 498002, monster_id = 26090701, pos = { x = -574.021, y = 41.349, z = 3883.439 }, rot = { x = 0.000, y = 27.367, z = 0.000 }, level = 33, drop_tag = "蕈兽", disableWander = true, pose_id = 102, area_id = 25 },
	{ config_id = 498003, monster_id = 26090701, pos = { x = -572.078, y = 41.592, z = 3882.051 }, rot = { x = 0.000, y = 12.368, z = 0.000 }, level = 33, drop_tag = "蕈兽", disableWander = true, pose_id = 102, area_id = 25 },
	{ config_id = 498004, monster_id = 26090701, pos = { x = -569.732, y = 41.970, z = 3881.996 }, rot = { x = 0.000, y = 356.243, z = 0.000 }, level = 33, drop_tag = "蕈兽", disableWander = true, pose_id = 102, area_id = 25 },
	{ config_id = 498006, monster_id = 20011201, pos = { x = -595.817, y = 39.177, z = 3900.144 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "史莱姆", area_id = 25 },
	{ config_id = 498007, monster_id = 20011202, pos = { x = -597.301, y = 40.883, z = 3908.664 }, rot = { x = 0.000, y = 85.864, z = 0.000 }, level = 33, drop_tag = "史莱姆", area_id = 25 },
	{ config_id = 498008, monster_id = 20011301, pos = { x = -598.672, y = 39.096, z = 3902.069 }, rot = { x = 0.000, y = 348.021, z = 0.000 }, level = 33, drop_tag = "大史莱姆", disableWander = true, area_id = 25 },
	{ config_id = 498014, monster_id = 20011202, pos = { x = -598.539, y = 39.825, z = 3905.366 }, rot = { x = 0.000, y = 185.951, z = 0.000 }, level = 33, drop_tag = "史莱姆", disableWander = true, area_id = 25 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 498001, gadget_id = 70310007, pos = { x = -570.795, y = 42.336, z = 3886.149 }, rot = { x = 15.287, y = 181.331, z = 347.018 }, level = 33, area_id = 25 },
	{ config_id = 498005, gadget_id = 70310007, pos = { x = -625.699, y = 49.404, z = 3966.832 }, rot = { x = 15.150, y = 189.336, z = 2.062 }, level = 33, area_id = 25 }
}

-- 区域
regions = {
	{ config_id = 498015, shape = RegionShape.SPHERE, radius = 5, pos = { x = -595.679, y = 41.262, z = 3904.153 }, area_id = 25 }
}

-- 触发器
triggers = {
	{ config_id = 1498015, name = "ENTER_REGION_498015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_498015", action = "action_EVENT_ENTER_REGION_498015" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 498009, gadget_id = 70290009, pos = { x = -584.853, y = 42.488, z = 3916.976 }, rot = { x = 0.000, y = 186.232, z = 0.000 }, level = 33, area_id = 25 },
		{ config_id = 498010, gadget_id = 70500000, pos = { x = -584.853, y = 42.488, z = 3916.976 }, rot = { x = 0.000, y = 186.232, z = 0.000 }, level = 33, point_type = 3005, owner = 498009, area_id = 25 },
		{ config_id = 498012, gadget_id = 70290009, pos = { x = -598.743, y = 39.819, z = 3904.118 }, rot = { x = 0.000, y = 327.680, z = 0.000 }, level = 33, area_id = 25 },
		{ config_id = 498013, gadget_id = 70500000, pos = { x = -598.743, y = 39.819, z = 3904.118 }, rot = { x = 0.000, y = 327.680, z = 0.000 }, level = 33, point_type = 3005, owner = 498012, area_id = 25 }
	}
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
		monsters = { 498002, 498003, 498004, 498008, 498014 },
		gadgets = { 498001, 498005 },
		regions = { 498015 },
		triggers = { "ENTER_REGION_498015" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_498015(context, evt)
	if evt.param1 ~= 498015 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_498015(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 498006, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 498007, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

require "V3_0/DeathFieldStandard"