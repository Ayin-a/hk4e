-- 基础信息
local base_info = {
	group_id = 133001917
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 917001, monster_id = 21010501, pos = { x = 1961.819, y = 205.419, z = -1406.538 }, rot = { x = 0.000, y = 259.053, z = 0.000 }, level = 5, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 2 },
	{ config_id = 917002, monster_id = 21010501, pos = { x = 1970.430, y = 205.757, z = -1397.988 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 2 },
	{ config_id = 917003, monster_id = 21010101, pos = { x = 1966.339, y = 206.247, z = -1406.910 }, rot = { x = 0.000, y = 58.946, z = 0.000 }, level = 5, drop_id = 1000100, disableWander = true, pose_id = 9012, area_id = 2 },
	{ config_id = 917004, monster_id = 21010101, pos = { x = 1969.582, y = 206.513, z = -1404.295 }, rot = { x = 0.000, y = 188.579, z = 0.000 }, level = 5, drop_id = 1000100, disableWander = true, pose_id = 9012, area_id = 2 },
	{ config_id = 917005, monster_id = 21030301, pos = { x = 1970.138, y = 206.970, z = -1409.042 }, rot = { x = 0.000, y = 311.256, z = 0.000 }, level = 5, drop_id = 1000100, disableWander = true, pose_id = 9012, area_id = 2 },
	{ config_id = 917006, monster_id = 21020201, pos = { x = 1973.248, y = 207.486, z = -1411.665 }, rot = { x = 0.000, y = 325.621, z = 0.000 }, level = 5, drop_id = 1000100, disableWander = true, area_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 917007, gadget_id = 70300107, pos = { x = 1969.031, y = 206.697, z = -1407.307 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, state = GadgetState.GearStart, area_id = 2 },
	{ config_id = 917008, gadget_id = 70220013, pos = { x = 1973.548, y = 207.031, z = -1405.629 }, rot = { x = 0.089, y = 0.000, z = 0.000 }, level = 5, area_id = 2 },
	{ config_id = 917009, gadget_id = 70220026, pos = { x = 1974.330, y = 206.869, z = -1403.784 }, rot = { x = 0.000, y = 29.832, z = 0.000 }, level = 5, area_id = 2 },
	{ config_id = 917010, gadget_id = 70220026, pos = { x = 1975.046, y = 207.171, z = -1405.992 }, rot = { x = 0.000, y = 8.168, z = 0.000 }, level = 5, area_id = 2 },
	{ config_id = 917011, gadget_id = 70220014, pos = { x = 1966.243, y = 206.426, z = -1410.107 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, area_id = 2 },
	{ config_id = 917012, gadget_id = 70220014, pos = { x = 1966.746, y = 206.504, z = -1411.229 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, area_id = 2 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1917013, name = "ANY_MONSTER_DIE_917013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_917013", action = "action_EVENT_ANY_MONSTER_DIE_917013", trigger_count = 0 }
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
		monsters = { 917001, 917002, 917003, 917004, 917005, 917006 },
		gadgets = { 917007, 917008, 917009, 917010, 917011, 917012 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_917013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_917013(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_917013(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330019171") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end