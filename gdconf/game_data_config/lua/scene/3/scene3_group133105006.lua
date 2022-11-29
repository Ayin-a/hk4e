-- 基础信息
local base_info = {
	group_id = 133105006
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 27, monster_id = 20011101, pos = { x = 407.151, y = 200.414, z = -213.318 }, rot = { x = 0.000, y = 80.568, z = 0.000 }, level = 19, drop_tag = "大史莱姆", area_id = 9 },
	{ config_id = 28, monster_id = 20011101, pos = { x = 406.475, y = 200.426, z = -218.703 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "大史莱姆", area_id = 9 },
	{ config_id = 29, monster_id = 20011001, pos = { x = 409.386, y = 200.380, z = -214.621 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "史莱姆", area_id = 9 },
	{ config_id = 30, monster_id = 20011001, pos = { x = 408.643, y = 200.200, z = -217.167 }, rot = { x = 0.000, y = 44.753, z = 0.000 }, level = 19, drop_tag = "史莱姆", area_id = 9 },
	{ config_id = 31, monster_id = 20011001, pos = { x = 405.763, y = 200.415, z = -215.340 }, rot = { x = 0.000, y = 120.723, z = 0.000 }, level = 19, drop_tag = "史莱姆", area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 6, shape = RegionShape.SPHERE, radius = 5, pos = { x = 408.214, y = 200.200, z = -213.928 }, area_id = 9 }
}

-- 触发器
triggers = {
	{ config_id = 1000006, name = "ENTER_REGION_6", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_6" }
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
		monsters = { 29, 30, 31 },
		gadgets = { },
		regions = { 6 },
		triggers = { "ENTER_REGION_6" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ENTER_REGION_6(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 27, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 28, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end