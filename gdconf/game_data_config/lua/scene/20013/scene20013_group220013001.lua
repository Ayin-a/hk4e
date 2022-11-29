-- 基础信息
local base_info = {
	group_id = 220013001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1001, monster_id = 20011301, pos = { x = 343.101, y = -28.901, z = 429.407 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 1002, monster_id = 20011201, pos = { x = 348.350, y = -28.984, z = 426.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1003, monster_id = 20011201, pos = { x = 348.348, y = -28.984, z = 435.646 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1004, monster_id = 20011201, pos = { x = 338.319, y = -28.983, z = 425.736 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1005, monster_id = 20011201, pos = { x = 338.327, y = -28.984, z = 435.794 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1006, monster_id = 21010701, pos = { x = 350.604, y = -27.984, z = 414.486 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 1007, monster_id = 21010701, pos = { x = 343.766, y = -27.983, z = 414.742 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 1008, monster_id = 21010701, pos = { x = 335.193, y = -27.983, z = 414.467 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 1009, monster_id = 21010201, pos = { x = 349.727, y = -28.984, z = 426.070 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1010, monster_id = 21010201, pos = { x = 338.214, y = -28.800, z = 435.212 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1011, monster_id = 20020101, pos = { x = 343.159, y = -28.901, z = 431.757 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1012, monster_id = 21010301, pos = { x = 347.946, y = -28.933, z = 428.108 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 1013, monster_id = 21010301, pos = { x = 343.382, y = -28.942, z = 430.425 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 1014, monster_id = 21010301, pos = { x = 338.440, y = -28.895, z = 428.636 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 1015, monster_id = 21010601, pos = { x = 343.246, y = -27.853, z = 414.999 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1016, gadget_id = 70350003, pos = { x = 333.229, y = -28.075, z = 404.540 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1017, gadget_id = 70350003, pos = { x = 343.002, y = -28.053, z = 404.658 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1018, gadget_id = 70350003, pos = { x = 353.149, y = -27.976, z = 404.620 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1019, gadget_id = 70220010, pos = { x = 348.279, y = -28.800, z = 435.665 }, rot = { x = 0.000, y = 101.837, z = 0.000 }, level = 1 },
	{ config_id = 1020, gadget_id = 70220010, pos = { x = 348.410, y = -28.800, z = 425.647 }, rot = { x = 0.000, y = 0.617, z = 0.000 }, level = 1 },
	{ config_id = 1021, gadget_id = 70220010, pos = { x = 338.208, y = -28.800, z = 425.824 }, rot = { x = 0.000, y = 177.456, z = 0.000 }, level = 1 },
	{ config_id = 1022, gadget_id = 70220010, pos = { x = 338.255, y = -28.800, z = 435.784 }, rot = { x = 0.000, y = 88.924, z = 0.000 }, level = 1 },
	{ config_id = 1023, gadget_id = 70310001, pos = { x = 350.343, y = -28.984, z = 423.674 }, rot = { x = 0.000, y = 128.690, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 1024, gadget_id = 70310001, pos = { x = 336.928, y = -28.983, z = 423.746 }, rot = { x = 0.000, y = 347.011, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 1025, gadget_id = 70310001, pos = { x = 337.179, y = -28.984, z = 437.460 }, rot = { x = 0.000, y = 184.232, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 1026, gadget_id = 70310001, pos = { x = 349.412, y = -28.983, z = 437.089 }, rot = { x = 0.000, y = 242.657, z = 0.000 }, level = 1, state = GadgetState.GearStart }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000001, name = "ANY_MONSTER_DIE_1", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1", action = "action_EVENT_ANY_MONSTER_DIE_1" }
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
		monsters = { 1001, 1002, 1003, 1004, 1005 },
		gadgets = { 1016, 1017, 1018 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1" },
		rand_weight = 50
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 1006, 1007, 1008, 1009, 1010 },
		gadgets = { 1016, 1017, 1018 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1" },
		rand_weight = 50
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 1011 },
		gadgets = { 1016, 1017, 1018, 1019, 1020, 1021, 1022, 1023, 1024, 1025, 1026 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1" },
		rand_weight = 40
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 1012, 1013, 1014, 1015 },
		gadgets = { 1016, 1017, 1018 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1(context, evt)
	-- 将configid为 1016 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1016, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 1017 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1017, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 1018 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1018, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end