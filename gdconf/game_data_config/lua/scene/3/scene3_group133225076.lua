-- 基础信息
local base_info = {
	group_id = 133225076
}

-- DEFS_MISCS
defs = {
        group_id = 133225076,
        questList = {7216719,7216619,7217226,7217320},             --按天填入完成的任务ID
        chestList = {76004,76005,76006},        --按Suite组填入每组Suite完成时打开的宝箱ID
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 76001, monster_id = 21010101, pos = { x = -6100.556, y = 206.275, z = -2846.253 }, rot = { x = 0.000, y = 126.622, z = 0.000 }, level = 33, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, climate_area_id = 7, area_id = 18 },
	{ config_id = 76002, monster_id = 21010101, pos = { x = -6051.372, y = 218.613, z = -2888.947 }, rot = { x = 0.000, y = 94.232, z = 0.000 }, level = 33, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, climate_area_id = 7, area_id = 18 },
	{ config_id = 76003, monster_id = 21010101, pos = { x = -6050.947, y = 218.613, z = -2890.691 }, rot = { x = 0.000, y = 45.378, z = 0.000 }, level = 33, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, climate_area_id = 7, area_id = 18 },
	{ config_id = 76010, monster_id = 21010101, pos = { x = -6101.034, y = 206.331, z = -2853.206 }, rot = { x = 0.000, y = 45.378, z = 0.000 }, level = 33, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, climate_area_id = 7, area_id = 18 },
	{ config_id = 76011, monster_id = 21010101, pos = { x = -6095.236, y = 206.590, z = -2850.379 }, rot = { x = 0.000, y = 253.823, z = 0.000 }, level = 33, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, climate_area_id = 7, area_id = 18 },
	{ config_id = 76012, monster_id = 21030101, pos = { x = -6098.401, y = 208.334, z = -2850.037 }, rot = { x = 0.000, y = 239.080, z = 0.000 }, level = 33, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, climate_area_id = 7, area_id = 18 },
	{ config_id = 76013, monster_id = 21010101, pos = { x = -6047.406, y = 218.613, z = -2891.916 }, rot = { x = 0.000, y = 336.123, z = 0.000 }, level = 33, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, climate_area_id = 7, area_id = 18 },
	{ config_id = 76014, monster_id = 21030101, pos = { x = -6048.604, y = 219.576, z = -2887.376 }, rot = { x = 0.000, y = 219.798, z = 0.000 }, level = 33, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, climate_area_id = 7, area_id = 18 },
	{ config_id = 76015, monster_id = 21010101, pos = { x = -6047.190, y = 207.532, z = -2907.893 }, rot = { x = 0.000, y = 347.171, z = 0.000 }, level = 33, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, climate_area_id = 7, area_id = 18 },
	{ config_id = 76016, monster_id = 21010101, pos = { x = -6045.828, y = 207.465, z = -2906.642 }, rot = { x = 0.000, y = 296.061, z = 0.000 }, level = 33, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, climate_area_id = 7, area_id = 18 },
	{ config_id = 76017, monster_id = 21010101, pos = { x = -6043.326, y = 207.655, z = -2905.417 }, rot = { x = 0.000, y = 63.275, z = 0.000 }, level = 33, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, climate_area_id = 7, area_id = 18 },
	{ config_id = 76018, monster_id = 21030101, pos = { x = -6050.880, y = 211.133, z = -2906.706 }, rot = { x = 0.000, y = 115.772, z = 0.000 }, level = 33, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, climate_area_id = 7, area_id = 18 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 76004, gadget_id = 70211002, pos = { x = -6099.371, y = 207.016, z = -2842.293 }, rot = { x = 358.670, y = 242.275, z = 4.246 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 76005, gadget_id = 70211151, pos = { x = -6052.474, y = 218.564, z = -2885.513 }, rot = { x = 358.133, y = 256.236, z = 1.210 }, level = 26, chest_drop_id = 21910011, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 76006, gadget_id = 70211151, pos = { x = -6051.740, y = 209.700, z = -2908.051 }, rot = { x = 0.000, y = 209.782, z = 0.000 }, level = 26, chest_drop_id = 21910012, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1076007, name = "ANY_MONSTER_DIE_76007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_76007", action = "action_EVENT_ANY_MONSTER_DIE_76007" },
	{ config_id = 1076008, name = "ANY_MONSTER_DIE_76008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_76008", action = "action_EVENT_ANY_MONSTER_DIE_76008" },
	{ config_id = 1076009, name = "ANY_MONSTER_DIE_76009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_76009", action = "action_EVENT_ANY_MONSTER_DIE_76009" }
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
		monsters = { 76001, 76010, 76011, 76012 },
		gadgets = { 76004 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_76007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 76002, 76003, 76013, 76014 },
		gadgets = { 76005 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_76008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 76015, 76016, 76017, 76018 },
		gadgets = { 76006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_76009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_76007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_76007(context, evt)
	-- 将configid为 76004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 76004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_76008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_76008(context, evt)
	-- 将configid为 76005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 76005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_76009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_76009(context, evt)
	-- 将configid为 76006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 76006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V2_2/DayFinishSuite"