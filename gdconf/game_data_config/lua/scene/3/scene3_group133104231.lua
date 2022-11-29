-- 基础信息
local base_info = {
	group_id = 133104231
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 231001, monster_id = 20010501, pos = { x = 99.883, y = 201.613, z = 618.625 }, rot = { x = 350.260, y = 0.206, z = 356.440 }, level = 19, drop_tag = "史莱姆", area_id = 9 },
	{ config_id = 231002, monster_id = 20010501, pos = { x = 106.521, y = 200.081, z = 614.575 }, rot = { x = 346.331, y = 357.222, z = 350.299 }, level = 19, drop_tag = "史莱姆", area_id = 9 },
	{ config_id = 231003, monster_id = 20010501, pos = { x = 107.103, y = 201.528, z = 620.258 }, rot = { x = 350.247, y = 359.984, z = 358.239 }, level = 19, drop_tag = "史莱姆", area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 231005, shape = RegionShape.SPHERE, radius = 7, pos = { x = 104.900, y = 201.024, z = 617.452 }, area_id = 9 }
}

-- 触发器
triggers = {
	{ config_id = 1231005, name = "ENTER_REGION_231005", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_231005", action = "action_EVENT_ENTER_REGION_231005" }
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
		regions = { 231005 },
		triggers = { "ENTER_REGION_231005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_231005(context, evt)
	if evt.param1 ~= 231005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_231005(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 231001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 231002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 231003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 231004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end