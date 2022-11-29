-- 基础信息
local base_info = {
	group_id = 133210237
}

-- Trigger变量
local defs = {
	inner_region = 237003,
	outer_region = 237003,
	related_region = 237003,
	group_id = 133210237
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 237001, monster_id = 20040401, pos = { x = -3550.104, y = 116.858, z = -965.675 }, rot = { x = 0.000, y = 339.169, z = 0.000 }, level = 36, drop_id = 1000100, area_id = 17 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 237005, gadget_id = 70210106, pos = { x = -3550.104, y = 116.858, z = -965.675 }, rot = { x = 0.000, y = 302.759, z = 0.000 }, level = 26, drop_tag = "无相之水", persistent = true, boss_chest = {monster_config_id=237001, resin=40, life_time=600, take_num=100}, area_id = 17 },
	{ config_id = 237006, gadget_id = 70360172, pos = { x = -3550.185, y = 116.855, z = -965.428 }, rot = { x = 0.000, y = 23.141, z = 0.000 }, level = 30, mark_flag = 1, area_id = 17 },
	{ config_id = 237007, gadget_id = 70360171, pos = { x = -3571.100, y = 116.910, z = -944.508 }, rot = { x = 0.000, y = 133.941, z = 0.000 }, level = 30, mark_flag = 1, area_id = 17 },
	{ config_id = 237008, gadget_id = 70360171, pos = { x = -3543.359, y = 116.760, z = -936.899 }, rot = { x = 0.000, y = 188.967, z = 0.000 }, level = 30, mark_flag = 1, area_id = 17 },
	{ config_id = 237009, gadget_id = 70360171, pos = { x = -3579.347, y = 116.882, z = -970.784 }, rot = { x = 0.000, y = 79.860, z = 0.000 }, level = 30, mark_flag = 1, area_id = 17 },
	{ config_id = 237010, gadget_id = 70360171, pos = { x = -3558.138, y = 116.882, z = -994.011 }, rot = { x = 0.000, y = 18.157, z = 0.000 }, level = 30, mark_flag = 1, area_id = 17 },
	{ config_id = 237011, gadget_id = 70360171, pos = { x = -3528.650, y = 116.754, z = -986.020 }, rot = { x = 0.000, y = 314.071, z = 0.000 }, level = 30, mark_flag = 1, area_id = 17 },
	{ config_id = 237012, gadget_id = 70360171, pos = { x = -3521.330, y = 116.784, z = -959.050 }, rot = { x = 0.000, y = 260.578, z = 0.000 }, level = 30, mark_flag = 1, area_id = 17 }
}

-- 区域
regions = {
	{ config_id = 237003, shape = RegionShape.POLYGON, pos = { x = -3562.144, y = 137.655, z = -966.453 }, height = 84.690, point_array = { { x = -3586.472, y = -944.425 }, { x = -3602.124, y = -952.835 }, { x = -3608.338, y = -967.221 }, { x = -3600.491, y = -981.505 }, { x = -3561.319, y = -1000.151 }, { x = -3539.484, y = -997.351 }, { x = -3526.973, y = -986.637 }, { x = -3518.147, y = -972.489 }, { x = -3515.949, y = -957.276 }, { x = -3529.774, y = -941.291 }, { x = -3542.688, y = -935.327 }, { x = -3561.959, y = -932.755 } }, area_id = 17 }
}

-- 触发器
triggers = {
	{ config_id = 1237002, name = "ANY_MONSTER_DIE_237002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_237002", action = "action_EVENT_ANY_MONSTER_DIE_237002" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	regions = {
		{ config_id = 237004, shape = RegionShape.SPHERE, radius = 45, pos = { x = -3550.104, y = 116.858, z = -965.675 }, area_id = 17 }
	},
	triggers = {
		{ config_id = 1237004, name = "LEAVE_REGION_237004", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_237004", action = "action_EVENT_LEAVE_REGION_237004", trigger_count = 0, forbid_guest = false }
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
		monsters = { 237001 },
		gadgets = { 237006, 237007, 237008, 237009, 237010, 237011, 237012 },
		regions = { 237003 },
		triggers = { "ANY_MONSTER_DIE_237002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_237002(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_237002(context, evt)
	-- 创建id为237005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 237005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 237006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 237006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 237007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 237007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 237008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 237008, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 237009 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 237009, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 237010 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 237010, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 237011 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 237011, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 237012 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 237012, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V2_0/SetPerformanceOptimizationWithRegion_V2.0"