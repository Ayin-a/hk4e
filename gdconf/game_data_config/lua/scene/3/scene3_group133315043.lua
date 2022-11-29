-- 基础信息
local base_info = {
	group_id = 133315043
}

-- Trigger变量
local defs = {
	small_region_id = 43003,
	big_region_id = 43005,
	group_id = 133315043,
	watcher_region_id = 43006
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 43001, monster_id = 26020301, pos = { x = 44.549, y = 248.805, z = 2126.452 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 60203 }, pose_id = 1, area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 43002, gadget_id = 70210106, pos = { x = 48.530, y = 248.872, z = 2122.358 }, rot = { x = 0.000, y = 222.905, z = 0.000 }, level = 26, drop_tag = "掣电树", showcutscene = true, persistent = true, boss_chest = {monster_config_id=43001, resin=40, life_time=600, take_num=100}, area_id = 20 }
}

-- 区域
regions = {
	{ config_id = 43003, shape = RegionShape.SPHERE, radius = 30, pos = { x = 44.773, y = 248.844, z = 2126.318 }, area_id = 20 },
	{ config_id = 43005, shape = RegionShape.SPHERE, radius = 35, pos = { x = 44.773, y = 248.844, z = 2126.318 }, area_id = 20 },
	{ config_id = 43006, shape = RegionShape.SPHERE, radius = 55, pos = { x = 44.773, y = 248.844, z = 2126.318 }, area_id = 20 }
}

-- 触发器
triggers = {
	{ config_id = 1043004, name = "ANY_MONSTER_DIE_43004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_43004", action = "action_EVENT_ANY_MONSTER_DIE_43004" }
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
		monsters = { 43001 },
		gadgets = { },
		regions = { 43003, 43005, 43006 },
		triggers = { "ANY_MONSTER_DIE_43004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_43004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_43004(context, evt)
	-- 创建id为43002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 43002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

require "V3_0/Activity_WorldBoss"