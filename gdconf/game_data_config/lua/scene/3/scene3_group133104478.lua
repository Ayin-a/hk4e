-- 基础信息
local base_info = {
	group_id = 133104478
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 478002, monster_id = 20011201, pos = { x = -83.647, y = 335.582, z = 742.226 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_tag = "史莱姆", area_id = 8 },
	{ config_id = 478003, monster_id = 20011201, pos = { x = -86.038, y = 335.279, z = 742.273 }, rot = { x = 0.000, y = 62.198, z = 0.000 }, level = 24, drop_tag = "史莱姆", area_id = 8 },
	{ config_id = 478004, monster_id = 20011201, pos = { x = -84.310, y = 335.124, z = 739.334 }, rot = { x = 0.000, y = 238.609, z = 0.000 }, level = 24, drop_tag = "史莱姆", area_id = 8 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 478001, shape = RegionShape.SPHERE, radius = 5, pos = { x = -84.514, y = 336.300, z = 740.863 }, area_id = 8 }
}

-- 触发器
triggers = {
	{ config_id = 1478001, name = "ENTER_REGION_478001", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_478001", action = "action_EVENT_ENTER_REGION_478001" }
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
		regions = { 478001 },
		triggers = { "ENTER_REGION_478001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_478001(context, evt)
	if evt.param1 ~= 478001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_478001(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 478002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 478003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 478004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end