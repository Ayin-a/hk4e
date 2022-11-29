-- 基础信息
local base_info = {
	group_id = 133304253
}

-- Trigger变量
local defs = {
	inner_region = 253003,
	outer_region = 253003,
	related_region = 253003,
	group_id = 133304253,
	bossConfigId = 253001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 253001, monster_id = 24030301, pos = { x = -1336.454, y = 174.267, z = 2109.931 }, rot = { x = 0.000, y = 37.149, z = 0.000 }, level = 36, drop_id = 1000100, pose_id = 101, area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 253002, gadget_id = 70210106, pos = { x = -1332.626, y = 174.334, z = 2105.636 }, rot = { x = 0.000, y = 342.291, z = 0.000 }, level = 26, drop_tag = "兆载永劫龙兽", showcutscene = true, persistent = true, boss_chest = {monster_config_id=253001, resin=40, life_time=600, take_num=100}, area_id = 21 }
}

-- 区域
regions = {
	{ config_id = 253003, shape = RegionShape.SPHERE, radius = 35, pos = { x = -1336.229, y = 174.268, z = 2109.797 }, area_id = 21, vision_type_list = { 33040003 } }
}

-- 触发器
triggers = {
	{ config_id = 1253004, name = "ANY_MONSTER_DIE_253004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_253004", action = "action_EVENT_ANY_MONSTER_DIE_253004" }
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
		monsters = { 253001 },
		gadgets = { },
		regions = { 253003 },
		triggers = { "ANY_MONSTER_DIE_253004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_253004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_253004(context, evt)
	-- 创建id为253002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 253002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

require "V2_0/SetPerformanceOptimizationWithRegion_V2.0"
require "V2_7/BW_NearBossAuthorityChange"