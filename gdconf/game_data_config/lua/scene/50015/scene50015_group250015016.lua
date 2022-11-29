-- 基础信息
local base_info = {
	group_id = 250015016
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 16001, monster_id = 28040101, pos = { x = -61.430, y = 4.600, z = -132.965 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 16002, monster_id = 28040101, pos = { x = -62.731, y = 4.600, z = -121.725 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 16003, monster_id = 28040101, pos = { x = -61.857, y = 4.600, z = -112.907 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 16004, monster_id = 28040101, pos = { x = -50.174, y = 4.600, z = -138.554 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 16005, monster_id = 28040101, pos = { x = -37.329, y = 4.600, z = -129.751 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 16006, monster_id = 28040101, pos = { x = -54.717, y = 4.600, z = -124.050 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 16007, monster_id = 28040101, pos = { x = -56.760, y = 4.600, z = -109.806 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 16008, monster_id = 28040101, pos = { x = -48.944, y = 4.600, z = -105.876 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 16009, monster_id = 28040101, pos = { x = -40.020, y = 4.600, z = -108.027 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 16010, monster_id = 28040101, pos = { x = -35.715, y = 4.600, z = -116.712 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 16011, monster_id = 28040103, pos = { x = -47.690, y = 4.600, z = -118.987 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
	{ config_id = 16014, npc_id = 20032, pos = { x = -30.500, y = 4.800, z = -109.886 }, rot = { x = 0.000, y = 258.863, z = 0.000 } }
}

-- 装置
gadgets = {
	{ config_id = 16012, gadget_id = 70380001, pos = { x = -50.313, y = 3.922, z = -125.428 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 16013, shape = RegionShape.SPHERE, radius = 5, pos = { x = -50.631, y = 4.600, z = -125.853 } }
}

-- 触发器
triggers = {
	{ config_id = 1016013, name = "ENTER_REGION_16013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_16013", action = "action_EVENT_ENTER_REGION_16013", forbid_guest = false }
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
		monsters = { 16001, 16002, 16003, 16004, 16005, 16006, 16007, 16008, 16009, 16010, 16011 },
		gadgets = { 16012 },
		regions = { 16013 },
		triggers = { "ENTER_REGION_16013" },
		npcs = { 16014 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_16013(context, evt)
	if evt.param1 ~= 16013 then return false end
	
	if 16011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_16013(context, evt)
	-- 180号挑战,duration内击杀kill_sum的怪物
	if 0 ~= ScriptLib.ActiveChallenge(context, 180, 180, 120, 250015016, 11, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : challenge_KilMonster_InTime")
	  return -1
	end
	
	return 0
end