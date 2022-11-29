-- 基础信息
local base_info = {
	group_id = 133225084
}

-- DEFS_MISCS
defs = {
        group_id = 133225084,
        questList = {7216719,7216619,7217226,7217320},        --按天填入完成的任务ID
        chestList = {84004,84005,84006},        --按Suite组填入每组Suite完成时打开的宝箱ID
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 84001, monster_id = 22010101, pos = { x = -6281.104, y = 224.991, z = -2887.422 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "深渊法师", disableWander = true, pose_id = 9013, climate_area_id = 7, area_id = 18 },
	{ config_id = 84002, monster_id = 22010101, pos = { x = -6278.063, y = 229.007, z = -2866.269 }, rot = { x = 0.000, y = 81.772, z = 0.000 }, level = 33, drop_tag = "深渊法师", disableWander = true, pose_id = 9013, climate_area_id = 7, area_id = 18 },
	{ config_id = 84011, monster_id = 22010101, pos = { x = -6276.297, y = 228.698, z = -2869.164 }, rot = { x = 0.000, y = 17.176, z = 0.000 }, level = 33, drop_tag = "深渊法师", disableWander = true, pose_id = 9013, climate_area_id = 7, area_id = 18 },
	{ config_id = 84012, monster_id = 22010101, pos = { x = -6316.673, y = 241.835, z = -2824.799 }, rot = { x = 0.000, y = 327.773, z = 0.000 }, level = 33, drop_tag = "深渊法师", disableWander = true, pose_id = 9013, climate_area_id = 7, area_id = 18 },
	{ config_id = 84014, monster_id = 22010101, pos = { x = -6316.226, y = 241.946, z = -2821.293 }, rot = { x = 0.000, y = 209.255, z = 0.000 }, level = 33, drop_tag = "深渊法师", disableWander = true, pose_id = 9013, climate_area_id = 7, area_id = 18 },
	{ config_id = 84015, monster_id = 22010101, pos = { x = -6319.333, y = 242.494, z = -2822.466 }, rot = { x = 0.000, y = 75.180, z = 0.000 }, level = 33, drop_tag = "深渊法师", disableWander = true, pose_id = 9013, climate_area_id = 7, area_id = 18 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 84003, gadget_id = 70300107, pos = { x = -6275.700, y = 228.804, z = -2866.707 }, rot = { x = 0.000, y = 106.484, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 18 },
	{ config_id = 84004, gadget_id = 70211002, pos = { x = -6284.646, y = 226.736, z = -2884.262 }, rot = { x = 22.256, y = 85.308, z = 346.935 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 84005, gadget_id = 70211151, pos = { x = -6274.421, y = 228.982, z = -2865.683 }, rot = { x = 359.036, y = 234.103, z = 4.646 }, level = 26, chest_drop_id = 21910025, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 84006, gadget_id = 70211151, pos = { x = -6318.374, y = 243.994, z = -2816.344 }, rot = { x = 11.531, y = 155.722, z = 18.505 }, level = 26, chest_drop_id = 21910026, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 84010, gadget_id = 70300107, pos = { x = -6280.923, y = 225.578, z = -2885.321 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 18 },
	{ config_id = 84013, gadget_id = 70300107, pos = { x = -6317.278, y = 242.320, z = -2822.860 }, rot = { x = 0.000, y = 229.013, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1084007, name = "ANY_MONSTER_DIE_84007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_84007", action = "action_EVENT_ANY_MONSTER_DIE_84007" },
	{ config_id = 1084008, name = "ANY_MONSTER_DIE_84008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_84008", action = "action_EVENT_ANY_MONSTER_DIE_84008" },
	{ config_id = 1084009, name = "ANY_MONSTER_DIE_84009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_84009", action = "action_EVENT_ANY_MONSTER_DIE_84009" }
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
		monsters = { 84001 },
		gadgets = { 84004, 84010 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_84007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 84002, 84011 },
		gadgets = { 84003, 84005 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_84008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 84012, 84014, 84015 },
		gadgets = { 84006, 84013 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_84009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_84007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_84007(context, evt)
	-- 将configid为 84004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 84004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_84008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_84008(context, evt)
	-- 将configid为 84005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 84005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_84009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_84009(context, evt)
	-- 将configid为 84006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 84006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V2_2/DayFinishSuite"