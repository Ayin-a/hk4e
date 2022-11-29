-- 基础信息
local base_info = {
	group_id = 133105050
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 124, monster_id = 20011101, pos = { x = 214.166, y = 200.336, z = -123.556 }, rot = { x = 0.000, y = 80.568, z = 0.000 }, level = 19, drop_tag = "大史莱姆", area_id = 9 },
	{ config_id = 125, monster_id = 20011101, pos = { x = 213.490, y = 200.136, z = -128.941 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "大史莱姆", area_id = 9 },
	{ config_id = 126, monster_id = 20011001, pos = { x = 216.401, y = 200.366, z = -124.860 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "史莱姆", area_id = 9 },
	{ config_id = 127, monster_id = 20011001, pos = { x = 215.658, y = 200.250, z = -127.405 }, rot = { x = 0.000, y = 44.753, z = 0.000 }, level = 19, drop_tag = "史莱姆", area_id = 9 },
	{ config_id = 128, monster_id = 20011001, pos = { x = 212.778, y = 200.181, z = -125.578 }, rot = { x = 0.000, y = 120.723, z = 0.000 }, level = 19, drop_tag = "史莱姆", area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 66, shape = RegionShape.SPHERE, radius = 5, pos = { x = 215.229, y = 200.575, z = -124.166 }, area_id = 9 }
}

-- 触发器
triggers = {
	{ config_id = 1000066, name = "ENTER_REGION_66", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_66" }
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
		monsters = { 126, 127, 128 },
		gadgets = { },
		regions = { 66 },
		triggers = { "ENTER_REGION_66" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ENTER_REGION_66(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 124, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 125, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end