-- 基础信息
local base_info = {
	group_id = 133007050
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 87, monster_id = 20011501, pos = { x = 2970.531, y = 227.875, z = 346.284 }, rot = { x = 0.000, y = 42.694, z = 0.000 }, level = 20, drop_tag = "大史莱姆", area_id = 4 },
	{ config_id = 88, monster_id = 20011401, pos = { x = 2969.207, y = 227.486, z = 350.363 }, rot = { x = 0.000, y = 147.181, z = 0.000 }, level = 20, drop_tag = "史莱姆", area_id = 4 },
	{ config_id = 426, monster_id = 20011401, pos = { x = 2975.274, y = 227.502, z = 345.105 }, rot = { x = 0.000, y = 287.222, z = 0.000 }, level = 20, drop_tag = "史莱姆", area_id = 4 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1040, gadget_id = 70220021, pos = { x = 2974.413, y = 227.502, z = 351.645 }, rot = { x = 0.000, y = 34.224, z = 0.000 }, level = 23, isOneoff = true, area_id = 4 }
}

-- 区域
regions = {
	{ config_id = 25, shape = RegionShape.SPHERE, radius = 8, pos = { x = 2971.554, y = 227.502, z = 348.490 }, area_id = 4 }
}

-- 触发器
triggers = {
	{ config_id = 1000025, name = "ENTER_REGION_25", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_25", action = "action_EVENT_ENTER_REGION_25", tlog_tag = "风龙_50_伏击_触发" }
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
		gadgets = { 1040 },
		regions = { 25 },
		triggers = { "ENTER_REGION_25" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_25(context, evt)
	if evt.param1 ~= 25 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_25(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 87, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 88, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end