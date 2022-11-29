-- 基础信息
local base_info = {
	group_id = 133106203
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 203001, monster_id = 20011301, pos = { x = -284.382, y = 219.665, z = 773.768 }, rot = { x = 14.833, y = 0.582, z = 4.467 }, level = 32, drop_tag = "大史莱姆", area_id = 8 },
	{ config_id = 203003, monster_id = 20011201, pos = { x = -286.495, y = 220.091, z = 771.131 }, rot = { x = 7.883, y = 43.609, z = 13.362 }, level = 32, drop_tag = "史莱姆", area_id = 8 },
	{ config_id = 203004, monster_id = 20011201, pos = { x = -282.629, y = 220.083, z = 772.173 }, rot = { x = 13.220, y = 311.649, z = 351.880 }, level = 32, drop_tag = "史莱姆", area_id = 8 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 203005, gadget_id = 70290009, pos = { x = -280.884, y = 220.194, z = 770.990 }, rot = { x = 14.833, y = 0.582, z = 4.467 }, level = 32, area_id = 8 },
	{ config_id = 203006, gadget_id = 70500000, pos = { x = -280.884, y = 220.194, z = 770.990 }, rot = { x = 14.833, y = 0.582, z = 4.467 }, level = 32, point_type = 3005, owner = 203005, area_id = 8 },
	{ config_id = 203007, gadget_id = 70290009, pos = { x = -287.783, y = 220.545, z = 768.617 }, rot = { x = 0.383, y = 72.227, z = 15.472 }, level = 32, area_id = 8 },
	{ config_id = 203008, gadget_id = 70500000, pos = { x = -287.783, y = 220.545, z = 768.617 }, rot = { x = 0.384, y = 72.224, z = 15.472 }, level = 32, point_type = 3005, owner = 203007, area_id = 8 },
	{ config_id = 203009, gadget_id = 70290009, pos = { x = -288.835, y = 219.636, z = 772.547 }, rot = { x = 4.391, y = 269.711, z = 345.144 }, level = 32, area_id = 8 },
	{ config_id = 203010, gadget_id = 70500000, pos = { x = -288.835, y = 219.636, z = 772.547 }, rot = { x = 4.391, y = 269.711, z = 345.144 }, level = 32, point_type = 3005, owner = 203009, area_id = 8 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1203011, name = "MONSTER_BATTLE_203011", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_203011", action = "action_EVENT_MONSTER_BATTLE_203011" }
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
		monsters = { 203003, 203004 },
		gadgets = { 203005, 203006, 203007, 203008, 203009, 203010 },
		regions = { },
		triggers = { "MONSTER_BATTLE_203011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_203011(context, evt)
	if 203003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_203011(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 203001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 203002, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end