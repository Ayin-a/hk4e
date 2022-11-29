-- 基础信息
local base_info = {
	group_id = 133225073
}

-- DEFS_MISCS
defs = {
        group_id = 133225073,
       questList = {7216719,7216619,7217226,7217320},            --按天填入完成的任务ID
        chestList = {73004,73005,73006},        --按Suite组填入每组Suite完成时打开的宝箱ID
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 73001, monster_id = 24020101, pos = { x = -6025.515, y = 205.874, z = -2885.625 }, rot = { x = 8.966, y = 304.941, z = 344.026 }, level = 33, drop_tag = "拟生机关", disableWander = true, pose_id = 101, climate_area_id = 7, area_id = 18 },
	{ config_id = 73002, monster_id = 24020101, pos = { x = -6074.425, y = 208.965, z = -2882.966 }, rot = { x = 8.966, y = 304.941, z = 344.026 }, level = 33, drop_tag = "拟生机关", pose_id = 100, climate_area_id = 7, area_id = 18 },
	{ config_id = 73010, monster_id = 24020101, pos = { x = -6025.293, y = 205.796, z = -2883.390 }, rot = { x = 0.000, y = 297.258, z = 0.000 }, level = 33, drop_tag = "拟生机关", disableWander = true, pose_id = 101, climate_area_id = 7, area_id = 18 },
	{ config_id = 73011, monster_id = 24020101, pos = { x = -6027.899, y = 206.047, z = -2884.777 }, rot = { x = 0.000, y = 55.334, z = 0.000 }, level = 33, drop_tag = "拟生机关", disableWander = true, pose_id = 101, climate_area_id = 7, area_id = 18 },
	{ config_id = 73012, monster_id = 24020101, pos = { x = -6079.526, y = 208.625, z = -2901.028 }, rot = { x = 8.966, y = 304.941, z = 344.026 }, level = 33, drop_tag = "拟生机关", disableWander = true, pose_id = 101, climate_area_id = 7, area_id = 18 },
	{ config_id = 73013, monster_id = 24020101, pos = { x = -6086.533, y = 208.800, z = -2900.600 }, rot = { x = 0.000, y = 297.258, z = 0.000 }, level = 33, drop_tag = "拟生机关", disableWander = true, pose_id = 101, climate_area_id = 7, area_id = 18 },
	{ config_id = 73014, monster_id = 24020101, pos = { x = -6083.293, y = 208.708, z = -2898.943 }, rot = { x = 0.000, y = 55.334, z = 0.000 }, level = 33, drop_tag = "拟生机关", disableWander = true, pose_id = 101, climate_area_id = 7, area_id = 18 },
	{ config_id = 73015, monster_id = 24020101, pos = { x = -6086.409, y = 209.006, z = -2883.459 }, rot = { x = 0.000, y = 297.258, z = 0.000 }, level = 33, drop_tag = "拟生机关", pose_id = 100, climate_area_id = 7, area_id = 18 },
	{ config_id = 73016, monster_id = 24020101, pos = { x = -6079.849, y = 208.866, z = -2871.563 }, rot = { x = 0.000, y = 55.334, z = 0.000 }, level = 33, drop_tag = "拟生机关", pose_id = 100, climate_area_id = 7, area_id = 18 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 73004, gadget_id = 70211002, pos = { x = -6023.470, y = 205.418, z = -2887.178 }, rot = { x = 354.076, y = 261.282, z = 12.965 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 73005, gadget_id = 70211151, pos = { x = -6078.435, y = 208.717, z = -2879.857 }, rot = { x = 0.000, y = 297.323, z = 0.000 }, level = 26, chest_drop_id = 21910009, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 73006, gadget_id = 70211151, pos = { x = -6081.588, y = 208.685, z = -2902.765 }, rot = { x = 5.294, y = 355.745, z = 359.000 }, level = 26, chest_drop_id = 21910010, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1073007, name = "ANY_MONSTER_DIE_73007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_73007", action = "action_EVENT_ANY_MONSTER_DIE_73007" },
	{ config_id = 1073008, name = "ANY_MONSTER_DIE_73008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_73008", action = "action_EVENT_ANY_MONSTER_DIE_73008" },
	{ config_id = 1073009, name = "ANY_MONSTER_DIE_73009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_73009", action = "action_EVENT_ANY_MONSTER_DIE_73009" }
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
		monsters = { 73001, 73010, 73011 },
		gadgets = { 73004 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_73007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 73002, 73015, 73016 },
		gadgets = { 73005 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_73009" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 73012, 73013, 73014 },
		gadgets = { 73006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_73008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_73007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_73007(context, evt)
	-- 将configid为 73004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 73004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_73008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_73008(context, evt)
	-- 将configid为 73006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 73006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_73009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_73009(context, evt)
	-- 将configid为 73005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 73005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V2_2/DayFinishSuite"