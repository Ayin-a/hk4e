-- 基础信息
local base_info = {
	group_id = 166001379
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 379012, monster_id = 26010201, pos = { x = 932.460, y = 764.559, z = 376.504 }, rot = { x = 0.000, y = 59.671, z = 0.000 }, level = 36, drop_tag = "骗骗花", area_id = 300 },
	{ config_id = 379013, monster_id = 20011201, pos = { x = 935.702, y = 764.599, z = 371.197 }, rot = { x = 0.000, y = 129.338, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 379001, gadget_id = 70290324, pos = { x = 952.379, y = 770.998, z = 414.387 }, rot = { x = 0.000, y = 47.036, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 379002, gadget_id = 70290347, pos = { x = 963.403, y = 771.086, z = 418.233 }, rot = { x = 0.000, y = 324.826, z = 0.000 }, level = 36, persistent = true, interact_id = 87, area_id = 300 },
	{ config_id = 379003, gadget_id = 70290323, pos = { x = 954.476, y = 771.413, z = 430.942 }, rot = { x = 16.429, y = 18.684, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 379010, gadget_id = 70290309, pos = { x = 929.782, y = 765.116, z = 379.344 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 379011, gadget_id = 70290309, pos = { x = 935.772, y = 765.585, z = 373.999 }, rot = { x = 0.000, y = 303.105, z = 0.000 }, level = 36, area_id = 300 }
}

-- 区域
regions = {
	{ config_id = 379014, shape = RegionShape.SPHERE, radius = 6, pos = { x = 932.816, y = 764.567, z = 376.501 }, area_id = 300 }
}

-- 触发器
triggers = {
	{ config_id = 1379014, name = "ENTER_REGION_379014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_379014" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 379004, gadget_id = 70500000, pos = { x = 942.322, y = 770.754, z = 394.383 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 1009, area_id = 300 },
		{ config_id = 379007, gadget_id = 70500000, pos = { x = 947.842, y = 768.473, z = 393.251 }, rot = { x = 0.635, y = 55.454, z = 319.186 }, level = 36, point_type = 1001, area_id = 300 }
	}
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
		gadgets = { 379001, 379002, 379003, 379010, 379011 },
		regions = { 379014 },
		triggers = { "ENTER_REGION_379014" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ENTER_REGION_379014(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 379012, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 379013, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end