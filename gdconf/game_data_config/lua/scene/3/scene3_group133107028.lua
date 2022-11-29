-- 基础信息
local base_info = {
	group_id = 133107028
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 28001, monster_id = 20011201, pos = { x = -678.547, y = 299.614, z = 564.430 }, rot = { x = 0.000, y = 198.204, z = 0.000 }, level = 24, drop_tag = "史莱姆", area_id = 7 },
	{ config_id = 28002, monster_id = 20011201, pos = { x = -677.836, y = 299.583, z = 562.728 }, rot = { x = 0.000, y = 245.755, z = 0.000 }, level = 24, drop_tag = "史莱姆", area_id = 7 },
	{ config_id = 28003, monster_id = 20011201, pos = { x = -680.193, y = 299.598, z = 563.643 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_tag = "史莱姆", area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 28004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -678.637, y = 299.589, z = 563.491 }, area_id = 7 }
}

-- 触发器
triggers = {
	{ config_id = 1028004, name = "ENTER_REGION_28004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_28004", action = "action_EVENT_ENTER_REGION_28004" }
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
		regions = { 28004 },
		triggers = { "ENTER_REGION_28004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_28004(context, evt)
	if evt.param1 ~= 28004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_28004(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 28001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 28002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 28003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end