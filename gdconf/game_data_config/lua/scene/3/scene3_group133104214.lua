-- 基础信息
local base_info = {
	group_id = 133104214
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 214002, monster_id = 20011201, pos = { x = 359.897, y = 224.614, z = 394.706 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "史莱姆", area_id = 9 },
	{ config_id = 214003, monster_id = 20011201, pos = { x = 363.487, y = 225.087, z = 391.861 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "史莱姆", area_id = 9 },
	{ config_id = 214004, monster_id = 20011201, pos = { x = 366.223, y = 225.928, z = 395.671 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "史莱姆", area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 214001, shape = RegionShape.SPHERE, radius = 8, pos = { x = 363.981, y = 227.201, z = 395.333 }, area_id = 9 }
}

-- 触发器
triggers = {
	{ config_id = 1214001, name = "ENTER_REGION_214001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_214001" }
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
		regions = { 214001 },
		triggers = { "ENTER_REGION_214001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ENTER_REGION_214001(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 214002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 214003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 214004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end