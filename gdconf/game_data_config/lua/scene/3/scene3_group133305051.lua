-- 基础信息
local base_info = {
	group_id = 133305051
}

-- Trigger变量
local defs = {
	inner_region = 51003,
	outer_region = 51003,
	related_region = 51003,
	group_id = 133305051
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 51001, monster_id = 20040701, pos = { x = -2438.917, y = 239.358, z = 3899.258 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 51002, gadget_id = 70210106, pos = { x = -2438.892, y = 239.355, z = 3895.092 }, rot = { x = 0.000, y = 357.941, z = 0.000 }, level = 26, drop_tag = "无相之草", showcutscene = true, persistent = true, boss_chest = {monster_config_id=51001, resin=40, life_time=600, take_num=100}, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1051004, name = "ANY_MONSTER_DIE_51004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_51004", action = "action_EVENT_ANY_MONSTER_DIE_51004" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	regions = {
		{ config_id = 51003, shape = RegionShape.SPHERE, radius = 35, pos = { x = -2438.917, y = 239.358, z = 3899.258 }, area_id = 26 }
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
		monsters = { 51001 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_51004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_51004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_51004(context, evt)
	-- 创建id为51002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 51002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

require "V2_7/BW_NearBossAuthorityChange"