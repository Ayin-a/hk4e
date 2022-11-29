-- 基础信息
local base_info = {
	group_id = 133107012
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 12001, monster_id = 20010801, pos = { x = -241.136, y = 200.000, z = 181.636 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, drop_tag = "史莱姆", area_id = 7 },
	{ config_id = 12002, monster_id = 20010801, pos = { x = -238.279, y = 200.000, z = 178.809 }, rot = { x = 0.000, y = 1.495, z = 0.000 }, level = 18, drop_tag = "史莱姆", area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 12003, shape = RegionShape.SPHERE, radius = 5, pos = { x = -242.175, y = 200.365, z = 178.098 }, area_id = 7 }
}

-- 触发器
triggers = {
	{ config_id = 1012003, name = "ENTER_REGION_12003", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_12003", action = "action_EVENT_ENTER_REGION_12003" }
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
		regions = { 12003 },
		triggers = { "ENTER_REGION_12003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_12003(context, evt)
	if evt.param1 ~= 12003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_12003(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 12001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 12002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end