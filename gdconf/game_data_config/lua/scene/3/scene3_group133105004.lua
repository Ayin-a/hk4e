-- 基础信息
local base_info = {
	group_id = 133105004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 11, monster_id = 20011101, pos = { x = 731.496, y = 200.450, z = -22.214 }, rot = { x = 0.000, y = 80.568, z = 0.000 }, level = 19, drop_tag = "大史莱姆", area_id = 9 },
	{ config_id = 12, monster_id = 20011101, pos = { x = 730.819, y = 200.713, z = -27.599 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "大史莱姆", area_id = 9 },
	{ config_id = 13, monster_id = 20011001, pos = { x = 733.730, y = 200.450, z = -23.517 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "史莱姆", area_id = 9 },
	{ config_id = 14, monster_id = 20011001, pos = { x = 732.987, y = 200.499, z = -26.063 }, rot = { x = 0.000, y = 44.753, z = 0.000 }, level = 19, drop_tag = "史莱姆", area_id = 9 },
	{ config_id = 15, monster_id = 20011001, pos = { x = 730.108, y = 200.457, z = -24.236 }, rot = { x = 0.000, y = 120.723, z = 0.000 }, level = 19, drop_tag = "史莱姆", area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 5, shape = RegionShape.SPHERE, radius = 5, pos = { x = 732.559, y = 200.450, z = -22.824 }, area_id = 9 }
}

-- 触发器
triggers = {
	{ config_id = 1000005, name = "ENTER_REGION_5", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_5" }
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
		monsters = { 13, 14, 15 },
		gadgets = { },
		regions = { 5 },
		triggers = { "ENTER_REGION_5" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ENTER_REGION_5(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 11, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 12, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end