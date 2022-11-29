-- 基础信息
local base_info = {
	group_id = 133104557
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 557001, monster_id = 20011301, pos = { x = 589.097, y = 205.123, z = 907.875 }, rot = { x = 0.000, y = 90.088, z = 0.000 }, level = 21, drop_tag = "大史莱姆", area_id = 6 },
	{ config_id = 557002, monster_id = 20010501, pos = { x = 591.373, y = 204.772, z = 906.033 }, rot = { x = 0.000, y = 64.727, z = 0.000 }, level = 21, drop_tag = "史莱姆", area_id = 6 },
	{ config_id = 557003, monster_id = 20010501, pos = { x = 590.879, y = 204.961, z = 909.612 }, rot = { x = 0.000, y = 107.396, z = 0.000 }, level = 21, drop_tag = "史莱姆", area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 557004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 590.581, y = 204.911, z = 907.752 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1557004, name = "ENTER_REGION_557004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_557004", action = "action_EVENT_ENTER_REGION_557004" }
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
		regions = { 557004 },
		triggers = { "ENTER_REGION_557004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_557004(context, evt)
	if evt.param1 ~= 557004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_557004(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 557001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 557002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 557003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end