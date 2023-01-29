-- 基础信息
local base_info = {
	group_id = 133314016
}

-- Trigger变量
local defs = {
	inner_region = 16003,
	outer_region = 16003,
	related_region = 16003,
	group_id = 133314016
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 16001, monster_id = 26130101, pos = { x = -1019.423, y = -47.425, z = 4569.429 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, pose_id = 1, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 16003, shape = RegionShape.SPHERE, radius = 35, pos = { x = -1019.514, y = -44.657, z = 4568.823 }, area_id = 32 }
}

-- 触发器
triggers = {
	{ config_id = 1016004, name = "ANY_MONSTER_DIE_16004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_16004", action = "" }
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
		monsters = { 16001 },
		gadgets = { },
		regions = { 16003 },
		triggers = { "ANY_MONSTER_DIE_16004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_16004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

require "V2_0/SetPerformanceOptimizationWithRegion_V2.0"