-- 基础信息
local base_info = {
	group_id = 133225071
}

-- DEFS_MISCS
defs = {
        group_id = 133225071,
      questList = {7216719,7216619,7217226,7217320},          --按天填入完成的任务ID
        chestList = {71004,71005,71006},        --按Suite组填入每组Suite完成时打开的宝箱ID
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 71001, monster_id = 21020201, pos = { x = -6166.471, y = 201.862, z = -2829.516 }, rot = { x = 0.000, y = 47.809, z = 0.000 }, level = 33, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, climate_area_id = 7, area_id = 18 },
	{ config_id = 71003, monster_id = 21020201, pos = { x = -6197.257, y = 206.460, z = -2856.905 }, rot = { x = 0.000, y = 190.075, z = 0.000 }, level = 33, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, climate_area_id = 7, area_id = 18 },
	{ config_id = 71016, monster_id = 21010701, pos = { x = -6169.263, y = 202.310, z = -2823.887 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "丘丘人", climate_area_id = 7, area_id = 18 },
	{ config_id = 71017, monster_id = 21010701, pos = { x = -6165.280, y = 201.502, z = -2837.957 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "丘丘人", climate_area_id = 7, area_id = 18 },
	{ config_id = 71018, monster_id = 21010701, pos = { x = -6169.736, y = 201.086, z = -2831.215 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "丘丘人", climate_area_id = 7, area_id = 18 },
	{ config_id = 71019, monster_id = 21020201, pos = { x = -6197.525, y = 200.406, z = -2811.866 }, rot = { x = 0.000, y = 204.043, z = 0.000 }, level = 33, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, climate_area_id = 7, area_id = 18 },
	{ config_id = 71020, monster_id = 21010701, pos = { x = -6212.370, y = 200.057, z = -2814.533 }, rot = { x = 0.000, y = 11.871, z = 0.000 }, level = 33, drop_tag = "丘丘人", disableWander = true, pose_id = 9013, climate_area_id = 7, area_id = 18 },
	{ config_id = 71021, monster_id = 21010701, pos = { x = -6210.141, y = 200.990, z = -2822.597 }, rot = { x = 0.000, y = 205.237, z = 0.000 }, level = 33, drop_tag = "丘丘人", disableWander = true, pose_id = 9013, climate_area_id = 7, area_id = 18 },
	{ config_id = 71022, monster_id = 21010701, pos = { x = -6211.020, y = 200.278, z = -2817.668 }, rot = { x = 0.000, y = 11.871, z = 0.000 }, level = 33, drop_tag = "丘丘人", climate_area_id = 7, area_id = 18 },
	{ config_id = 71025, monster_id = 21010701, pos = { x = -6196.963, y = 205.910, z = -2860.493 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "丘丘人", disableWander = true, pose_id = 9013, climate_area_id = 7, area_id = 18 },
	{ config_id = 71026, monster_id = 21010701, pos = { x = -6190.140, y = 204.562, z = -2857.354 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "丘丘人", climate_area_id = 7, area_id = 18 },
	{ config_id = 71027, monster_id = 21010701, pos = { x = -6196.014, y = 205.945, z = -2863.954 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "丘丘人", climate_area_id = 7, area_id = 18 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 71002, gadget_id = 70300086, pos = { x = -6204.419, y = 198.711, z = -2811.920 }, rot = { x = 7.570, y = 2.312, z = 20.290 }, level = 33, area_id = 18 },
	{ config_id = 71004, gadget_id = 70211002, pos = { x = -6161.796, y = 203.553, z = -2824.361 }, rot = { x = 4.072, y = 224.144, z = 351.779 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 71005, gadget_id = 70211151, pos = { x = -6202.735, y = 200.693, z = -2811.302 }, rot = { x = 17.891, y = 163.275, z = 1.564 }, level = 26, chest_drop_id = 21910005, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 71006, gadget_id = 70211151, pos = { x = -6198.284, y = 208.504, z = -2853.620 }, rot = { x = 354.320, y = 180.918, z = 6.560 }, level = 26, chest_drop_id = 21910006, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 71010, gadget_id = 70220013, pos = { x = -6158.729, y = 204.406, z = -2820.631 }, rot = { x = 350.448, y = 0.000, z = 7.213 }, level = 33, area_id = 18 },
	{ config_id = 71011, gadget_id = 70220013, pos = { x = -6155.338, y = 202.562, z = -2827.576 }, rot = { x = 0.000, y = 0.000, z = 7.384 }, level = 33, area_id = 18 },
	{ config_id = 71012, gadget_id = 70220013, pos = { x = -6161.409, y = 203.543, z = -2821.104 }, rot = { x = 359.134, y = 321.210, z = 12.021 }, level = 33, area_id = 18 },
	{ config_id = 71013, gadget_id = 70310001, pos = { x = -6158.431, y = 204.607, z = -2825.281 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 18 },
	{ config_id = 71014, gadget_id = 70310001, pos = { x = -6158.631, y = 200.984, z = -2833.359 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 18 },
	{ config_id = 71015, gadget_id = 70310006, pos = { x = -6159.938, y = 202.672, z = -2826.640 }, rot = { x = 346.910, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 71023, gadget_id = 70300086, pos = { x = -6199.943, y = 198.148, z = -2809.050 }, rot = { x = 15.344, y = 119.831, z = 337.892 }, level = 33, area_id = 18 },
	{ config_id = 71024, gadget_id = 70300086, pos = { x = -6198.125, y = 198.773, z = -2821.085 }, rot = { x = 344.848, y = 0.000, z = 12.541 }, level = 33, area_id = 18 },
	{ config_id = 71028, gadget_id = 70310001, pos = { x = -6203.596, y = 207.153, z = -2861.866 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 18 },
	{ config_id = 71029, gadget_id = 70310001, pos = { x = -6192.622, y = 204.962, z = -2857.789 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1071007, name = "ANY_MONSTER_DIE_71007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_71007", action = "action_EVENT_ANY_MONSTER_DIE_71007" },
	{ config_id = 1071008, name = "ANY_MONSTER_DIE_71008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_71008", action = "action_EVENT_ANY_MONSTER_DIE_71008" },
	{ config_id = 1071009, name = "ANY_MONSTER_DIE_71009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_71009", action = "action_EVENT_ANY_MONSTER_DIE_71009" }
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
		monsters = { 71001, 71016, 71017, 71018 },
		gadgets = { 71004, 71010, 71011, 71012, 71013, 71014, 71015 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_71007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 71019, 71020, 71021, 71022 },
		gadgets = { 71002, 71005, 71023, 71024 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_71008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 71003, 71025, 71026, 71027 },
		gadgets = { 71006, 71028, 71029 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_71009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_71007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_71007(context, evt)
	-- 将configid为 71004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 71004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_71008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_71008(context, evt)
	-- 将configid为 71005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 71005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_71009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_71009(context, evt)
	-- 将configid为 71006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 71006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V2_2/DayFinishSuite"