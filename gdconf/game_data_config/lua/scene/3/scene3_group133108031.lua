-- 基础信息
local base_info = {
	group_id = 133108031
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 31001, monster_id = 20011401, pos = { x = -34.228, y = 200.024, z = -663.435 }, rot = { x = 0.000, y = 37.435, z = 0.000 }, level = 30, drop_tag = "史莱姆", area_id = 7 },
	{ config_id = 31002, monster_id = 20011401, pos = { x = -33.270, y = 200.024, z = -665.351 }, rot = { x = 0.000, y = 41.126, z = 0.000 }, level = 30, drop_tag = "史莱姆", area_id = 7 },
	{ config_id = 31003, monster_id = 20011401, pos = { x = -36.240, y = 200.024, z = -665.259 }, rot = { x = 0.000, y = 178.488, z = 0.000 }, level = 30, drop_tag = "史莱姆", area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 31004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -34.767, y = 200.024, z = -665.328 }, area_id = 7 }
}

-- 触发器
triggers = {
	{ config_id = 1031004, name = "ENTER_REGION_31004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_31004", action = "action_EVENT_ENTER_REGION_31004" }
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
		regions = { 31004 },
		triggers = { "ENTER_REGION_31004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_31004(context, evt)
	if evt.param1 ~= 31004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_31004(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 31001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 31002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 31003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end