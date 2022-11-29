-- 基础信息
local base_info = {
	group_id = 133104364
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 364001, monster_id = 20011001, pos = { x = 585.648, y = 200.000, z = 652.853 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "史莱姆", disableWander = true, area_id = 6 },
	{ config_id = 364002, monster_id = 20011001, pos = { x = 590.372, y = 200.000, z = 649.634 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "史莱姆", disableWander = true, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 364003, shape = RegionShape.SPHERE, radius = 5, pos = { x = 587.880, y = 200.248, z = 651.095 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1364003, name = "ENTER_REGION_364003", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_364003", action = "action_EVENT_ENTER_REGION_364003" }
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
		regions = { 364003 },
		triggers = { "ENTER_REGION_364003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_364003(context, evt)
	if evt.param1 ~= 364003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_364003(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 364001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 364002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end