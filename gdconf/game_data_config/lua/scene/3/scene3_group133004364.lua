-- 基础信息
local base_info = {
	group_id = 133004364
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 364001, monster_id = 26010101, pos = { x = 2494.036, y = 261.413, z = -289.572 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "骗骗花", area_id = 4 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 364002, gadget_id = 70290008, pos = { x = 2489.813, y = 262.231, z = -295.692 }, rot = { x = 0.882, y = 359.925, z = 350.247 }, level = 20, area_id = 4 },
	{ config_id = 364003, gadget_id = 70500000, pos = { x = 2489.813, y = 262.231, z = -295.692 }, rot = { x = 0.882, y = 359.925, z = 350.247 }, level = 20, point_type = 3008, owner = 364002, area_id = 4 },
	{ config_id = 364004, gadget_id = 70290008, pos = { x = 2499.135, y = 261.366, z = -283.451 }, rot = { x = 352.010, y = 0.250, z = 356.424 }, level = 20, area_id = 4 },
	{ config_id = 364005, gadget_id = 70500000, pos = { x = 2499.135, y = 261.366, z = -283.451 }, rot = { x = 352.010, y = 0.250, z = 356.424 }, level = 20, point_type = 3008, owner = 364004, area_id = 4 }
}

-- 区域
regions = {
	{ config_id = 364006, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2494.206, y = 261.369, z = -289.388 }, area_id = 4 }
}

-- 触发器
triggers = {
	{ config_id = 1364006, name = "ENTER_REGION_364006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_364006", action = "action_EVENT_ENTER_REGION_364006" }
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
		gadgets = { 364002, 364003, 364004, 364005 },
		regions = { 364006 },
		triggers = { "ENTER_REGION_364006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_364006(context, evt)
	if evt.param1 ~= 364006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_364006(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 364001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end