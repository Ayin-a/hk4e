-- 基础信息
local base_info = {
	group_id = 133225126
}

-- DEFS_MISCS
defs = {
        group_id = 133225126,
        questList = {7216719,7216619,7217226,7217320},           --按天填入完成的任务ID
        chestList = {126004,126005,126006},        --按Suite组填入每组Suite完成时打开的宝箱ID
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 126001, monster_id = 21010901, pos = { x = -6159.996, y = 205.613, z = -2577.249 }, rot = { x = 0.000, y = 149.490, z = 0.000 }, level = 33, drop_tag = "远程丘丘人", disableWander = true, climate_area_id = 7, area_id = 18 },
	{ config_id = 126003, monster_id = 21010901, pos = { x = -6107.138, y = 200.441, z = -2622.014 }, rot = { x = 0.000, y = 121.372, z = 0.000 }, level = 33, drop_tag = "远程丘丘人", disableWander = true, climate_area_id = 7, area_id = 18 },
	{ config_id = 126010, monster_id = 21010901, pos = { x = -6156.311, y = 205.464, z = -2577.372 }, rot = { x = 0.000, y = 183.886, z = 0.000 }, level = 33, drop_tag = "远程丘丘人", disableWander = true, climate_area_id = 7, area_id = 18 },
	{ config_id = 126011, monster_id = 21020701, pos = { x = -6150.250, y = 200.166, z = -2590.425 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "丘丘暴徒", climate_area_id = 7, area_id = 18 },
	{ config_id = 126012, monster_id = 21010101, pos = { x = -6141.170, y = 200.477, z = -2586.217 }, rot = { x = 0.000, y = 283.551, z = 0.000 }, level = 33, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, climate_area_id = 7, area_id = 18 },
	{ config_id = 126013, monster_id = 21010101, pos = { x = -6140.172, y = 201.165, z = -2599.843 }, rot = { x = 0.000, y = 300.445, z = 0.000 }, level = 33, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, climate_area_id = 7, area_id = 18 },
	{ config_id = 126018, monster_id = 21010901, pos = { x = -6186.161, y = 239.381, z = -2618.297 }, rot = { x = 0.000, y = 328.285, z = 0.000 }, level = 33, drop_tag = "远程丘丘人", disableWander = true, climate_area_id = 7, area_id = 18 },
	{ config_id = 126019, monster_id = 21010901, pos = { x = -6176.229, y = 238.036, z = -2614.546 }, rot = { x = 0.000, y = 308.523, z = 0.000 }, level = 33, drop_tag = "远程丘丘人", disableWander = true, climate_area_id = 7, area_id = 18 },
	{ config_id = 126020, monster_id = 21020701, pos = { x = -6182.150, y = 236.581, z = -2614.836 }, rot = { x = 0.000, y = 159.052, z = 0.000 }, level = 33, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, climate_area_id = 7, area_id = 18 },
	{ config_id = 126021, monster_id = 21010101, pos = { x = -6181.169, y = 236.301, z = -2611.171 }, rot = { x = 0.000, y = 244.738, z = 0.000 }, level = 33, drop_tag = "丘丘人", disableWander = true, pose_id = 9002, climate_area_id = 7, area_id = 18 },
	{ config_id = 126022, monster_id = 21010101, pos = { x = -6183.772, y = 236.588, z = -2616.141 }, rot = { x = 0.000, y = 199.376, z = 0.000 }, level = 33, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, climate_area_id = 7, area_id = 18 },
	{ config_id = 126024, monster_id = 21010901, pos = { x = -6130.032, y = 203.421, z = -2609.422 }, rot = { x = 0.000, y = 327.947, z = 0.000 }, level = 33, drop_tag = "远程丘丘人", disableWander = true, climate_area_id = 7, area_id = 18 },
	{ config_id = 126025, monster_id = 21020701, pos = { x = -6111.081, y = 200.081, z = -2627.173 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "丘丘暴徒", climate_area_id = 7, area_id = 18 },
	{ config_id = 126026, monster_id = 21010101, pos = { x = -6114.373, y = 200.166, z = -2613.580 }, rot = { x = 0.000, y = 283.551, z = 0.000 }, level = 33, drop_tag = "丘丘人", disableWander = true, pose_id = 9002, climate_area_id = 7, area_id = 18 },
	{ config_id = 126027, monster_id = 21010101, pos = { x = -6118.226, y = 200.795, z = -2615.791 }, rot = { x = 0.000, y = 340.953, z = 0.000 }, level = 33, drop_tag = "丘丘人", disableWander = true, pose_id = 9002, climate_area_id = 7, area_id = 18 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 126002, gadget_id = 70310001, pos = { x = -6187.473, y = 236.843, z = -2617.263 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 18 },
	{ config_id = 126004, gadget_id = 70211002, pos = { x = -6154.025, y = 209.998, z = -2575.871 }, rot = { x = 0.000, y = 155.825, z = 0.000 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 126005, gadget_id = 70211151, pos = { x = -6183.788, y = 236.419, z = -2607.727 }, rot = { x = 355.048, y = 171.609, z = 358.313 }, level = 26, chest_drop_id = 21910033, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 126006, gadget_id = 70211151, pos = { x = -6115.515, y = 200.805, z = -2617.071 }, rot = { x = 359.848, y = 311.159, z = 354.469 }, level = 26, chest_drop_id = 21910035, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 126014, gadget_id = 70310001, pos = { x = -6153.982, y = 200.261, z = -2595.954 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 18 },
	{ config_id = 126015, gadget_id = 70310001, pos = { x = -6149.495, y = 200.255, z = -2586.498 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 18 },
	{ config_id = 126016, gadget_id = 70310001, pos = { x = -6166.442, y = 204.529, z = -2577.960 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 18 },
	{ config_id = 126017, gadget_id = 70310001, pos = { x = -6127.583, y = 200.369, z = -2609.729 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 18 },
	{ config_id = 126023, gadget_id = 70310001, pos = { x = -6178.690, y = 236.177, z = -2609.797 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 18 },
	{ config_id = 126028, gadget_id = 70310001, pos = { x = -6115.843, y = 200.570, z = -2620.380 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 18 },
	{ config_id = 126029, gadget_id = 70310001, pos = { x = -6112.735, y = 200.127, z = -2604.990 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1126007, name = "ANY_MONSTER_DIE_126007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_126007", action = "action_EVENT_ANY_MONSTER_DIE_126007" },
	{ config_id = 1126008, name = "ANY_MONSTER_DIE_126008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_126008", action = "action_EVENT_ANY_MONSTER_DIE_126008" },
	{ config_id = 1126009, name = "ANY_MONSTER_DIE_126009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_126009", action = "action_EVENT_ANY_MONSTER_DIE_126009" }
}

-- 变量
variables = {
	{ config_id = 1, name = "chestState", value = 0, no_refresh = true },
	{ config_id = 2, name = "suiteBySeq", value = 0, no_refresh = true }
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
		monsters = { 126001, 126010, 126011, 126012, 126013 },
		gadgets = { 126004, 126014, 126015, 126016, 126017 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_126007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 126018, 126019, 126020, 126021, 126022 },
		gadgets = { 126002, 126005, 126014, 126015, 126016, 126017, 126023 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_126008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 126003, 126024, 126025, 126026, 126027 },
		gadgets = { 126006, 126014, 126015, 126016, 126017, 126028, 126029 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_126009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_126007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_126007(context, evt)
	-- 将configid为 126004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 126004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_126008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_126008(context, evt)
	-- 将configid为 126005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 126005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_126009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_126009(context, evt)
	-- 将configid为 126006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 126006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V2_2/DayFinishSuite"