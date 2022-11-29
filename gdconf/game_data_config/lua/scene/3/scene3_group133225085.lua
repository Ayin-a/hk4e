-- 基础信息
local base_info = {
	group_id = 133225085
}

-- DEFS_MISCS
defs = {
        group_id = 133225085,
      questList = {7216719,7216619,7217226,7217320},        --按天填入完成的任务ID
        chestList = {85004,85005,85006},        --按Suite组填入每组Suite完成时打开的宝箱ID
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 85001, monster_id = 21010101, pos = { x = -6256.232, y = 248.052, z = -2573.362 }, rot = { x = 0.000, y = 243.134, z = 0.000 }, level = 33, drop_tag = "丘丘人", disableWander = true, pose_id = 9010, climate_area_id = 7, area_id = 18 },
	{ config_id = 85003, monster_id = 21010101, pos = { x = -6281.936, y = 247.952, z = -2528.718 }, rot = { x = 0.000, y = 202.954, z = 0.000 }, level = 33, drop_tag = "丘丘人", disableWander = true, pose_id = 9002, climate_area_id = 7, area_id = 18 },
	{ config_id = 85010, monster_id = 21030101, pos = { x = -6258.599, y = 248.670, z = -2576.553 }, rot = { x = 0.000, y = 118.491, z = 0.000 }, level = 33, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, climate_area_id = 7, area_id = 18 },
	{ config_id = 85011, monster_id = 21010401, pos = { x = -6255.898, y = 249.019, z = -2579.810 }, rot = { x = 0.000, y = 316.509, z = 0.000 }, level = 33, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9010, climate_area_id = 7, area_id = 18 },
	{ config_id = 85012, monster_id = 21010301, pos = { x = -6254.694, y = 248.354, z = -2576.858 }, rot = { x = 0.000, y = 286.653, z = 0.000 }, level = 33, drop_tag = "丘丘人", disableWander = true, pose_id = 9010, climate_area_id = 7, area_id = 18 },
	{ config_id = 85014, monster_id = 21030101, pos = { x = -6282.260, y = 247.666, z = -2531.208 }, rot = { x = 0.000, y = 3.725, z = 0.000 }, level = 33, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, climate_area_id = 7, area_id = 18 },
	{ config_id = 85015, monster_id = 21010401, pos = { x = -6284.527, y = 248.108, z = -2529.110 }, rot = { x = 0.000, y = 99.926, z = 0.000 }, level = 33, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, climate_area_id = 7, area_id = 18 },
	{ config_id = 85017, monster_id = 21030101, pos = { x = -6322.066, y = 252.954, z = -2554.041 }, rot = { x = 0.000, y = 170.342, z = 0.000 }, level = 33, drop_tag = "丘丘萨满", disableWander = true, climate_area_id = 7, area_id = 18 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 85002, gadget_id = 70310004, pos = { x = -6257.446, y = 248.763, z = -2576.697 }, rot = { x = 4.534, y = 3.943, z = 350.756 }, level = 33, state = GadgetState.GearStart, area_id = 18 },
	{ config_id = 85004, gadget_id = 70211002, pos = { x = -6251.516, y = 248.501, z = -2573.993 }, rot = { x = 359.762, y = 204.205, z = 3.274 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 85005, gadget_id = 70211151, pos = { x = -6279.169, y = 247.990, z = -2526.843 }, rot = { x = 354.455, y = 201.134, z = 1.769 }, level = 26, chest_drop_id = 21910027, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 85006, gadget_id = 70211151, pos = { x = -6324.128, y = 253.014, z = -2556.646 }, rot = { x = 0.000, y = 49.632, z = 4.111 }, level = 26, chest_drop_id = 21910028, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 85013, gadget_id = 70310004, pos = { x = -6322.245, y = 253.051, z = -2555.198 }, rot = { x = 9.841, y = 0.246, z = 3.235 }, level = 33, state = GadgetState.GearStart, area_id = 18 },
	{ config_id = 85016, gadget_id = 70310004, pos = { x = -6282.883, y = 247.930, z = -2529.797 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1085007, name = "ANY_MONSTER_DIE_85007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_85007", action = "action_EVENT_ANY_MONSTER_DIE_85007" },
	{ config_id = 1085008, name = "ANY_MONSTER_DIE_85008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_85008", action = "action_EVENT_ANY_MONSTER_DIE_85008" },
	{ config_id = 1085009, name = "ANY_MONSTER_DIE_85009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_85009", action = "action_EVENT_ANY_MONSTER_DIE_85009" }
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
		monsters = { 85001, 85010, 85011, 85012 },
		gadgets = { 85002, 85004 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_85007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 85003, 85014, 85015 },
		gadgets = { 85005, 85016 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_85008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 85017 },
		gadgets = { 85006, 85013 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_85009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_85007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_85007(context, evt)
	-- 将configid为 85004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 85004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_85008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_85008(context, evt)
	-- 将configid为 85005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 85005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_85009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_85009(context, evt)
	-- 将configid为 85006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 85006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V2_2/DayFinishSuite"