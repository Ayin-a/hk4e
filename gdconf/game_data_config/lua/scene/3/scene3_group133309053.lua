-- 基础信息
local base_info = {
	group_id = 133309053
}

-- Trigger变量
local defs = {
	inner_region = 53003,
	outer_region = 53003,
	related_region = 53003,
	group_id = 133309053,
	bossConfigId = 53001
}

-- DEFS_MISCS
local BossConfigID = 53001

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 53001, monster_id = 24050101, pos = { x = -2787.090, y = 144.966, z = 5278.002 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 36, drop_id = 1000100, pose_id = 1, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 53002, gadget_id = 70210106, pos = { x = -2787.094, y = 145.045, z = 5284.615 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 26, drop_tag = "半永恒统辖矩阵", showcutscene = true, persistent = true, boss_chest = {monster_config_id=53001, resin=40, life_time=600, take_num=100}, area_id = 27 }
}

-- 区域
regions = {
	{ config_id = 53003, shape = RegionShape.POLYGON, pos = { x = -2787.198, y = 152.500, z = 5277.934 }, height = 45.000, point_array = { { x = -2787.078, y = 5315.821 }, { x = -2749.377, y = 5277.726 }, { x = -2787.142, y = 5240.046 }, { x = -2825.019, y = 5277.911 } }, area_id = 27, vision_type_list = { 33090020 } }
}

-- 触发器
triggers = {
	{ config_id = 1053004, name = "ANY_MONSTER_DIE_53004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_53004", action = "action_EVENT_ANY_MONSTER_DIE_53004" }
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
		monsters = { 53001 },
		gadgets = { },
		regions = { 53003 },
		triggers = { "ANY_MONSTER_DIE_53004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_53004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_53004(context, evt)
	-- 创建id为53002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 53002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

require "V2_0/SetPerformanceOptimizationWithRegion_V3.0"
require "V2_7/BW_NearBossAuthorityChange"
require "V3_1/ResetBoss"