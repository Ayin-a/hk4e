-- 基础信息
local base_info = {
	group_id = 133105057
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 135, monster_id = 20011101, pos = { x = 558.780, y = 200.817, z = -170.629 }, rot = { x = 0.000, y = 339.429, z = 0.000 }, level = 19, drop_tag = "大史莱姆", area_id = 9 },
	{ config_id = 136, monster_id = 20011101, pos = { x = 564.195, y = 201.354, z = -170.252 }, rot = { x = 0.000, y = 258.861, z = 0.000 }, level = 19, drop_tag = "大史莱姆", area_id = 9 },
	{ config_id = 137, monster_id = 20011001, pos = { x = 562.925, y = 201.624, z = -172.836 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "史莱姆", area_id = 9 },
	{ config_id = 138, monster_id = 20011001, pos = { x = 562.182, y = 201.696, z = -175.381 }, rot = { x = 0.000, y = 44.753, z = 0.000 }, level = 19, drop_tag = "史莱姆", area_id = 9 },
	{ config_id = 139, monster_id = 20011001, pos = { x = 559.302, y = 201.032, z = -173.554 }, rot = { x = 0.000, y = 120.723, z = 0.000 }, level = 19, drop_tag = "史莱姆", area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 112, gadget_id = 70290008, pos = { x = 561.032, y = 201.343, z = -173.800 }, rot = { x = 5.265, y = 0.490, z = 10.620 }, level = 19, area_id = 9 },
	{ config_id = 113, gadget_id = 70500000, pos = { x = 561.032, y = 201.343, z = -173.800 }, rot = { x = 5.265, y = 0.490, z = 10.620 }, level = 19, point_type = 3008, owner = 112, area_id = 9 }
}

-- 区域
regions = {
	{ config_id = 76, shape = RegionShape.SPHERE, radius = 5, pos = { x = 561.753, y = 201.590, z = -172.142 }, area_id = 9 }
}

-- 触发器
triggers = {
	{ config_id = 1000076, name = "ENTER_REGION_76", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_76" }
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
		gadgets = { 112, 113 },
		regions = { 76 },
		triggers = { "ENTER_REGION_76" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ENTER_REGION_76(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 137, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 138, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 139, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 135, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 136, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end