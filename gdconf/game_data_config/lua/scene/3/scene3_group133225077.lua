-- 基础信息
local base_info = {
	group_id = 133225077
}

-- DEFS_MISCS
defs = {
        group_id = 133225077,
         questList = {7216719,7216619,7217226,7217320},          --按天填入完成的任务ID
        chestList = {77004,77005,77006},        --按Suite组填入每组Suite完成时打开的宝箱ID
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 77001, monster_id = 21010101, pos = { x = -6229.464, y = 229.661, z = -2512.872 }, rot = { x = 0.000, y = 224.409, z = 0.000 }, level = 33, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, climate_area_id = 7, area_id = 18 },
	{ config_id = 77002, monster_id = 21010101, pos = { x = -6227.372, y = 228.948, z = -2519.466 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "丘丘人", climate_area_id = 7, area_id = 18 },
	{ config_id = 77003, monster_id = 21010401, pos = { x = -6226.874, y = 233.161, z = -2499.829 }, rot = { x = 0.000, y = 115.811, z = 0.000 }, level = 33, drop_tag = "远程丘丘人", disableWander = true, climate_area_id = 7, area_id = 18 },
	{ config_id = 77010, monster_id = 21010401, pos = { x = -6227.182, y = 230.816, z = -2524.402 }, rot = { x = 0.000, y = 30.850, z = 0.000 }, level = 33, drop_tag = "远程丘丘人", disableWander = true, climate_area_id = 7, area_id = 18 },
	{ config_id = 77012, monster_id = 21010101, pos = { x = -6227.947, y = 232.074, z = -2481.567 }, rot = { x = 0.000, y = 303.640, z = 0.000 }, level = 33, drop_tag = "丘丘人", disableWander = true, pose_id = 9002, climate_area_id = 7, area_id = 18 },
	{ config_id = 77013, monster_id = 21010101, pos = { x = -6226.960, y = 232.239, z = -2478.081 }, rot = { x = 0.000, y = 267.579, z = 0.000 }, level = 33, drop_tag = "丘丘人", disableWander = true, pose_id = 9002, climate_area_id = 7, area_id = 18 },
	{ config_id = 77014, monster_id = 21010401, pos = { x = -6225.086, y = 230.996, z = -2486.293 }, rot = { x = 0.000, y = 330.855, z = 0.000 }, level = 33, drop_tag = "远程丘丘人", climate_area_id = 7, area_id = 18 },
	{ config_id = 77015, monster_id = 21010401, pos = { x = -6225.090, y = 232.727, z = -2475.063 }, rot = { x = 0.000, y = 173.481, z = 0.000 }, level = 33, drop_tag = "远程丘丘人", disableWander = true, climate_area_id = 7, area_id = 18 },
	{ config_id = 77022, monster_id = 22040201, pos = { x = -6229.257, y = 229.735, z = -2508.064 }, rot = { x = 0.000, y = 262.422, z = 0.000 }, level = 33, drop_tag = "兽境幼兽", pose_id = 101, climate_area_id = 7, area_id = 18 },
	{ config_id = 77023, monster_id = 22050201, pos = { x = -6225.135, y = 228.535, z = -2510.394 }, rot = { x = 0.000, y = 241.823, z = 0.000 }, level = 33, drop_tag = "兽境猎犬", pose_id = 101, climate_area_id = 7, area_id = 18 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 77004, gadget_id = 70211002, pos = { x = -6234.872, y = 233.528, z = -2510.232 }, rot = { x = 0.000, y = 90.136, z = 0.000 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 77005, gadget_id = 70211151, pos = { x = -6230.106, y = 233.241, z = -2479.555 }, rot = { x = 8.166, y = 105.558, z = 354.122 }, level = 26, chest_drop_id = 21910013, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 77006, gadget_id = 70211151, pos = { x = -6224.370, y = 227.755, z = -2508.876 }, rot = { x = 358.845, y = 46.598, z = 357.368 }, level = 26, chest_drop_id = 21910014, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 77011, gadget_id = 70310006, pos = { x = -6231.492, y = 229.858, z = -2514.789 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 77016, gadget_id = 70710078, pos = { x = -6228.278, y = 228.929, z = -2515.170 }, rot = { x = 0.000, y = 50.024, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 77017, gadget_id = 70710078, pos = { x = -6229.850, y = 229.596, z = -2519.453 }, rot = { x = 0.000, y = 256.607, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 77018, gadget_id = 70710078, pos = { x = -6231.150, y = 230.019, z = -2509.294 }, rot = { x = 0.000, y = 305.023, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 77019, gadget_id = 70710078, pos = { x = -6231.036, y = 230.228, z = -2507.545 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1077007, name = "ANY_MONSTER_DIE_77007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_77007", action = "action_EVENT_ANY_MONSTER_DIE_77007" },
	{ config_id = 1077008, name = "ANY_MONSTER_DIE_77008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_77008", action = "action_EVENT_ANY_MONSTER_DIE_77008" },
	{ config_id = 1077009, name = "ANY_MONSTER_DIE_77009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_77009", action = "action_EVENT_ANY_MONSTER_DIE_77009" }
}

-- 变量
variables = {
	{ config_id = 1, name = "chestState", value = 0, no_refresh = true },
	{ config_id = 2, name = "suiteBySeq", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 77020, monster_id = 22040201, pos = { x = -6225.861, y = 228.669, z = -2507.238 }, rot = { x = 0.000, y = 279.923, z = 0.000 }, level = 33, drop_tag = "兽境幼兽", pose_id = 101, climate_area_id = 7, area_id = 18 }
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
		monsters = { 77001, 77002, 77003, 77010 },
		gadgets = { 77004, 77011 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_77007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 77012, 77013, 77014, 77015 },
		gadgets = { 77005, 77011 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_77008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 77022, 77023 },
		gadgets = { 77006, 77011, 77016, 77017, 77018, 77019 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_77009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_77007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_77007(context, evt)
	-- 将configid为 77004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 77004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_77008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_77008(context, evt)
	-- 将configid为 77005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 77005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_77009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_77009(context, evt)
	-- 将configid为 77006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 77006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V2_2/DayFinishSuite"