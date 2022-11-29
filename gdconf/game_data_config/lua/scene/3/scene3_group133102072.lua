-- 基础信息
local base_info = {
	group_id = 133102072
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 125, monster_id = 21020301, pos = { x = 1228.863, y = 200.437, z = 350.126 }, rot = { x = 3.786, y = 277.824, z = 358.717 }, level = 18, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 5 },
	{ config_id = 422, monster_id = 21010501, pos = { x = 1205.896, y = 207.924, z = 350.375 }, rot = { x = 0.000, y = 198.994, z = 0.000 }, level = 16, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, area_id = 5 },
	{ config_id = 423, monster_id = 21010501, pos = { x = 1211.209, y = 201.572, z = 353.859 }, rot = { x = 359.110, y = 157.823, z = 348.551 }, level = 16, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, area_id = 5 },
	{ config_id = 425, monster_id = 21011201, pos = { x = 1224.792, y = 200.615, z = 343.742 }, rot = { x = 2.847, y = 232.998, z = 353.406 }, level = 16, drop_tag = "丘丘人", disableWander = true, pose_id = 9013, area_id = 5 },
	{ config_id = 72001, monster_id = 21020301, pos = { x = 1230.490, y = 200.499, z = 352.187 }, rot = { x = 0.000, y = 260.326, z = 0.000 }, level = 16, drop_id = 1000100, disableWander = true, pose_id = 401, area_id = 5 },
	{ config_id = 72006, monster_id = 21010601, pos = { x = 1228.316, y = 201.344, z = 342.479 }, rot = { x = 0.000, y = 40.639, z = 0.000 }, level = 16, drop_id = 1000100, disableWander = true, pose_id = 9011, area_id = 5 },
	{ config_id = 72008, monster_id = 20011201, pos = { x = 1229.525, y = 202.031, z = 343.658 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_id = 1000100, pose_id = 901, area_id = 5 },
	{ config_id = 72011, monster_id = 21010601, pos = { x = 1223.053, y = 200.000, z = 354.686 }, rot = { x = 0.000, y = 20.900, z = 0.000 }, level = 16, drop_id = 1000100, disableWander = true, pose_id = 9011, area_id = 5 },
	{ config_id = 72012, monster_id = 21011001, pos = { x = 1205.900, y = 207.924, z = 349.729 }, rot = { x = 0.000, y = 199.519, z = 0.000 }, level = 16, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 278, gadget_id = 70211022, pos = { x = 1236.394, y = 201.779, z = 353.031 }, rot = { x = 0.304, y = 261.502, z = 359.868 }, level = 16, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 286, gadget_id = 70220013, pos = { x = 1234.591, y = 201.028, z = 345.395 }, rot = { x = 3.535, y = 329.453, z = 358.953 }, level = 16, area_id = 5 },
	{ config_id = 287, gadget_id = 70220013, pos = { x = 1221.601, y = 200.454, z = 341.837 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, area_id = 5 },
	{ config_id = 72002, gadget_id = 70300087, pos = { x = 1223.256, y = 200.084, z = 349.058 }, rot = { x = 2.681, y = 0.063, z = 2.684 }, level = 16, area_id = 5 },
	{ config_id = 72004, gadget_id = 70220014, pos = { x = 1232.314, y = 200.843, z = 347.098 }, rot = { x = 351.234, y = 30.274, z = 356.231 }, level = 16, area_id = 5 },
	{ config_id = 72005, gadget_id = 70220014, pos = { x = 1218.137, y = 200.571, z = 340.488 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, area_id = 5 },
	{ config_id = 72007, gadget_id = 70300087, pos = { x = 1229.508, y = 201.164, z = 343.570 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, area_id = 5 },
	{ config_id = 72009, gadget_id = 70220005, pos = { x = 1223.564, y = 200.016, z = 355.807 }, rot = { x = 0.000, y = 121.856, z = 0.000 }, level = 16, area_id = 5 },
	{ config_id = 72010, gadget_id = 70220005, pos = { x = 1222.643, y = 200.033, z = 355.948 }, rot = { x = 0.000, y = 121.856, z = 0.000 }, level = 16, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000164, name = "ANY_MONSTER_DIE_164", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_164", action = "action_EVENT_ANY_MONSTER_DIE_164" },
	{ config_id = 1072013, name = "ANY_MONSTER_DIE_72013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_72013", action = "action_EVENT_ANY_MONSTER_DIE_72013" }
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
		monsters = { 125, 422, 423, 425 },
		gadgets = { 278, 286, 287, 72002, 72004, 72005 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_164" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 72001, 72006, 72008, 72011, 72012 },
		gadgets = { 72007, 72009, 72010 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_72013" },
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
function condition_EVENT_ANY_MONSTER_DIE_164(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_164(context, evt)
	-- 将configid为 278 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 278, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_72013(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_72013(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310207201") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end