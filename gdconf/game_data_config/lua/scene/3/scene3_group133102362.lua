-- 基础信息
local base_info = {
	group_id = 133102362
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 362001, monster_id = 20010901, pos = { x = 1333.887, y = 200.159, z = 133.089 }, rot = { x = 0.000, y = 41.057, z = 0.000 }, level = 16, drop_tag = "大史莱姆", disableWander = true, area_id = 5 },
	{ config_id = 362007, monster_id = 20010801, pos = { x = 1331.271, y = 200.000, z = 136.161 }, rot = { x = 0.000, y = 41.057, z = 0.000 }, level = 13, drop_tag = "史莱姆", disableWander = true, area_id = 5 },
	{ config_id = 362008, monster_id = 20010801, pos = { x = 1337.213, y = 200.000, z = 135.776 }, rot = { x = 0.000, y = 300.380, z = 0.000 }, level = 16, drop_tag = "史莱姆", disableWander = true, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 362002, gadget_id = 70220013, pos = { x = 1336.118, y = 199.084, z = 134.056 }, rot = { x = 323.441, y = 16.607, z = 333.403 }, level = 16, area_id = 5 },
	{ config_id = 362003, gadget_id = 70220013, pos = { x = 1332.151, y = 198.854, z = 133.677 }, rot = { x = 24.994, y = 335.483, z = 17.732 }, level = 16, area_id = 5 },
	{ config_id = 362004, gadget_id = 70220014, pos = { x = 1330.784, y = 199.170, z = 137.346 }, rot = { x = 32.711, y = 267.911, z = 330.132 }, level = 16, area_id = 5 },
	{ config_id = 362005, gadget_id = 70220026, pos = { x = 1333.230, y = 199.226, z = 130.912 }, rot = { x = 13.057, y = 0.000, z = 8.521 }, level = 16, area_id = 5 }
}

-- 区域
regions = {
	{ config_id = 362006, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1333.520, y = 200.000, z = 133.678 }, area_id = 5 }
}

-- 触发器
triggers = {
	{ config_id = 1362006, name = "ENTER_REGION_362006", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_362006", action = "action_EVENT_ENTER_REGION_362006" }
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
		gadgets = { 362002, 362003, 362004, 362005 },
		regions = { 362006 },
		triggers = { "ENTER_REGION_362006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_362006(context, evt)
	if evt.param1 ~= 362006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_362006(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 362001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 362008, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 362007, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end