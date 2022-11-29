-- 基础信息
local base_info = {
	group_id = 133102635
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 635001, monster_id = 20011401, pos = { x = 1126.103, y = 210.113, z = 902.023 }, rot = { x = 0.000, y = 120.253, z = 0.000 }, level = 19, drop_tag = "史莱姆", area_id = 6 },
	{ config_id = 635002, monster_id = 20011401, pos = { x = 1125.297, y = 209.904, z = 899.667 }, rot = { x = 0.000, y = 98.138, z = 0.000 }, level = 19, drop_tag = "史莱姆", area_id = 6 },
	{ config_id = 635003, monster_id = 20011401, pos = { x = 1127.690, y = 208.828, z = 900.525 }, rot = { x = 0.000, y = 126.939, z = 0.000 }, level = 19, drop_tag = "史莱姆", area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 635004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1126.341, y = 209.918, z = 900.920 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1635004, name = "ENTER_REGION_635004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_635004", action = "action_EVENT_ENTER_REGION_635004" }
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
		regions = { 635004 },
		triggers = { "ENTER_REGION_635004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_635004(context, evt)
	if evt.param1 ~= 635004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_635004(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 635001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 635002, delay_time = 2 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟4秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 635003, delay_time = 4 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end