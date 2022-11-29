-- 基础信息
local base_info = {
	group_id = 133225070
}

-- DEFS_MISCS
defs = {
        group_id = 133225070,
     questList = {7216719,7216619,7217226,7217320},        --按天填入完成的任务ID
        chestList = {70004,70005,70006},        --按Suite组填入每组Suite完成时打开的宝箱ID
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 70001, monster_id = 21030101, pos = { x = -6273.617, y = 202.430, z = -3144.893 }, rot = { x = 0.000, y = 285.221, z = 0.000 }, level = 33, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 18 },
	{ config_id = 70002, monster_id = 21030101, pos = { x = -6257.334, y = 201.902, z = -3140.770 }, rot = { x = 0.000, y = 132.478, z = 0.000 }, level = 33, drop_tag = "丘丘萨满", pose_id = 9012, area_id = 18 },
	{ config_id = 70003, monster_id = 21030101, pos = { x = -6269.182, y = 204.103, z = -3106.749 }, rot = { x = 0.000, y = 134.891, z = 0.000 }, level = 33, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 18 },
	{ config_id = 70014, monster_id = 21030101, pos = { x = -6278.740, y = 202.031, z = -3139.897 }, rot = { x = 0.000, y = 160.704, z = 0.000 }, level = 33, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 18 },
	{ config_id = 70015, monster_id = 20011101, pos = { x = -6279.300, y = 201.774, z = -3141.861 }, rot = { x = 0.000, y = 3.341, z = 0.000 }, level = 33, drop_tag = "大史莱姆", disableWander = true, area_id = 18 },
	{ config_id = 70016, monster_id = 20011101, pos = { x = -6277.119, y = 201.276, z = -3145.570 }, rot = { x = 0.000, y = 85.264, z = 0.000 }, level = 33, drop_tag = "大史莱姆", disableWander = true, area_id = 18 },
	{ config_id = 70017, monster_id = 21030101, pos = { x = -6243.587, y = 200.146, z = -3139.885 }, rot = { x = 0.000, y = 217.023, z = 0.000 }, level = 33, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 18 },
	{ config_id = 70018, monster_id = 20011001, pos = { x = -6244.925, y = 200.210, z = -3140.935 }, rot = { x = 333.999, y = 51.654, z = 11.523 }, level = 33, drop_tag = "史莱姆", disableWander = true, area_id = 18 },
	{ config_id = 70019, monster_id = 20011001, pos = { x = -6243.200, y = 200.121, z = -3141.868 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "史莱姆", disableWander = true, area_id = 18 },
	{ config_id = 70020, monster_id = 20011001, pos = { x = -6258.460, y = 202.839, z = -3111.357 }, rot = { x = 0.000, y = 348.727, z = 0.000 }, level = 33, drop_tag = "史莱姆", disableWander = true, area_id = 18 },
	{ config_id = 70021, monster_id = 21030101, pos = { x = -6258.913, y = 203.595, z = -3109.192 }, rot = { x = 0.000, y = 227.690, z = 0.000 }, level = 33, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 18 },
	{ config_id = 70022, monster_id = 20011001, pos = { x = -6260.774, y = 203.209, z = -3109.719 }, rot = { x = 0.389, y = 83.832, z = 359.958 }, level = 33, drop_tag = "史莱姆", area_id = 18 },
	{ config_id = 70024, monster_id = 20011101, pos = { x = -6254.694, y = 201.110, z = -3142.785 }, rot = { x = 0.000, y = 299.913, z = 0.000 }, level = 33, drop_tag = "大史莱姆", disableWander = true, area_id = 18 },
	{ config_id = 70026, monster_id = 20011001, pos = { x = -6268.771, y = 203.526, z = -3108.989 }, rot = { x = 0.024, y = 3.443, z = 359.609 }, level = 33, drop_tag = "史莱姆", area_id = 18 },
	{ config_id = 70027, monster_id = 20011001, pos = { x = -6266.771, y = 203.159, z = -3106.979 }, rot = { x = 359.685, y = 268.338, z = 0.396 }, level = 33, drop_tag = "史莱姆", disableWander = true, area_id = 18 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 70004, gadget_id = 70211002, pos = { x = -6271.381, y = 202.349, z = -3144.789 }, rot = { x = 3.313, y = 124.531, z = 358.833 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 70005, gadget_id = 70211151, pos = { x = -6251.454, y = 201.598, z = -3136.733 }, rot = { x = 7.213, y = 178.674, z = 349.872 }, level = 26, chest_drop_id = 21910003, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 70006, gadget_id = 70211151, pos = { x = -6256.420, y = 203.551, z = -3107.158 }, rot = { x = 7.125, y = 185.415, z = 6.853 }, level = 26, chest_drop_id = 21910004, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 70010, gadget_id = 70300086, pos = { x = -6272.712, y = 199.670, z = -3139.611 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 70011, gadget_id = 70300086, pos = { x = -6283.355, y = 199.629, z = -3137.981 }, rot = { x = 13.017, y = 5.086, z = 21.558 }, level = 33, area_id = 18 },
	{ config_id = 70012, gadget_id = 70300086, pos = { x = -6287.043, y = 201.609, z = -3154.154 }, rot = { x = 339.109, y = 353.232, z = 18.408 }, level = 33, area_id = 18 },
	{ config_id = 70013, gadget_id = 70310006, pos = { x = -6282.371, y = 201.818, z = -3140.592 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 18 },
	{ config_id = 70023, gadget_id = 70310006, pos = { x = -6256.720, y = 203.027, z = -3111.184 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 70025, gadget_id = 70310006, pos = { x = -6250.847, y = 200.887, z = -3141.418 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1070007, name = "ANY_MONSTER_DIE_70007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_70007", action = "action_EVENT_ANY_MONSTER_DIE_70007" },
	{ config_id = 1070008, name = "ANY_MONSTER_DIE_70008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_70008", action = "action_EVENT_ANY_MONSTER_DIE_70008" },
	{ config_id = 1070009, name = "ANY_MONSTER_DIE_70009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_70009", action = "action_EVENT_ANY_MONSTER_DIE_70009" }
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
		monsters = { 70001, 70014, 70015, 70016 },
		gadgets = { 70004, 70010, 70011, 70012, 70013 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_70007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 70002, 70017, 70018, 70019, 70024 },
		gadgets = { 70005, 70010, 70011, 70012, 70025 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_70008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 70003, 70020, 70021, 70022, 70026, 70027 },
		gadgets = { 70006, 70010, 70011, 70012, 70023 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_70009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_70007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_70007(context, evt)
	-- 将configid为 70004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 70004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_70008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_70008(context, evt)
	-- 将configid为 70005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 70005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_70009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_70009(context, evt)
	-- 将configid为 70006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 70006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V2_2/DayFinishSuite"