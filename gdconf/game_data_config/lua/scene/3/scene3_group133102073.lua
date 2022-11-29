-- 基础信息
local base_info = {
	group_id = 133102073
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 117, monster_id = 21010201, pos = { x = 1050.906, y = 200.762, z = 173.910 }, rot = { x = 0.000, y = 321.215, z = 0.000 }, level = 15, drop_tag = "丘丘人", disableWander = true, pose_id = 9002, area_id = 5 },
	{ config_id = 127, monster_id = 21010301, pos = { x = 1048.165, y = 200.762, z = 177.987 }, rot = { x = 0.000, y = 147.690, z = 0.000 }, level = 15, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 5 },
	{ config_id = 128, monster_id = 21020201, pos = { x = 1047.369, y = 200.762, z = 170.804 }, rot = { x = 1.248, y = 45.814, z = 1.284 }, level = 15, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 5 },
	{ config_id = 132, monster_id = 21010501, pos = { x = 1058.349, y = 200.762, z = 168.613 }, rot = { x = 0.000, y = 26.859, z = 0.000 }, level = 16, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, area_id = 5 },
	{ config_id = 314, monster_id = 21020301, pos = { x = 1061.441, y = 200.755, z = 174.952 }, rot = { x = 359.393, y = 16.327, z = 358.889 }, level = 18, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 5 },
	{ config_id = 315, monster_id = 21011201, pos = { x = 1057.802, y = 200.762, z = 183.408 }, rot = { x = 0.000, y = 75.251, z = 0.000 }, level = 16, drop_tag = "丘丘人", area_id = 5 },
	{ config_id = 317, monster_id = 21030301, pos = { x = 1045.083, y = 200.762, z = 175.347 }, rot = { x = 0.000, y = 45.746, z = 0.000 }, level = 16, drop_tag = "丘丘萨满", disableWander = true, area_id = 5 },
	{ config_id = 318, monster_id = 21010501, pos = { x = 1053.743, y = 206.150, z = 179.897 }, rot = { x = 0.000, y = 15.958, z = 0.000 }, level = 16, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, area_id = 5 },
	{ config_id = 324, monster_id = 21010301, pos = { x = 1039.669, y = 200.762, z = 180.273 }, rot = { x = 0.000, y = 322.005, z = 0.000 }, level = 16, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 279, gadget_id = 70211022, pos = { x = 1054.059, y = 200.627, z = 174.746 }, rot = { x = 353.583, y = 24.608, z = 359.025 }, level = 16, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 293, gadget_id = 70220013, pos = { x = 1037.951, y = 200.260, z = 175.987 }, rot = { x = 354.640, y = 0.126, z = 1.770 }, level = 1, area_id = 5 },
	{ config_id = 73001, gadget_id = 70310009, pos = { x = 1038.827, y = 200.532, z = 180.644 }, rot = { x = 358.551, y = 100.098, z = 357.925 }, level = 1, area_id = 5 },
	{ config_id = 73002, gadget_id = 70310001, pos = { x = 1057.432, y = 200.762, z = 190.927 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 5 },
	{ config_id = 73003, gadget_id = 70310001, pos = { x = 1064.257, y = 200.762, z = 190.182 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000165, name = "ANY_MONSTER_DIE_165", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_165", action = "action_EVENT_ANY_MONSTER_DIE_165" }
}

-- 变量
variables = {
	{ config_id = 1, name = "finish", value = 0, no_refresh = false }
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
		monsters = { 314, 315, 318, 324 },
		gadgets = { 279, 293, 73001, 73002, 73003 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_165" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 117, 127, 128, 132, 317 },
		gadgets = { 293, 73001, 73002, 73003 },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_165(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_165(context, evt)
	-- 将configid为 279 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 279, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end