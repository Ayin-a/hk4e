-- 基础信息
local base_info = {
	group_id = 133104157
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 379, monster_id = 20010801, pos = { x = 724.209, y = 200.000, z = 187.894 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 17, drop_tag = "史莱姆", area_id = 9 },
	{ config_id = 380, monster_id = 20010801, pos = { x = 718.143, y = 200.000, z = 193.473 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 17, drop_tag = "史莱姆", area_id = 9 },
	{ config_id = 381, monster_id = 20010801, pos = { x = 710.440, y = 200.000, z = 188.115 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 17, drop_tag = "史莱姆", area_id = 9 },
	{ config_id = 382, monster_id = 20010801, pos = { x = 718.268, y = 200.000, z = 182.764 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 17, drop_tag = "史莱姆", area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 256, shape = RegionShape.SPHERE, radius = 8, pos = { x = 718.849, y = 203.615, z = 189.236 }, area_id = 9 }
}

-- 触发器
triggers = {
	{ config_id = 1000256, name = "ENTER_REGION_256", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_256", action = "action_EVENT_ENTER_REGION_256" }
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
		regions = { 256 },
		triggers = { "ENTER_REGION_256" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_256(context, evt)
	if evt.param1 ~= 256 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_256(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 379, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 380, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 381, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 382, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end