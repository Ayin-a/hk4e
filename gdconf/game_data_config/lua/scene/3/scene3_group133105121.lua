-- 基础信息
local base_info = {
	group_id = 133105121
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 203, monster_id = 20010501, pos = { x = 542.326, y = 200.200, z = -93.309 }, rot = { x = 0.000, y = 35.344, z = 0.000 }, level = 19, drop_tag = "史莱姆", area_id = 9 },
	{ config_id = 204, monster_id = 20010501, pos = { x = 538.490, y = 200.200, z = -92.929 }, rot = { x = 0.000, y = 347.946, z = 0.000 }, level = 19, drop_tag = "史莱姆", area_id = 9 },
	{ config_id = 205, monster_id = 20010601, pos = { x = 540.512, y = 200.200, z = -93.120 }, rot = { x = 0.000, y = 297.683, z = 0.000 }, level = 19, drop_tag = "大史莱姆", area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 285, gadget_id = 70290010, pos = { x = 546.652, y = 200.151, z = -92.087 }, rot = { x = 9.670, y = 301.030, z = 0.000 }, level = 19, area_id = 9 },
	{ config_id = 286, gadget_id = 70500000, pos = { x = 546.652, y = 200.151, z = -92.087 }, rot = { x = 9.670, y = 301.030, z = 0.000 }, level = 19, point_type = 3006, owner = 285, area_id = 9 },
	{ config_id = 287, gadget_id = 70290010, pos = { x = 534.429, y = 201.352, z = -94.113 }, rot = { x = 351.761, y = 2.818, z = 331.235 }, level = 19, area_id = 9 },
	{ config_id = 288, gadget_id = 70500000, pos = { x = 534.429, y = 201.352, z = -94.113 }, rot = { x = 351.761, y = 2.818, z = 331.235 }, level = 19, point_type = 3006, owner = 287, area_id = 9 }
}

-- 区域
regions = {
	{ config_id = 162, shape = RegionShape.SPHERE, radius = 5, pos = { x = 540.466, y = 200.200, z = -93.262 }, area_id = 9 }
}

-- 触发器
triggers = {
	{ config_id = 1000162, name = "ENTER_REGION_162", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_162", action = "action_EVENT_ENTER_REGION_162" }
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
		gadgets = { 285, 286, 287, 288 },
		regions = { 162 },
		triggers = { "ENTER_REGION_162" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_162(context, evt)
	if evt.param1 ~= 162 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_162(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 203, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 204, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 205, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end