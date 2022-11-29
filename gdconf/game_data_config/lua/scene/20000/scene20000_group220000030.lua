-- 基础信息
local base_info = {
	group_id = 220000030
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 54, monster_id = 21010201, pos = { x = -31.014, y = 1.348, z = 79.423 }, rot = { x = 0.000, y = 76.844, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 55, monster_id = 21010201, pos = { x = -25.225, y = 1.348, z = 72.329 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 56, monster_id = 21010301, pos = { x = -22.276, y = 1.348, z = 81.942 }, rot = { x = 0.000, y = 166.185, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 57, monster_id = 21010401, pos = { x = -7.979, y = 7.001, z = 77.062 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 58, monster_id = 21010401, pos = { x = -20.494, y = 7.001, z = 102.925 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 59, monster_id = 21010401, pos = { x = -19.199, y = 7.001, z = 54.064 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 73, gadget_id = 70220005, pos = { x = -38.667, y = 7.183, z = 207.031 }, rot = { x = 0.000, y = 115.984, z = 0.000 }, level = 1 },
	{ config_id = 74, gadget_id = 70220005, pos = { x = -41.962, y = 7.183, z = 213.520 }, rot = { x = 0.000, y = 337.026, z = 0.000 }, level = 1 },
	{ config_id = 75, gadget_id = 70220005, pos = { x = -33.672, y = 7.183, z = 212.945 }, rot = { x = 0.000, y = 132.577, z = 0.000 }, level = 1 },
	{ config_id = 83, gadget_id = 70220005, pos = { x = -39.099, y = 7.151, z = 209.997 }, rot = { x = 0.000, y = 50.963, z = 0.000 }, level = 1 },
	{ config_id = 84, gadget_id = 70220005, pos = { x = -35.744, y = 7.151, z = 211.856 }, rot = { x = 0.000, y = 353.600, z = 0.000 }, level = 1 },
	{ config_id = 85, gadget_id = 70220005, pos = { x = -35.184, y = 7.151, z = 209.828 }, rot = { x = 0.000, y = 237.513, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 49, shape = RegionShape.SPHERE, radius = 10.2, pos = { x = 19.314, y = 0.500, z = 51.483 } }
}

-- 触发器
triggers = {
	{ config_id = 1000049, name = "ENTER_REGION_49", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_49", action = "action_EVENT_ENTER_REGION_49", forbid_guest = false }
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
	rand_suite = true
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suites = {
	{
		-- suite_id = 1,
		-- description = suite_1,
		monsters = { },
		gadgets = { 73, 74, 75, 83, 84, 85 },
		regions = { 49 },
		triggers = { "ENTER_REGION_49" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 54, 55, 56, 57, 58, 59 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_49(context, evt)
	if evt.param1 ~= 49 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_49(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 54, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 55, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 56, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 57, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 58, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 59, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end