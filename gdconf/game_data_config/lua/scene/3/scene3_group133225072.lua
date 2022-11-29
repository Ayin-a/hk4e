-- 基础信息
local base_info = {
	group_id = 133225072
}

-- DEFS_MISCS
defs = {
        group_id = 133225072,
        questList = {7216719,7216619,7217226,7217320},        --按天填入完成的任务ID
        chestList = {72004,72005,72006},        --按Suite组填入每组Suite完成时打开的宝箱ID
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 72001, monster_id = 21010501, pos = { x = -6261.277, y = 216.859, z = -2975.094 }, rot = { x = 0.000, y = 153.119, z = 0.000 }, level = 33, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, climate_area_id = 7, area_id = 18 },
	{ config_id = 72011, monster_id = 21011001, pos = { x = -6257.928, y = 217.232, z = -2978.109 }, rot = { x = 0.000, y = 223.282, z = 0.000 }, level = 33, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, climate_area_id = 7, area_id = 18 },
	{ config_id = 72012, monster_id = 21010901, pos = { x = -6249.935, y = 218.810, z = -2982.360 }, rot = { x = 0.000, y = 210.983, z = 0.000 }, level = 33, drop_tag = "远程丘丘人", disableWander = true, climate_area_id = 7, area_id = 18 },
	{ config_id = 72013, monster_id = 21010401, pos = { x = -6261.636, y = 213.965, z = -2980.318 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "远程丘丘人", climate_area_id = 7, area_id = 18 },
	{ config_id = 72014, monster_id = 21010501, pos = { x = -6274.248, y = 216.115, z = -2969.485 }, rot = { x = 0.000, y = 203.133, z = 0.000 }, level = 33, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9013, climate_area_id = 7, area_id = 18 },
	{ config_id = 72015, monster_id = 21011001, pos = { x = -6279.095, y = 218.180, z = -2965.138 }, rot = { x = 0.000, y = 293.429, z = 0.000 }, level = 33, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9013, climate_area_id = 7, area_id = 18 },
	{ config_id = 72016, monster_id = 21010901, pos = { x = -6276.163, y = 218.117, z = -2961.537 }, rot = { x = 0.000, y = 324.132, z = 0.000 }, level = 33, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9013, climate_area_id = 7, area_id = 18 },
	{ config_id = 72017, monster_id = 21010401, pos = { x = -6270.139, y = 215.666, z = -2968.384 }, rot = { x = 0.000, y = 113.925, z = 0.000 }, level = 33, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9013, climate_area_id = 7, area_id = 18 },
	{ config_id = 72023, monster_id = 21010501, pos = { x = -6269.814, y = 222.540, z = -2949.830 }, rot = { x = 0.000, y = 209.718, z = 0.000 }, level = 33, drop_tag = "远程丘丘人", disableWander = true, climate_area_id = 7, area_id = 18 },
	{ config_id = 72024, monster_id = 21011001, pos = { x = -6267.234, y = 222.863, z = -2950.647 }, rot = { x = 0.000, y = 224.792, z = 0.000 }, level = 33, drop_tag = "远程丘丘人", disableWander = true, climate_area_id = 7, area_id = 18 },
	{ config_id = 72025, monster_id = 21010901, pos = { x = -6272.533, y = 221.991, z = -2949.632 }, rot = { x = 0.000, y = 141.626, z = 0.000 }, level = 33, drop_tag = "远程丘丘人", disableWander = true, climate_area_id = 7, area_id = 18 },
	{ config_id = 72026, monster_id = 21010401, pos = { x = -6274.811, y = 221.619, z = -2950.404 }, rot = { x = 0.000, y = 131.166, z = 0.000 }, level = 33, drop_tag = "远程丘丘人", disableWander = true, climate_area_id = 7, area_id = 18 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 72002, gadget_id = 70300088, pos = { x = -6276.869, y = 215.372, z = -2973.798 }, rot = { x = 0.000, y = 312.291, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 72004, gadget_id = 70211002, pos = { x = -6259.784, y = 217.304, z = -2973.255 }, rot = { x = 20.401, y = 211.194, z = 349.003 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 72005, gadget_id = 70211151, pos = { x = -6277.059, y = 217.407, z = -2967.049 }, rot = { x = 8.314, y = 130.317, z = 351.690 }, level = 26, chest_drop_id = 21910007, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 72006, gadget_id = 70211151, pos = { x = -6270.450, y = 219.906, z = -2955.262 }, rot = { x = 21.511, y = 181.176, z = 355.814 }, level = 26, chest_drop_id = 21910008, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 72010, gadget_id = 70310006, pos = { x = -6257.748, y = 215.379, z = -2980.874 }, rot = { x = 358.593, y = 339.392, z = 24.593 }, level = 33, state = GadgetState.GearStart, area_id = 18 },
	{ config_id = 72018, gadget_id = 70300088, pos = { x = -6283.306, y = 218.750, z = -2962.844 }, rot = { x = 0.000, y = 33.796, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 72019, gadget_id = 70300088, pos = { x = -6278.896, y = 219.633, z = -2958.152 }, rot = { x = 0.000, y = 62.885, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 72020, gadget_id = 70300088, pos = { x = -6267.362, y = 215.437, z = -2971.254 }, rot = { x = 0.000, y = 203.773, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 72021, gadget_id = 70310001, pos = { x = -6278.642, y = 216.889, z = -2971.013 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 18 },
	{ config_id = 72022, gadget_id = 70310001, pos = { x = -6264.577, y = 216.588, z = -2972.261 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 18 }
}

-- 区域
regions = {
	{ config_id = 72003, shape = RegionShape.SPHERE, radius = 5, pos = { x = -6269.985, y = 220.583, z = -2954.586 }, area_id = 18 }
}

-- 触发器
triggers = {
	{ config_id = 1072003, name = "ENTER_REGION_72003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_72003", action = "action_EVENT_ENTER_REGION_72003" },
	{ config_id = 1072007, name = "ANY_MONSTER_DIE_72007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_72007", action = "action_EVENT_ANY_MONSTER_DIE_72007" },
	{ config_id = 1072008, name = "ANY_MONSTER_DIE_72008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_72008", action = "action_EVENT_ANY_MONSTER_DIE_72008" },
	{ config_id = 1072009, name = "ANY_MONSTER_DIE_72009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_72009", action = "action_EVENT_ANY_MONSTER_DIE_72009" }
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
		monsters = { 72001, 72011, 72012, 72013 },
		gadgets = { 72004, 72010 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_72007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 72014, 72015, 72016, 72017 },
		gadgets = { 72002, 72005, 72018, 72019, 72020, 72021, 72022 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_72008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 72006 },
		regions = { 72003 },
		triggers = { "ENTER_REGION_72003", "ANY_MONSTER_DIE_72009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_72003(context, evt)
	if evt.param1 ~= 72003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_72003(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 72023, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 72024, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 72025, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 72026, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_72007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_72007(context, evt)
	-- 将configid为 72004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 72004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_72008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_72008(context, evt)
	-- 将configid为 72005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 72005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_72009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_72009(context, evt)
	-- 将configid为 72006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 72006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V2_2/DayFinishSuite"