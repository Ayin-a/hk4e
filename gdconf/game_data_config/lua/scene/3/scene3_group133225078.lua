-- 基础信息
local base_info = {
	group_id = 133225078
}

-- DEFS_MISCS
defs = {
        group_id = 133225078,
       questList = {7216719,7216619,7217226,7217320},           --按天填入完成的任务ID
        chestList = {78004,78005,78006},        --按Suite组填入每组Suite完成时打开的宝箱ID
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 78001, monster_id = 21010401, pos = { x = -6172.063, y = 222.159, z = -2469.876 }, rot = { x = 0.000, y = 159.885, z = 0.000 }, level = 33, drop_tag = "远程丘丘人", disableWander = true, climate_area_id = 7, area_id = 18 },
	{ config_id = 78014, monster_id = 21010401, pos = { x = -6166.020, y = 223.087, z = -2447.961 }, rot = { x = 0.000, y = 4.862, z = 0.000 }, level = 33, drop_tag = "远程丘丘人", disableWander = true, climate_area_id = 7, area_id = 18 },
	{ config_id = 78015, monster_id = 21010401, pos = { x = -6170.309, y = 222.857, z = -2442.382 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "远程丘丘人", disableWander = true, climate_area_id = 7, area_id = 18 },
	{ config_id = 78016, monster_id = 21010401, pos = { x = -6168.746, y = 223.555, z = -2452.719 }, rot = { x = 0.000, y = 154.107, z = 0.000 }, level = 33, drop_tag = "远程丘丘人", disableWander = true, climate_area_id = 7, area_id = 18 },
	{ config_id = 78017, monster_id = 21010101, pos = { x = -6171.135, y = 223.294, z = -2446.711 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "丘丘人", climate_area_id = 7, area_id = 18 },
	{ config_id = 78018, monster_id = 21010401, pos = { x = -6177.455, y = 222.396, z = -2471.420 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "远程丘丘人", disableWander = true, climate_area_id = 7, area_id = 18 },
	{ config_id = 78019, monster_id = 21010401, pos = { x = -6178.690, y = 220.183, z = -2476.246 }, rot = { x = 0.000, y = 70.887, z = 0.000 }, level = 33, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9016, climate_area_id = 7, area_id = 18 },
	{ config_id = 78020, monster_id = 21010101, pos = { x = -6174.677, y = 219.330, z = -2476.770 }, rot = { x = 0.000, y = 348.218, z = 0.000 }, level = 33, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, climate_area_id = 7, area_id = 18 },
	{ config_id = 78025, monster_id = 22040201, pos = { x = -6178.313, y = 223.859, z = -2455.196 }, rot = { x = 0.000, y = 83.969, z = 0.000 }, level = 33, drop_tag = "兽境幼兽", disableWander = true, pose_id = 101, climate_area_id = 7, area_id = 18 },
	{ config_id = 78027, monster_id = 22050201, pos = { x = -6181.837, y = 224.808, z = -2449.409 }, rot = { x = 0.000, y = 54.160, z = 0.000 }, level = 33, drop_tag = "兽境猎犬", disableWander = true, pose_id = 101, climate_area_id = 7, area_id = 18 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 78002, gadget_id = 70710078, pos = { x = -6178.979, y = 224.598, z = -2447.294 }, rot = { x = 0.000, y = 55.069, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 78003, gadget_id = 70310001, pos = { x = -6182.594, y = 221.784, z = -2472.479 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 18 },
	{ config_id = 78004, gadget_id = 70211002, pos = { x = -6166.624, y = 223.278, z = -2450.859 }, rot = { x = 359.776, y = 295.763, z = 353.715 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 78005, gadget_id = 70211151, pos = { x = -6180.494, y = 220.907, z = -2475.569 }, rot = { x = 357.717, y = 236.272, z = 18.412 }, level = 26, chest_drop_id = 21910015, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 78006, gadget_id = 70211151, pos = { x = -6177.195, y = 223.823, z = -2452.784 }, rot = { x = 346.355, y = 280.463, z = 5.254 }, level = 26, chest_drop_id = 21910016, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 78010, gadget_id = 70300086, pos = { x = -6163.789, y = 221.793, z = -2447.758 }, rot = { x = 10.207, y = 0.000, z = 343.217 }, level = 33, area_id = 18 },
	{ config_id = 78011, gadget_id = 70300086, pos = { x = -6165.752, y = 220.358, z = -2453.918 }, rot = { x = 348.174, y = 34.469, z = 354.320 }, level = 33, area_id = 18 },
	{ config_id = 78012, gadget_id = 70300086, pos = { x = -6174.543, y = 221.626, z = -2452.506 }, rot = { x = 342.629, y = 32.582, z = 18.473 }, level = 33, area_id = 18 },
	{ config_id = 78013, gadget_id = 70310006, pos = { x = -6169.425, y = 223.390, z = -2449.650 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 78021, gadget_id = 70710078, pos = { x = -6175.681, y = 223.469, z = -2454.262 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 78022, gadget_id = 70710078, pos = { x = -6171.062, y = 223.282, z = -2447.354 }, rot = { x = 0.000, y = 354.114, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 78023, gadget_id = 70710078, pos = { x = -6172.290, y = 222.808, z = -2455.846 }, rot = { x = 0.000, y = 298.277, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 78028, gadget_id = 70310001, pos = { x = -6167.772, y = 220.558, z = -2470.436 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 18 },
	{ config_id = 78029, gadget_id = 70310001, pos = { x = -6171.832, y = 223.090, z = -2444.256 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1078007, name = "ANY_MONSTER_DIE_78007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_78007", action = "action_EVENT_ANY_MONSTER_DIE_78007" },
	{ config_id = 1078008, name = "ANY_MONSTER_DIE_78008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_78008", action = "action_EVENT_ANY_MONSTER_DIE_78008" },
	{ config_id = 1078009, name = "ANY_MONSTER_DIE_78009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_78009", action = "action_EVENT_ANY_MONSTER_DIE_78009" }
}

-- 变量
variables = {
	{ config_id = 1, name = "chestState", value = 0, no_refresh = true },
	{ config_id = 2, name = "suiteBySeq", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 78026, monster_id = 22040201, pos = { x = -6182.487, y = 227.437, z = -2451.437 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "兽境幼兽", pose_id = 101, climate_area_id = 7, area_id = 18 }
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
		monsters = { 78014, 78015, 78016, 78017 },
		gadgets = { 78003, 78004, 78010, 78011, 78012, 78013, 78028, 78029 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_78007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 78001, 78018, 78019, 78020 },
		gadgets = { 78003, 78005, 78010, 78011, 78012, 78028, 78029 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_78008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 78025, 78027 },
		gadgets = { 78002, 78003, 78006, 78010, 78011, 78012, 78021, 78022, 78023, 78028, 78029 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_78009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_78007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_78007(context, evt)
	-- 将configid为 78004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 78004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_78008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_78008(context, evt)
	-- 将configid为 78005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 78005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_78009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_78009(context, evt)
	-- 将configid为 78006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 78006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V2_2/DayFinishSuite"