-- 基础信息
local base_info = {
	group_id = 133225151
}

-- DEFS_MISCS
defs = {
        group_id = 133225151,
         questList = {7216719,7216619,7217226,7217320},           --按天填入完成的任务ID
        chestList = {151004,151005,151006},        --按Suite组填入每组Suite完成时打开的宝箱ID
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 151001, monster_id = 21010701, pos = { x = -6410.049, y = 237.779, z = -2810.281 }, rot = { x = 0.000, y = 185.482, z = 0.000 }, level = 33, drop_tag = "丘丘人", climate_area_id = 7, area_id = 18 },
	{ config_id = 151002, monster_id = 21010701, pos = { x = -6421.917, y = 236.937, z = -2816.621 }, rot = { x = 0.000, y = 185.482, z = 0.000 }, level = 33, drop_tag = "丘丘人", climate_area_id = 7, area_id = 18 },
	{ config_id = 151003, monster_id = 21030601, pos = { x = -6428.398, y = 237.869, z = -2811.643 }, rot = { x = 0.000, y = 281.862, z = 0.000 }, level = 33, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, climate_area_id = 7, area_id = 18 },
	{ config_id = 151010, monster_id = 21030601, pos = { x = -6403.710, y = 238.768, z = -2805.034 }, rot = { x = 0.000, y = 201.696, z = 0.000 }, level = 33, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, climate_area_id = 7, area_id = 18 },
	{ config_id = 151021, monster_id = 21010201, pos = { x = -6408.439, y = 238.525, z = -2805.660 }, rot = { x = 0.000, y = 356.156, z = 0.000 }, level = 33, drop_tag = "丘丘人", disableWander = true, pose_id = 9013, climate_area_id = 7, area_id = 18 },
	{ config_id = 151022, monster_id = 21010101, pos = { x = -6403.905, y = 238.225, z = -2808.847 }, rot = { x = 0.000, y = 242.903, z = 0.000 }, level = 33, drop_tag = "丘丘人", disableWander = true, pose_id = 9002, climate_area_id = 7, area_id = 18 },
	{ config_id = 151023, monster_id = 21010201, pos = { x = -6427.103, y = 236.931, z = -2821.780 }, rot = { x = 0.000, y = 237.853, z = 0.000 }, level = 33, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, climate_area_id = 7, area_id = 18 },
	{ config_id = 151024, monster_id = 21010101, pos = { x = -6425.463, y = 237.284, z = -2816.471 }, rot = { x = 0.000, y = 293.100, z = 0.000 }, level = 33, drop_tag = "丘丘人", disableWander = true, pose_id = 9013, climate_area_id = 7, area_id = 18 },
	{ config_id = 151025, monster_id = 21010701, pos = { x = -6447.909, y = 203.760, z = -2730.925 }, rot = { x = 0.000, y = 185.482, z = 0.000 }, level = 33, drop_tag = "丘丘人", climate_area_id = 7, area_id = 18 },
	{ config_id = 151026, monster_id = 21030601, pos = { x = -6440.077, y = 203.315, z = -2736.548 }, rot = { x = 0.000, y = 201.696, z = 0.000 }, level = 33, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, climate_area_id = 7, area_id = 18 },
	{ config_id = 151027, monster_id = 21010201, pos = { x = -6451.643, y = 202.191, z = -2736.660 }, rot = { x = 0.000, y = 342.925, z = 0.000 }, level = 33, drop_tag = "丘丘人", disableWander = true, pose_id = 9013, climate_area_id = 7, area_id = 18 },
	{ config_id = 151028, monster_id = 21010101, pos = { x = -6439.823, y = 202.773, z = -2739.371 }, rot = { x = 0.000, y = 242.903, z = 0.000 }, level = 33, drop_tag = "丘丘人", disableWander = true, pose_id = 9002, climate_area_id = 7, area_id = 18 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 151004, gadget_id = 70211002, pos = { x = -6402.832, y = 242.332, z = -2804.038 }, rot = { x = 9.955, y = 207.839, z = 358.342 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 151005, gadget_id = 70211151, pos = { x = -6426.910, y = 237.818, z = -2808.439 }, rot = { x = 1.760, y = 131.332, z = 357.363 }, level = 26, chest_drop_id = 21910031, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 151006, gadget_id = 70211151, pos = { x = -6437.049, y = 207.763, z = -2732.852 }, rot = { x = 7.419, y = 233.059, z = 10.967 }, level = 26, chest_drop_id = 21910032, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 151011, gadget_id = 70310001, pos = { x = -6404.956, y = 242.373, z = -2803.133 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 18 },
	{ config_id = 151012, gadget_id = 70310001, pos = { x = -6400.732, y = 242.300, z = -2805.127 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 18 },
	{ config_id = 151013, gadget_id = 70310006, pos = { x = -6404.403, y = 238.365, z = -2806.816 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 18 },
	{ config_id = 151014, gadget_id = 70300086, pos = { x = -6408.633, y = 237.921, z = -2803.248 }, rot = { x = 0.000, y = 0.000, z = 14.451 }, level = 33, area_id = 18 },
	{ config_id = 151015, gadget_id = 70300086, pos = { x = -6394.349, y = 238.526, z = -2803.906 }, rot = { x = 344.467, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 151016, gadget_id = 70220014, pos = { x = -6396.267, y = 238.963, z = -2805.638 }, rot = { x = 355.565, y = 358.462, z = 12.648 }, level = 33, area_id = 18 },
	{ config_id = 151017, gadget_id = 70220014, pos = { x = -6394.049, y = 239.050, z = -2805.993 }, rot = { x = 343.050, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 151018, gadget_id = 70220014, pos = { x = -6395.005, y = 239.217, z = -2804.573 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 151019, gadget_id = 70220014, pos = { x = -6407.421, y = 238.807, z = -2803.116 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 151020, gadget_id = 70220014, pos = { x = -6408.068, y = 238.307, z = -2803.614 }, rot = { x = 0.000, y = 0.000, z = 51.117 }, level = 33, area_id = 18 },
	{ config_id = 151029, gadget_id = 70310006, pos = { x = -6441.721, y = 202.753, z = -2738.489 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 18 },
	{ config_id = 151030, gadget_id = 70310001, pos = { x = -6434.237, y = 205.276, z = -2736.544 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 18 },
	{ config_id = 151031, gadget_id = 70310001, pos = { x = -6439.088, y = 205.865, z = -2730.731 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 18 },
	{ config_id = 151032, gadget_id = 70310001, pos = { x = -6451.935, y = 202.462, z = -2734.293 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1151007, name = "ANY_MONSTER_DIE_151007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_151007", action = "action_EVENT_ANY_MONSTER_DIE_151007" },
	{ config_id = 1151008, name = "ANY_MONSTER_DIE_151008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_151008", action = "action_EVENT_ANY_MONSTER_DIE_151008" },
	{ config_id = 1151009, name = "ANY_MONSTER_DIE_151009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_151009", action = "action_EVENT_ANY_MONSTER_DIE_151009" }
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
		monsters = { 151001, 151010, 151021, 151022 },
		gadgets = { 151004, 151011, 151012, 151013, 151014, 151015, 151016, 151017, 151018, 151019, 151020 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_151007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 151002, 151003, 151023, 151024 },
		gadgets = { 151005, 151011, 151012, 151013, 151014, 151015, 151016, 151017, 151018, 151019, 151020 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_151008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 151025, 151026, 151027, 151028 },
		gadgets = { 151006, 151011, 151012, 151014, 151015, 151029, 151030, 151031, 151032 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_151009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_151007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_151007(context, evt)
	-- 将configid为 151004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 151004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_151008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_151008(context, evt)
	-- 将configid为 151005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 151005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_151009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_151009(context, evt)
	-- 将configid为 151006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 151006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V2_2/DayFinishSuite"