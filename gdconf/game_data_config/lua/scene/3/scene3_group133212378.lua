-- 基础信息
local base_info = {
	group_id = 133212378
}

-- Trigger变量
local defs = {
	inner_region = 378006,
	outer_region = 378006,
	related_region = 378006,
	group_id = 133212378
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 378001, monster_id = 25090101, pos = { x = -3941.052, y = 261.486, z = -2339.816 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, pose_id = 1, area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 378002, gadget_id = 70210106, pos = { x = -3937.224, y = 261.553, z = -2344.111 }, rot = { x = 0.000, y = 342.291, z = 0.000 }, level = 26, drop_tag = "魔偶剑鬼", showcutscene = true, persistent = true, boss_chest = {monster_config_id=378001, resin=40, life_time=600, take_num=100}, area_id = 13 }
}

-- 区域
regions = {
	{ config_id = 378006, shape = RegionShape.SPHERE, radius = 35, pos = { x = -3941.947, y = 261.485, z = -2339.656 }, area_id = 13 }
}

-- 触发器
triggers = {
	{ config_id = 1378003, name = "ANY_MONSTER_DIE_378003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_378003", action = "action_EVENT_ANY_MONSTER_DIE_378003" }
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
		monsters = { 378001 },
		gadgets = { },
		regions = { 378006 },
		triggers = { "ANY_MONSTER_DIE_378003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_378003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_378003(context, evt)
	-- 创建id为378002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 378002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

require "V2_0/SetPerformanceOptimizationWithRegion_V2.0"