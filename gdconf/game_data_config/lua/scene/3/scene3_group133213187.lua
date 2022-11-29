-- 基础信息
local base_info = {
	group_id = 133213187
}

-- Trigger变量
local defs = {
	inner_region = 187003,
	outer_region = 187003,
	related_region = 187003,
	group_id = 133213187
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 187001, monster_id = 20040601, pos = { x = -3040.190, y = 200.107, z = -3178.668 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 187002, gadget_id = 70210106, pos = { x = -3036.362, y = 200.174, z = -3182.963 }, rot = { x = 0.000, y = 342.291, z = 0.000 }, level = 26, drop_tag = "无相之火", showcutscene = true, persistent = true, boss_chest = {monster_config_id=187001, resin=40, life_time=600, take_num=100}, area_id = 12 }
}

-- 区域
regions = {
	{ config_id = 187003, shape = RegionShape.SPHERE, radius = 35, pos = { x = -3039.965, y = 200.146, z = -3178.802 }, area_id = 12 }
}

-- 触发器
triggers = {
	{ config_id = 1187011, name = "ANY_MONSTER_DIE_187011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_187011", action = "action_EVENT_ANY_MONSTER_DIE_187011" }
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
		monsters = { 187001 },
		gadgets = { },
		regions = { 187003 },
		triggers = { "ANY_MONSTER_DIE_187011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_187011(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_187011(context, evt)
	-- 创建id为187002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 187002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

require "V2_0/SetPerformanceOptimizationWithRegion_V2.0"