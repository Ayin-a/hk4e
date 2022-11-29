-- 基础信息
local base_info = {
	group_id = 133220037
}

-- Trigger变量
local defs = {
	inner_region = 37002,
	outer_region = 37002,
	related_region = 37002,
	group_id = 133220037
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 37005, monster_id = 24021101, pos = { x = -2125.473, y = 141.070, z = -4465.027 }, rot = { x = 0.000, y = 261.028, z = 0.000 }, level = 36, drop_id = 1000100, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 37004, gadget_id = 70210106, pos = { x = -2130.543, y = 138.810, z = -4455.603 }, rot = { x = 0.000, y = 135.914, z = 0.000 }, level = 26, drop_tag = "恒常机关阵列", isOneoff = true, persistent = true, boss_chest = {monster_config_id=37005, resin=40, life_time=600, take_num=100}, area_id = 11 }
}

-- 区域
regions = {
	{ config_id = 37002, shape = RegionShape.SPHERE, radius = 35, pos = { x = -2125.026, y = 123.139, z = -4466.293 }, area_id = 11 }
}

-- 触发器
triggers = {
	{ config_id = 1037001, name = "ANY_MONSTER_DIE_37001", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_37001", action = "action_EVENT_ANY_MONSTER_DIE_37001" }
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
		monsters = { 37005 },
		gadgets = { },
		regions = { 37002 },
		triggers = { "ANY_MONSTER_DIE_37001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_37001(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_37001(context, evt)
	-- 创建id为37004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 37004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

require "V2_0/SetPerformanceOptimizationWithRegion_V2.0"