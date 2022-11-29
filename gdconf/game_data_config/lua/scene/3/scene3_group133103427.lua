-- 基础信息
local base_info = {
	group_id = 133103427
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 427001, monster_id = 20011201, pos = { x = 138.251, y = 243.498, z = 1024.429 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 22, drop_tag = "史莱姆", area_id = 6 },
	{ config_id = 427002, monster_id = 20011201, pos = { x = 143.601, y = 242.964, z = 1018.642 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 22, drop_tag = "史莱姆", area_id = 6 },
	{ config_id = 427003, monster_id = 20011201, pos = { x = 130.176, y = 245.958, z = 1017.907 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 22, drop_tag = "史莱姆", area_id = 6 },
	{ config_id = 427005, monster_id = 20011201, pos = { x = 134.722, y = 245.314, z = 1013.442 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 22, drop_tag = "史莱姆", area_id = 6 },
	{ config_id = 427006, monster_id = 20011201, pos = { x = 141.396, y = 244.134, z = 1014.022 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 22, drop_tag = "史莱姆", area_id = 6 },
	{ config_id = 427007, monster_id = 20011201, pos = { x = 132.163, y = 244.873, z = 1023.058 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 22, drop_tag = "史莱姆", area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 427004, shape = RegionShape.SPHERE, radius = 7, pos = { x = 136.688, y = 245.302, z = 1018.763 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1427004, name = "ENTER_REGION_427004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_427004", action = "action_EVENT_ENTER_REGION_427004" }
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
		regions = { 427004 },
		triggers = { "ENTER_REGION_427004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_427004(context, evt)
	if evt.param1 ~= 427004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_427004(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 427001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 427002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 427003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end