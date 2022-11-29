-- 基础信息
local base_info = {
	group_id = 133225083
}

-- DEFS_MISCS
defs = {
        group_id = 133225083,
          questList = {7216719,7216619,7217226,7217320},        --按天填入完成的任务ID
        chestList = {83004,83005,83006},        --按Suite组填入每组Suite完成时打开的宝箱ID
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 83001, monster_id = 21010101, pos = { x = -6080.790, y = 200.072, z = -2543.479 }, rot = { x = 0.000, y = 275.979, z = 0.000 }, level = 33, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, climate_area_id = 7, area_id = 18 },
	{ config_id = 83002, monster_id = 21010101, pos = { x = -6080.790, y = 200.072, z = -2543.479 }, rot = { x = 0.000, y = 275.979, z = 0.000 }, level = 33, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, climate_area_id = 7, area_id = 18 },
	{ config_id = 83003, monster_id = 21020701, pos = { x = -6061.656, y = 200.870, z = -2577.853 }, rot = { x = 358.508, y = 198.111, z = 352.759 }, level = 33, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, climate_area_id = 7, area_id = 18 },
	{ config_id = 83013, monster_id = 21010101, pos = { x = -6086.310, y = 200.000, z = -2544.430 }, rot = { x = 0.000, y = 69.216, z = 0.000 }, level = 33, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, climate_area_id = 7, area_id = 18 },
	{ config_id = 83014, monster_id = 21010101, pos = { x = -6072.343, y = 201.375, z = -2539.603 }, rot = { x = 0.000, y = 86.104, z = 0.000 }, level = 33, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, climate_area_id = 7, area_id = 18 },
	{ config_id = 83020, monster_id = 21020701, pos = { x = -6061.656, y = 200.870, z = -2577.853 }, rot = { x = 358.508, y = 198.111, z = 352.759 }, level = 33, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, climate_area_id = 7, area_id = 18 },
	{ config_id = 83021, monster_id = 21010101, pos = { x = -6086.310, y = 200.000, z = -2544.430 }, rot = { x = 0.000, y = 69.216, z = 0.000 }, level = 33, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, climate_area_id = 7, area_id = 18 },
	{ config_id = 83022, monster_id = 21010101, pos = { x = -6082.290, y = 200.120, z = -2546.879 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, climate_area_id = 7, area_id = 18 },
	{ config_id = 83023, monster_id = 21020701, pos = { x = -6077.370, y = 200.831, z = -2544.667 }, rot = { x = 11.245, y = 269.829, z = 340.018 }, level = 33, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, climate_area_id = 7, area_id = 18 },
	{ config_id = 83024, monster_id = 21010101, pos = { x = -6067.147, y = 200.406, z = -2580.381 }, rot = { x = 0.000, y = 195.685, z = 0.000 }, level = 33, drop_tag = "丘丘人", disableWander = true, pose_id = 9002, climate_area_id = 7, area_id = 18 },
	{ config_id = 83025, monster_id = 21010101, pos = { x = -6064.975, y = 200.448, z = -2576.584 }, rot = { x = 0.000, y = 131.328, z = 0.000 }, level = 33, drop_tag = "丘丘人", disableWander = true, pose_id = 9002, climate_area_id = 7, area_id = 18 },
	{ config_id = 83026, monster_id = 21010101, pos = { x = -6064.763, y = 200.662, z = -2583.595 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "丘丘人", climate_area_id = 7, area_id = 18 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 83004, gadget_id = 70211002, pos = { x = -6063.525, y = 200.936, z = -2581.499 }, rot = { x = 354.082, y = 178.669, z = 0.137 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 83005, gadget_id = 70211151, pos = { x = -6083.357, y = 201.948, z = -2553.160 }, rot = { x = 4.707, y = 157.593, z = 11.257 }, level = 26, chest_drop_id = 21910023, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 83006, gadget_id = 70211151, pos = { x = -6063.525, y = 200.936, z = -2581.499 }, rot = { x = 354.082, y = 178.669, z = 0.137 }, level = 26, chest_drop_id = 21910024, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 83010, gadget_id = 70300086, pos = { x = -6060.715, y = 199.444, z = -2576.660 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 83011, gadget_id = 70300086, pos = { x = -6067.623, y = 198.041, z = -2579.714 }, rot = { x = 0.000, y = 0.000, z = 18.043 }, level = 33, area_id = 18 },
	{ config_id = 83012, gadget_id = 70300086, pos = { x = -6061.773, y = 198.260, z = -2585.938 }, rot = { x = 346.349, y = 0.000, z = 11.882 }, level = 33, area_id = 18 },
	{ config_id = 83015, gadget_id = 70220014, pos = { x = -6084.814, y = 199.278, z = -2544.263 }, rot = { x = 22.117, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 83016, gadget_id = 70220014, pos = { x = -6082.016, y = 199.779, z = -2543.188 }, rot = { x = 0.000, y = 0.000, z = 99.185 }, level = 33, area_id = 18 },
	{ config_id = 83017, gadget_id = 70220014, pos = { x = -6082.704, y = 199.848, z = -2545.033 }, rot = { x = 13.955, y = 0.000, z = 348.109 }, level = 33, area_id = 18 },
	{ config_id = 83018, gadget_id = 70220014, pos = { x = -6083.468, y = 200.000, z = -2549.262 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 83019, gadget_id = 70220014, pos = { x = -6082.826, y = 199.344, z = -2551.239 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 83027, gadget_id = 70310006, pos = { x = -6060.478, y = 200.933, z = -2581.580 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 18 },
	{ config_id = 83028, gadget_id = 70310001, pos = { x = -6063.311, y = 200.498, z = -2576.150 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 18 },
	{ config_id = 83029, gadget_id = 70220014, pos = { x = -6068.793, y = 200.127, z = -2581.089 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 83030, gadget_id = 70220014, pos = { x = -6059.470, y = 200.965, z = -2577.677 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 83031, gadget_id = 70220014, pos = { x = -6059.275, y = 200.914, z = -2579.246 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 83032, gadget_id = 70220025, pos = { x = -6061.831, y = 200.880, z = -2583.692 }, rot = { x = 86.076, y = 252.940, z = 252.725 }, level = 33, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1083007, name = "ANY_MONSTER_DIE_83007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_83007", action = "action_EVENT_ANY_MONSTER_DIE_83007" },
	{ config_id = 1083008, name = "ANY_MONSTER_DIE_83008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_83008", action = "action_EVENT_ANY_MONSTER_DIE_83008" },
	{ config_id = 1083009, name = "ANY_MONSTER_DIE_83009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_83009", action = "action_EVENT_ANY_MONSTER_DIE_83009" }
}

-- 变量
variables = {
	{ config_id = 1, name = "chestState", value = 0, no_refresh = true },
	{ config_id = 2, name = "suiteBySeq", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 83033, gadget_id = 70500000, pos = { x = -6061.912, y = 201.065, z = -2583.452 }, rot = { x = 0.000, y = 0.000, z = 348.285 }, level = 33, point_type = 3002, area_id = 18 },
		{ config_id = 83034, gadget_id = 70500000, pos = { x = -6061.666, y = 201.001, z = -2583.604 }, rot = { x = 0.000, y = 0.000, z = 348.285 }, level = 33, point_type = 3002, area_id = 18 },
		{ config_id = 83035, gadget_id = 70500000, pos = { x = -6062.157, y = 201.074, z = -2584.165 }, rot = { x = 0.000, y = 0.000, z = 348.285 }, level = 33, point_type = 3002, area_id = 18 }
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
		monsters = { 83001, 83013, 83014, 83020 },
		gadgets = { 83004, 83010, 83011, 83015, 83016, 83017, 83018, 83019 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_83007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 83002, 83021, 83022, 83023 },
		gadgets = { 83005, 83010, 83011 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_83008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 83003, 83024, 83025, 83026 },
		gadgets = { 83006, 83010, 83011, 83012, 83027, 83028, 83029, 83030, 83031, 83032 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_83009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_83007(context, evt)
	--判断死亡怪物的configid是否为 83020
	if evt.param1 ~= 83020 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_83007(context, evt)
	-- 将configid为 83004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 83004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_83008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_83008(context, evt)
	-- 将configid为 83005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 83005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_83009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_83009(context, evt)
	-- 将configid为 83006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 83006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V2_2/DayFinishSuite"