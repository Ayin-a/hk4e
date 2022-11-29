-- 基础信息
local base_info = {
	group_id = 133102642
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 642001, monster_id = 20011201, pos = { x = 1101.886, y = 204.921, z = 814.561 }, rot = { x = 0.000, y = 233.844, z = 0.000 }, level = 19, drop_tag = "史莱姆", area_id = 6 },
	{ config_id = 642002, monster_id = 20011201, pos = { x = 1103.373, y = 204.776, z = 813.336 }, rot = { x = 3.775, y = 268.160, z = 6.112 }, level = 19, drop_tag = "史莱姆", area_id = 6 },
	{ config_id = 642003, monster_id = 20011201, pos = { x = 1100.403, y = 204.585, z = 813.428 }, rot = { x = 9.696, y = 239.872, z = 2.561 }, level = 19, drop_tag = "史莱姆", area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 642004, shape = RegionShape.SPHERE, radius = 8, pos = { x = 1101.876, y = 204.746, z = 813.359 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1642004, name = "ENTER_REGION_642004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_642004", action = "action_EVENT_ENTER_REGION_642004" }
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
		regions = { 642004 },
		triggers = { "ENTER_REGION_642004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_642004(context, evt)
	if evt.param1 ~= 642004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_642004(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 642001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 642002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 642003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end