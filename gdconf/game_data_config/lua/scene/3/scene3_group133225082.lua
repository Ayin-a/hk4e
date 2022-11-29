-- 基础信息
local base_info = {
	group_id = 133225082
}

-- DEFS_MISCS
defs = {
        group_id = 133225082,
       questList = {7216719,7216619,7217226,7217320},           --按天填入完成的任务ID
        chestList = {82004,82005,82006},        --按Suite组填入每组Suite完成时打开的宝箱ID
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 82001, monster_id = 24020101, pos = { x = -6092.030, y = 202.892, z = -2669.898 }, rot = { x = 349.226, y = 4.009, z = 331.569 }, level = 33, drop_tag = "拟生机关", disableWander = true, pose_id = 101, climate_area_id = 7, area_id = 18 },
	{ config_id = 82002, monster_id = 24020101, pos = { x = -6094.688, y = 203.237, z = -2672.918 }, rot = { x = 350.334, y = 3.697, z = 338.950 }, level = 33, drop_tag = "拟生机关", disableWander = true, pose_id = 101, climate_area_id = 7, area_id = 18 },
	{ config_id = 82003, monster_id = 24020101, pos = { x = -6098.052, y = 204.366, z = -2663.054 }, rot = { x = 353.151, y = 353.987, z = 351.874 }, level = 33, drop_tag = "拟生机关", disableWander = true, pose_id = 101, climate_area_id = 7, area_id = 18 },
	{ config_id = 82010, monster_id = 24020101, pos = { x = -6113.062, y = 200.125, z = -2632.079 }, rot = { x = 349.226, y = 4.009, z = 344.474 }, level = 33, drop_tag = "拟生机关", pose_id = 100, climate_area_id = 7, area_id = 18 },
	{ config_id = 82011, monster_id = 24020101, pos = { x = -6108.391, y = 200.106, z = -2632.866 }, rot = { x = 3.565, y = 358.648, z = 10.105 }, level = 33, drop_tag = "拟生机关", pose_id = 100, climate_area_id = 7, area_id = 18 },
	{ config_id = 82012, monster_id = 24020101, pos = { x = -6102.186, y = 200.380, z = -2637.215 }, rot = { x = 353.151, y = 353.987, z = 351.874 }, level = 33, drop_tag = "拟生机关", pose_id = 100, climate_area_id = 7, area_id = 18 },
	{ config_id = 82013, monster_id = 24020101, pos = { x = -6019.880, y = 200.462, z = -2642.205 }, rot = { x = 0.871, y = 88.287, z = 358.835 }, level = 33, drop_tag = "拟生机关", disableWander = true, pose_id = 101, climate_area_id = 7, area_id = 18 },
	{ config_id = 82014, monster_id = 24020101, pos = { x = -6015.333, y = 200.343, z = -2645.760 }, rot = { x = 358.729, y = 343.210, z = 359.292 }, level = 33, drop_tag = "拟生机关", disableWander = true, pose_id = 101, climate_area_id = 7, area_id = 18 },
	{ config_id = 82015, monster_id = 24020101, pos = { x = -6018.216, y = 200.432, z = -2644.713 }, rot = { x = 359.750, y = 41.587, z = 358.567 }, level = 33, drop_tag = "拟生机关", disableWander = true, pose_id = 101, climate_area_id = 7, area_id = 18 },
	{ config_id = 82016, monster_id = 24010101, pos = { x = -6015.619, y = 200.562, z = -2641.829 }, rot = { x = 0.000, y = 209.705, z = 0.000 }, level = 33, drop_tag = "遗迹守卫", disableWander = true, pose_id = 101, climate_area_id = 7, area_id = 18 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 82004, gadget_id = 70211002, pos = { x = -6094.227, y = 204.223, z = -2670.644 }, rot = { x = 30.746, y = 172.268, z = 27.654 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 82005, gadget_id = 70211151, pos = { x = -6111.909, y = 200.048, z = -2634.675 }, rot = { x = 0.000, y = 142.643, z = 0.000 }, level = 26, chest_drop_id = 21910021, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 82006, gadget_id = 70211151, pos = { x = -6012.256, y = 203.415, z = -2637.769 }, rot = { x = 0.000, y = 198.478, z = 0.000 }, level = 26, chest_drop_id = 21910022, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 82017, gadget_id = 70310007, pos = { x = -6016.015, y = 200.562, z = -2642.385 }, rot = { x = 0.000, y = 209.705, z = 0.000 }, level = 33, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1082007, name = "ANY_MONSTER_DIE_82007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_82007", action = "action_EVENT_ANY_MONSTER_DIE_82007" },
	{ config_id = 1082008, name = "ANY_MONSTER_DIE_82008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_82008", action = "action_EVENT_ANY_MONSTER_DIE_82008" },
	{ config_id = 1082009, name = "ANY_MONSTER_DIE_82009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_82009", action = "action_EVENT_ANY_MONSTER_DIE_82009" }
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
		monsters = { 82001, 82002, 82003 },
		gadgets = { 82004, 82017 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_82007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 82010, 82011, 82012 },
		gadgets = { 82005, 82017 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_82008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 82013, 82014, 82015, 82016 },
		gadgets = { 82006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_82009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_82007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_82007(context, evt)
	-- 将configid为 82004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 82004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_82008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_82008(context, evt)
	-- 将configid为 82005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 82005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_82009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_82009(context, evt)
	-- 将configid为 82006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 82006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V2_2/DayFinishSuite"