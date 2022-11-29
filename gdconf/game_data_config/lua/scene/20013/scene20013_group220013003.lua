-- 基础信息
local base_info = {
	group_id = 220013003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3001, monster_id = 22010101, pos = { x = 343.219, y = -18.854, z = 343.315 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3002, monster_id = 21010701, pos = { x = 352.256, y = -19.046, z = 331.748 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3003, monster_id = 21010701, pos = { x = 342.960, y = -18.372, z = 331.960 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3004, monster_id = 21010701, pos = { x = 333.905, y = -19.156, z = 331.680 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3005, monster_id = 20011201, pos = { x = 350.913, y = -18.853, z = 342.873 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3006, monster_id = 20011201, pos = { x = 336.941, y = -18.854, z = 349.753 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3007, monster_id = 22010201, pos = { x = 343.208, y = -18.854, z = 343.559 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3008, monster_id = 20010801, pos = { x = 350.015, y = -18.853, z = 340.226 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3009, monster_id = 20010801, pos = { x = 337.221, y = -18.854, z = 347.722 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3010, monster_id = 21010401, pos = { x = 358.074, y = -14.159, z = 336.311 }, rot = { x = 0.000, y = 327.900, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3011, monster_id = 21010401, pos = { x = 358.367, y = -16.914, z = 339.406 }, rot = { x = 0.000, y = 323.010, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3012, monster_id = 20010601, pos = { x = 347.237, y = -18.854, z = 342.386 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3013, monster_id = 20010701, pos = { x = 337.808, y = -18.853, z = 343.417 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3014, monster_id = 20010501, pos = { x = 348.065, y = -18.853, z = 348.263 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3015, monster_id = 20010501, pos = { x = 336.519, y = -18.853, z = 338.330 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3016, gadget_id = 70350003, pos = { x = 353.177, y = -18.581, z = 322.583 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3017, gadget_id = 70350003, pos = { x = 343.226, y = -18.422, z = 322.607 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3018, gadget_id = 70350003, pos = { x = 333.348, y = -18.482, z = 322.648 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3019, gadget_id = 70220005, pos = { x = 357.400, y = -19.390, z = 350.482 }, rot = { x = 0.000, y = 29.704, z = 0.000 }, level = 1 },
	{ config_id = 3020, gadget_id = 70220005, pos = { x = 360.466, y = -14.283, z = 336.726 }, rot = { x = 0.000, y = 146.296, z = 0.000 }, level = 1 },
	{ config_id = 3021, gadget_id = 70211011, pos = { x = 366.096, y = -14.284, z = 332.570 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, drop_tag = "战斗中级蒙德", isOneoff = true },
	{ config_id = 3022, gadget_id = 70220004, pos = { x = 357.327, y = -19.277, z = 346.420 }, rot = { x = 0.000, y = 119.197, z = 0.000 }, level = 3 },
	{ config_id = 3023, gadget_id = 70220004, pos = { x = 358.263, y = -16.894, z = 344.400 }, rot = { x = 0.000, y = 130.992, z = 0.000 }, level = 3 },
	{ config_id = 3024, gadget_id = 70220004, pos = { x = 358.216, y = -16.893, z = 340.838 }, rot = { x = 0.000, y = 339.018, z = 0.000 }, level = 3 },
	{ config_id = 3025, gadget_id = 70220004, pos = { x = 357.898, y = -16.894, z = 338.435 }, rot = { x = 0.000, y = 266.014, z = 0.000 }, level = 3 },
	{ config_id = 3026, gadget_id = 70220004, pos = { x = 357.903, y = -14.283, z = 337.276 }, rot = { x = 0.000, y = 91.746, z = 0.000 }, level = 3 },
	{ config_id = 3027, gadget_id = 70220005, pos = { x = 357.264, y = -19.277, z = 345.523 }, rot = { x = 0.000, y = 21.325, z = 0.000 }, level = 1 },
	{ config_id = 3028, gadget_id = 70310001, pos = { x = 361.966, y = -14.283, z = 336.545 }, rot = { x = 0.000, y = 17.777, z = 0.000 }, level = 1 },
	{ config_id = 3029, gadget_id = 70310001, pos = { x = 358.560, y = -16.894, z = 354.601 }, rot = { x = 0.000, y = 17.777, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 3030, gadget_id = 70310001, pos = { x = 358.590, y = -16.894, z = 350.230 }, rot = { x = 0.000, y = 17.777, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 3031, gadget_id = 70310001, pos = { x = 358.555, y = -16.894, z = 345.238 }, rot = { x = 0.000, y = 17.777, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 3032, gadget_id = 70310001, pos = { x = 358.686, y = -16.894, z = 340.267 }, rot = { x = 0.000, y = 17.777, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 3033, gadget_id = 70310001, pos = { x = 358.748, y = -14.284, z = 335.225 }, rot = { x = 0.000, y = 17.777, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 3034, gadget_id = 70310001, pos = { x = 358.758, y = -14.284, z = 330.217 }, rot = { x = 0.000, y = 17.777, z = 0.000 }, level = 1, state = GadgetState.GearStart }
}

-- 区域
regions = {
	{ config_id = 7, shape = RegionShape.SPHERE, radius = 49.11, pos = { x = 342.548, y = -18.854, z = 314.996 } }
}

-- 触发器
triggers = {
	{ config_id = 1000006, name = "ANY_MONSTER_DIE_6", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6", action = "action_EVENT_ANY_MONSTER_DIE_6" },
	{ config_id = 1000007, name = "ENTER_REGION_7", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_7", action = "action_EVENT_ENTER_REGION_7", trigger_count = 0, forbid_guest = false }
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
	rand_suite = true
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suites = {
	{
		-- suite_id = 1,
		-- description = suite_1,
		monsters = { 3001, 3002, 3003, 3004, 3005, 3006 },
		gadgets = { 3016, 3017, 3018, 3021, 3028 },
		regions = { 7 },
		triggers = { "ANY_MONSTER_DIE_6", "ENTER_REGION_7" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 3007, 3008, 3009, 3010, 3011 },
		gadgets = { 3016, 3017, 3018, 3021, 3022, 3023, 3024, 3025, 3026, 3027, 3028 },
		regions = { 7 },
		triggers = { "ANY_MONSTER_DIE_6", "ENTER_REGION_7" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 3012, 3013, 3014, 3015 },
		gadgets = { 3016, 3017, 3018, 3021, 3028 },
		regions = { 7 },
		triggers = { "ANY_MONSTER_DIE_6", "ENTER_REGION_7" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_6(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_6(context, evt)
	-- 将configid为 3016 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3016, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 3017 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3017, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 3018 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3018, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_7(context, evt)
	if evt.param1 ~= 7 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_7(context, evt)
	-- 将configid为 8 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 9 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 9, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 10 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 10, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end