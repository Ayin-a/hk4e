-- 基础信息
local base_info = {
	group_id = 133008464
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 464002, monster_id = 20010801, pos = { x = 1253.657, y = 309.758, z = -1079.503 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "史莱姆", climate_area_id = 1, area_id = 10 },
	{ config_id = 464003, monster_id = 20010801, pos = { x = 1255.448, y = 308.610, z = -1078.223 }, rot = { x = 0.000, y = 230.967, z = 0.000 }, level = 30, drop_tag = "史莱姆", climate_area_id = 1, area_id = 10 },
	{ config_id = 464004, monster_id = 20010801, pos = { x = 1252.645, y = 309.366, z = -1077.906 }, rot = { x = 0.000, y = 115.717, z = 0.000 }, level = 30, drop_tag = "史莱姆", climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 464001, gadget_id = 70360102, pos = { x = 1254.423, y = 308.882, z = -1078.769 }, rot = { x = 341.353, y = 237.956, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 464006, gadget_id = 70360102, pos = { x = 1249.555, y = 309.967, z = -1078.275 }, rot = { x = 353.115, y = 237.956, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 464007, gadget_id = 70360102, pos = { x = 1262.049, y = 306.577, z = -1076.975 }, rot = { x = 354.563, y = 311.573, z = 342.137 }, level = 1, area_id = 10 },
	{ config_id = 464008, gadget_id = 70360102, pos = { x = 1259.877, y = 309.139, z = -1084.018 }, rot = { x = 6.498, y = 128.229, z = 17.516 }, level = 1, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1464005, name = "ANY_GADGET_DIE_464005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_464005", action = "action_EVENT_ANY_GADGET_DIE_464005" }
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
		gadgets = { 464001, 464006, 464007, 464008 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_464005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_464005(context, evt)
	if 464001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_464005(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 464002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 464003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 464004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end