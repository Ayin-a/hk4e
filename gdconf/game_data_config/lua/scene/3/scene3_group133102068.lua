-- 基础信息
local base_info = {
	group_id = 133102068
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 102, monster_id = 20010801, pos = { x = 1387.157, y = 200.000, z = 264.153 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "史莱姆", area_id = 5 },
	{ config_id = 103, monster_id = 20010801, pos = { x = 1383.704, y = 200.000, z = 265.009 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "史莱姆", area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 161, shape = RegionShape.SPHERE, radius = 3, pos = { x = 1385.946, y = 200.129, z = 264.814 }, area_id = 5 }
}

-- 触发器
triggers = {
	{ config_id = 1000161, name = "ENTER_REGION_161", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_161", action = "action_EVENT_ENTER_REGION_161" }
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
		regions = { 161 },
		triggers = { "ENTER_REGION_161" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_161(context, evt)
	if evt.param1 ~= 161 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_161(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 102, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 103, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end