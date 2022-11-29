-- 基础信息
local base_info = {
	group_id = 220103003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3001, monster_id = 22010101, pos = { x = -115.966, y = -12.486, z = 124.851 }, rot = { x = 0.000, y = 315.000, z = 0.000 }, level = 1, pose_id = 9013 },
	{ config_id = 3002, monster_id = 21010201, pos = { x = -121.789, y = -12.468, z = 130.907 }, rot = { x = 0.000, y = 135.000, z = 0.000 }, level = 1, pose_id = 9012 },
	{ config_id = 3003, monster_id = 21010201, pos = { x = -118.868, y = -12.495, z = 132.367 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, pose_id = 9012 },
	{ config_id = 3004, monster_id = 21010201, pos = { x = -123.219, y = -12.469, z = 126.096 }, rot = { x = 0.000, y = 65.000, z = 0.000 }, level = 1, pose_id = 9012 },
	{ config_id = 3005, monster_id = 21010201, pos = { x = -115.681, y = -12.486, z = 130.898 }, rot = { x = 0.000, y = 235.000, z = 0.000 }, level = 1, pose_id = 9012 },
	{ config_id = 3040, monster_id = 21010502, pos = { x = -133.635, y = -12.495, z = 124.204 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3006, gadget_id = 70350033, pos = { x = -128.424, y = -12.471, z = 127.701 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 3007, gadget_id = 70300107, pos = { x = -118.951, y = -12.465, z = 128.099 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 3009, gadget_id = 70220010, pos = { x = -118.224, y = -12.484, z = 118.392 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3010, gadget_id = 70220010, pos = { x = -119.141, y = -12.484, z = 138.050 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 3011, gadget_id = 70310001, pos = { x = -138.239, y = -12.484, z = 124.424 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3012, gadget_id = 70220010, pos = { x = -132.219, y = -12.483, z = 134.820 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3013, gadget_id = 70350003, pos = { x = -128.498, y = -12.394, z = 112.040 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3014, gadget_id = 70220013, pos = { x = -118.310, y = -12.480, z = 114.390 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3015, gadget_id = 70220026, pos = { x = -116.635, y = -12.484, z = 114.550 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1 },
	{ config_id = 3016, gadget_id = 70220026, pos = { x = -119.932, y = -12.484, z = 114.471 }, rot = { x = 0.000, y = 300.000, z = 0.000 }, level = 1 },
	{ config_id = 3017, gadget_id = 70220014, pos = { x = -115.745, y = -12.484, z = 139.286 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3018, gadget_id = 70220014, pos = { x = -117.345, y = -12.484, z = 139.921 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3019, gadget_id = 70310001, pos = { x = -111.043, y = -12.565, z = 119.815 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3020, gadget_id = 70310001, pos = { x = -110.960, y = -12.484, z = 131.609 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3021, gadget_id = 70310001, pos = { x = -124.364, y = -12.483, z = 114.568 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3022, gadget_id = 70310001, pos = { x = -132.648, y = -12.525, z = 114.717 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3023, gadget_id = 70220016, pos = { x = -134.806, y = -11.585, z = 141.420 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3024, gadget_id = 70220016, pos = { x = -133.718, y = -11.585, z = 141.404 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3025, gadget_id = 70220016, pos = { x = -132.599, y = -11.585, z = 141.394 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3026, gadget_id = 70220026, pos = { x = -110.472, y = -12.483, z = 137.893 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3027, gadget_id = 70220026, pos = { x = -127.315, y = -12.484, z = 141.381 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3028, gadget_id = 70220026, pos = { x = -125.844, y = -12.484, z = 141.492 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 1 },
	{ config_id = 3029, gadget_id = 70310001, pos = { x = -137.909, y = -12.483, z = 131.313 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3030, gadget_id = 70211101, pos = { x = -139.111, y = -12.483, z = 127.788 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 6, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true },
	{ config_id = 3031, gadget_id = 70220013, pos = { x = -140.373, y = -12.621, z = 117.505 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3032, gadget_id = 70220026, pos = { x = -140.242, y = -12.607, z = 119.217 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1 },
	{ config_id = 3034, gadget_id = 70220013, pos = { x = -139.067, y = -12.484, z = 138.590 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3035, gadget_id = 70500000, pos = { x = -139.975, y = -12.499, z = 120.134 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 2010, isOneoff = true },
	{ config_id = 3036, gadget_id = 70220026, pos = { x = -139.215, y = -12.483, z = 136.937 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3037, gadget_id = 70220026, pos = { x = -138.752, y = -12.615, z = 116.367 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3038, gadget_id = 70220025, pos = { x = -139.753, y = -12.503, z = 120.060 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3039, gadget_id = 70220025, pos = { x = -139.201, y = -12.421, z = 127.708 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3041, gadget_id = 70500000, pos = { x = -91.083, y = -15.484, z = 99.615 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 2010, isOneoff = true },
	{ config_id = 3042, gadget_id = 70900205, pos = { x = -129.884, y = -14.568, z = 132.426 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3043, gadget_id = 70500000, pos = { x = -90.404, y = -15.484, z = 99.364 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 2010, isOneoff = true },
	{ config_id = 3044, gadget_id = 70500000, pos = { x = -139.269, y = -12.645, z = 117.265 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 2010, isOneoff = true }
}

-- 区域
regions = {
	{ config_id = 3008, shape = RegionShape.CUBIC, size = { x = 5.000, y = 10.000, z = 5.000 }, pos = { x = -107.199, y = -8.982, z = 125.650 } }
}

-- 触发器
triggers = {
	{ config_id = 1003008, name = "ENTER_REGION_3008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3008", action = "action_EVENT_ENTER_REGION_3008" },
	{ config_id = 1003033, name = "ANY_MONSTER_DIE_3033", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3033", action = "action_EVENT_ANY_MONSTER_DIE_3033" }
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
		monsters = { },
		gadgets = { 3006, 3007, 3011, 3013, 3014, 3015, 3016, 3017, 3018, 3019, 3020, 3021, 3022, 3023, 3024, 3025, 3026, 3027, 3028, 3029, 3030, 3031, 3032, 3034, 3035, 3036, 3037, 3038, 3039, 3041, 3042, 3043, 3044 },
		regions = { 3008 },
		triggers = { "ENTER_REGION_3008", "ANY_MONSTER_DIE_3033" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 3001, 3002, 3003, 3004, 3005, 3040 },
		gadgets = { 3009, 3010, 3012, 3042 },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_3008(context, evt)
	if evt.param1 ~= 3008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3008(context, evt)
	-- 将configid为 3006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 3011 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3011, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 3019 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3019, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 3020 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3020, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 3021 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3021, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 3022 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3022, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3033(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3033(context, evt)
	-- 将configid为 3013 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3013, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 解锁目标8
	if 0 ~= ScriptLib.UnlockForce(context, 8) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : unlock_force")
		return -1
	end
	
	-- 解锁目标11
	if 0 ~= ScriptLib.UnlockForce(context, 11) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : unlock_force")
		return -1
	end
	
	-- 将configid为 3006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220103004, 2)
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220103002, monsters = {}, gadgets = {2010} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	return 0
end