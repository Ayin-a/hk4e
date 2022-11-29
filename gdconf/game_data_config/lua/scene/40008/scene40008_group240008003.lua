-- 基础信息
local base_info = {
	group_id = 240008003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3002, monster_id = 22010101, pos = { x = 343.216, y = -11.477, z = 243.339 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 9013 },
	{ config_id = 3003, monster_id = 21010201, pos = { x = 345.782, y = -12.714, z = 252.503 }, rot = { x = 0.000, y = 180.881, z = 0.000 }, level = 1, pose_id = 9003 },
	{ config_id = 3004, monster_id = 21010201, pos = { x = 340.422, y = -12.714, z = 252.325 }, rot = { x = 0.000, y = 177.638, z = 0.000 }, level = 1, pose_id = 9003 },
	{ config_id = 3005, monster_id = 21010201, pos = { x = 345.909, y = -12.742, z = 255.541 }, rot = { x = 0.000, y = 178.637, z = 0.000 }, level = 1, pose_id = 9003 },
	{ config_id = 3006, monster_id = 21010201, pos = { x = 340.569, y = -12.742, z = 255.629 }, rot = { x = 0.000, y = 166.545, z = 0.000 }, level = 1, pose_id = 9003 },
	{ config_id = 3007, monster_id = 23030101, pos = { x = 343.257, y = -12.741, z = 263.024 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3008, monster_id = 22010201, pos = { x = 343.200, y = -12.741, z = 257.444 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 9013 },
	{ config_id = 3009, monster_id = 21010301, pos = { x = 345.873, y = -12.741, z = 255.737 }, rot = { x = 0.000, y = 315.239, z = 0.000 }, level = 1, pose_id = 9012 },
	{ config_id = 3010, monster_id = 21010301, pos = { x = 340.745, y = -12.742, z = 255.611 }, rot = { x = 0.000, y = 35.924, z = 0.000 }, level = 1, pose_id = 9012 },
	{ config_id = 3011, monster_id = 21010301, pos = { x = 345.805, y = -12.741, z = 260.517 }, rot = { x = 0.000, y = 229.603, z = 0.000 }, level = 1, pose_id = 9012 },
	{ config_id = 3012, monster_id = 21010301, pos = { x = 340.743, y = -12.741, z = 260.405 }, rot = { x = 0.000, y = 127.103, z = 0.000 }, level = 1, pose_id = 9012 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3001, gadget_id = 70350002, pos = { x = 343.335, y = -11.473, z = 240.436 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3013, gadget_id = 70350003, pos = { x = 353.284, y = -11.380, z = 291.733 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3014, gadget_id = 70350003, pos = { x = 333.254, y = -11.363, z = 291.708 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3015, gadget_id = 70350003, pos = { x = 343.309, y = -11.379, z = 291.736 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3020, gadget_id = 70220025, pos = { x = 345.825, y = -12.717, z = 255.583 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3021, gadget_id = 70220025, pos = { x = 340.448, y = -12.718, z = 255.555 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3022, gadget_id = 70220025, pos = { x = 340.459, y = -12.759, z = 253.517 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3023, gadget_id = 70220025, pos = { x = 345.663, y = -12.749, z = 253.462 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3024, gadget_id = 70310001, pos = { x = 346.294, y = -11.438, z = 243.915 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 3025, gadget_id = 70310001, pos = { x = 340.409, y = -11.443, z = 243.870 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 3026, gadget_id = 70300107, pos = { x = 343.155, y = -11.347, z = 245.023 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 3027, gadget_id = 70310001, pos = { x = 345.717, y = -12.742, z = 260.518 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 3028, gadget_id = 70310001, pos = { x = 340.906, y = -12.742, z = 260.617 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 3029, gadget_id = 70310001, pos = { x = 345.778, y = -12.742, z = 265.585 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 3030, gadget_id = 70310001, pos = { x = 340.786, y = -12.742, z = 265.543 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 3031, gadget_id = 70310001, pos = { x = 350.704, y = -12.741, z = 270.470 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 3032, gadget_id = 70310001, pos = { x = 336.029, y = -12.741, z = 270.467 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 3033, gadget_id = 70310001, pos = { x = 335.902, y = -12.742, z = 255.679 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 3034, gadget_id = 70310001, pos = { x = 350.654, y = -12.742, z = 255.657 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 3035, gadget_id = 70220010, pos = { x = 343.096, y = -12.741, z = 258.743 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3036, gadget_id = 70211021, pos = { x = 343.319, y = -12.758, z = 254.022 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 6, drop_tag = "战斗高级蒙德", isOneoff = true, persistent = true },
	{ config_id = 3038, gadget_id = 70220013, pos = { x = 325.060, y = -11.354, z = 281.800 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3039, gadget_id = 70220013, pos = { x = 326.352, y = -11.354, z = 284.371 }, rot = { x = 0.000, y = 41.108, z = 0.000 }, level = 1 },
	{ config_id = 3040, gadget_id = 70220014, pos = { x = 327.416, y = -11.354, z = 282.040 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3041, gadget_id = 70220014, pos = { x = 325.600, y = -11.354, z = 286.471 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3042, gadget_id = 70220007, pos = { x = 326.799, y = -11.354, z = 247.999 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3043, gadget_id = 70220007, pos = { x = 330.779, y = -11.354, z = 243.521 }, rot = { x = 0.000, y = 91.865, z = 0.000 }, level = 1 },
	{ config_id = 3044, gadget_id = 70211001, pos = { x = 326.533, y = -11.354, z = 243.908 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 6, drop_tag = "战斗低级蒙德", isOneoff = true, persistent = true },
	{ config_id = 3045, gadget_id = 70220025, pos = { x = 325.334, y = -11.340, z = 282.142 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3046, gadget_id = 70220025, pos = { x = 326.757, y = -11.338, z = 285.376 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 3016, shape = RegionShape.CUBIC, size = { x = 10.000, y = 8.000, z = 5.000 }, pos = { x = 353.151, y = -16.881, z = 306.710 } },
	{ config_id = 3017, shape = RegionShape.CUBIC, size = { x = 10.000, y = 8.000, z = 5.000 }, pos = { x = 343.106, y = -16.881, z = 306.746 } },
	{ config_id = 3018, shape = RegionShape.CUBIC, size = { x = 10.000, y = 8.000, z = 5.000 }, pos = { x = 333.179, y = -16.881, z = 306.775 } },
	{ config_id = 3019, shape = RegionShape.CUBIC, size = { x = 120.000, y = 8.000, z = 3.000 }, pos = { x = 343.381, y = -11.354, z = 280.959 } }
}

-- 触发器
triggers = {
	{ config_id = 1003016, name = "ENTER_REGION_3016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3016", action = "action_EVENT_ENTER_REGION_3016" },
	{ config_id = 1003017, name = "ENTER_REGION_3017", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3017", action = "action_EVENT_ENTER_REGION_3017" },
	{ config_id = 1003018, name = "ENTER_REGION_3018", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3018", action = "action_EVENT_ENTER_REGION_3018" },
	{ config_id = 1003019, name = "ENTER_REGION_3019", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3019", action = "action_EVENT_ENTER_REGION_3019" },
	{ config_id = 1003037, name = "ANY_MONSTER_DIE_3037", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3037", action = "action_EVENT_ANY_MONSTER_DIE_3037" }
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
		gadgets = { 3001, 3013, 3014, 3015, 3038, 3039, 3040, 3041, 3042, 3043, 3044, 3045, 3046 },
		regions = { 3016, 3017, 3018, 3019 },
		triggers = { "ENTER_REGION_3016", "ENTER_REGION_3017", "ENTER_REGION_3018", "ENTER_REGION_3019", "ANY_MONSTER_DIE_3037" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 挑战1水,
		monsters = { 3008, 3009, 3010, 3011, 3012 },
		gadgets = { 3031, 3032, 3033, 3034, 3035 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 挑战2雷,
		monsters = { 3007 },
		gadgets = { 3027, 3028, 3029, 3030 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 挑战3火,
		monsters = { 3002, 3003, 3004, 3005, 3006 },
		gadgets = { 3020, 3021, 3022, 3023, 3024, 3025, 3026 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 宝箱奖励,
		monsters = { },
		gadgets = { 3036 },
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
function condition_EVENT_ENTER_REGION_3016(context, evt)
	if evt.param1 ~= 3016 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3016(context, evt)
	-- 将configid为 3013 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3013, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_3017(context, evt)
	if evt.param1 ~= 3017 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3017(context, evt)
	-- 将configid为 3015 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3015, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_3018(context, evt)
	if evt.param1 ~= 3018 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3018(context, evt)
	-- 将configid为 3014 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3014, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_3019(context, evt)
	if evt.param1 ~= 3019 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3019(context, evt)
	-- 将configid为 3013 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3013, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 3014 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3014, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 3015 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3015, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3037(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240008003) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3037(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240008003, 5)
	
	return 0
end