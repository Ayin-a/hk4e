-- 基础信息
local base_info = {
	group_id = 133225080
}

-- DEFS_MISCS
defs = {
        group_id = 133225080,
        questList = {7216719,7216619,7217226,7217320},         --按天填入完成的任务ID
        chestList = {80004,80005,80006},        --按Suite组填入每组Suite完成时打开的宝箱ID
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 80001, monster_id = 21030101, pos = { x = -6423.264, y = 200.012, z = -2844.727 }, rot = { x = 0.000, y = 28.783, z = 0.000 }, level = 33, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, climate_area_id = 7, area_id = 18 },
	{ config_id = 80002, monster_id = 20011001, pos = { x = -6419.076, y = 200.131, z = -2840.453 }, rot = { x = 354.654, y = 51.381, z = 9.903 }, level = 33, drop_tag = "史莱姆", disableWander = true, climate_area_id = 7, area_id = 18 },
	{ config_id = 80003, monster_id = 20011001, pos = { x = -6398.828, y = 200.732, z = -2851.712 }, rot = { x = 0.000, y = 355.760, z = 0.000 }, level = 33, drop_tag = "史莱姆", disableWander = true, climate_area_id = 7, area_id = 18 },
	{ config_id = 80010, monster_id = 21030101, pos = { x = -6422.776, y = 200.113, z = -2838.489 }, rot = { x = 0.000, y = 144.656, z = 0.000 }, level = 33, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, climate_area_id = 7, area_id = 18 },
	{ config_id = 80011, monster_id = 21030101, pos = { x = -6416.878, y = 200.000, z = -2840.480 }, rot = { x = 0.000, y = 263.517, z = 0.000 }, level = 33, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, climate_area_id = 7, area_id = 18 },
	{ config_id = 80013, monster_id = 20011001, pos = { x = -6423.009, y = 200.478, z = -2842.857 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "史莱姆", disableWander = true, climate_area_id = 7, area_id = 18 },
	{ config_id = 80014, monster_id = 21030101, pos = { x = -6401.841, y = 199.554, z = -2822.758 }, rot = { x = 343.739, y = 61.490, z = 354.838 }, level = 33, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, climate_area_id = 7, area_id = 18 },
	{ config_id = 80015, monster_id = 21030101, pos = { x = -6401.782, y = 200.000, z = -2818.463 }, rot = { x = 0.000, y = 122.607, z = 0.000 }, level = 33, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, climate_area_id = 7, area_id = 18 },
	{ config_id = 80016, monster_id = 21030101, pos = { x = -6397.922, y = 200.117, z = -2820.958 }, rot = { x = 0.000, y = 263.517, z = 0.000 }, level = 33, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, climate_area_id = 7, area_id = 18 },
	{ config_id = 80017, monster_id = 20011001, pos = { x = -6400.155, y = 200.025, z = -2820.896 }, rot = { x = 354.949, y = 57.744, z = 6.522 }, level = 33, drop_tag = "史莱姆", disableWander = true, climate_area_id = 7, area_id = 18 },
	{ config_id = 80020, monster_id = 20011001, pos = { x = -6402.635, y = 200.527, z = -2845.751 }, rot = { x = 1.487, y = 79.523, z = 7.986 }, level = 33, drop_tag = "史莱姆", disableWander = true, climate_area_id = 7, area_id = 18 },
	{ config_id = 80021, monster_id = 21030101, pos = { x = -6405.614, y = 200.000, z = -2844.477 }, rot = { x = 349.251, y = 95.334, z = 346.700 }, level = 33, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, climate_area_id = 7, area_id = 18 },
	{ config_id = 80022, monster_id = 21030101, pos = { x = -6390.953, y = 201.170, z = -2843.670 }, rot = { x = 0.000, y = 240.698, z = 0.000 }, level = 33, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, climate_area_id = 7, area_id = 18 },
	{ config_id = 80023, monster_id = 21030101, pos = { x = -6399.348, y = 200.111, z = -2857.000 }, rot = { x = 0.000, y = 340.740, z = 0.000 }, level = 33, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, climate_area_id = 7, area_id = 18 },
	{ config_id = 80024, monster_id = 20011001, pos = { x = -6395.767, y = 201.194, z = -2844.982 }, rot = { x = 0.000, y = 164.771, z = 0.000 }, level = 33, drop_tag = "史莱姆", disableWander = true, climate_area_id = 7, area_id = 18 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 80004, gadget_id = 70211002, pos = { x = -6408.920, y = 199.863, z = -2821.272 }, rot = { x = 2.994, y = 88.036, z = 1.712 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 80005, gadget_id = 70211151, pos = { x = -6421.196, y = 200.019, z = -2841.350 }, rot = { x = 2.160, y = 151.198, z = 359.550 }, level = 26, chest_drop_id = 21910019, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 80006, gadget_id = 70211151, pos = { x = -6399.252, y = 200.252, z = -2847.188 }, rot = { x = 0.708, y = 86.287, z = 359.056 }, level = 26, chest_drop_id = 21910020, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 80012, gadget_id = 70300087, pos = { x = -6423.063, y = 200.016, z = -2842.798 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 80018, gadget_id = 70300087, pos = { x = -6400.073, y = 199.567, z = -2820.842 }, rot = { x = 354.949, y = 57.744, z = 6.522 }, level = 33, area_id = 18 },
	{ config_id = 80019, gadget_id = 70300087, pos = { x = -6418.979, y = 199.674, z = -2840.409 }, rot = { x = 354.654, y = 51.381, z = 9.903 }, level = 33, area_id = 18 },
	{ config_id = 80025, gadget_id = 70300087, pos = { x = -6395.701, y = 200.585, z = -2845.025 }, rot = { x = 0.000, y = 164.771, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 80026, gadget_id = 70300087, pos = { x = -6402.590, y = 200.053, z = -2845.685 }, rot = { x = 0.481, y = 79.430, z = 2.574 }, level = 33, area_id = 18 },
	{ config_id = 80027, gadget_id = 70300087, pos = { x = -6398.908, y = 200.267, z = -2851.727 }, rot = { x = 0.000, y = 355.760, z = 0.000 }, level = 33, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1080007, name = "ANY_MONSTER_DIE_80007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_80007", action = "action_EVENT_ANY_MONSTER_DIE_80007" },
	{ config_id = 1080008, name = "ANY_MONSTER_DIE_80008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_80008", action = "action_EVENT_ANY_MONSTER_DIE_80008" },
	{ config_id = 1080009, name = "ANY_MONSTER_DIE_80009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_80009", action = "action_EVENT_ANY_MONSTER_DIE_80009" }
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
		monsters = { 80014, 80015, 80016, 80017 },
		gadgets = { 80004, 80018 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_80008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 80001, 80002, 80010, 80011, 80013 },
		gadgets = { 80005, 80012, 80019 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_80007" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 80003, 80020, 80021, 80022, 80023, 80024 },
		gadgets = { 80006, 80025, 80026, 80027 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_80009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_80007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_80007(context, evt)
	-- 将configid为 80005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 80005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_80008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_80008(context, evt)
	-- 将configid为 80004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 80004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_80009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_80009(context, evt)
	-- 将configid为 80006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 80006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V2_2/DayFinishSuite"