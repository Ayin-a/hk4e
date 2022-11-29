-- 基础信息
local base_info = {
	group_id = 133220250
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 250001, monster_id = 22010401, pos = { x = -2762.822, y = 200.191, z = -4601.436 }, rot = { x = 0.000, y = 163.960, z = 0.000 }, level = 27, drop_id = 1000100, pose_id = 9013, area_id = 11 },
	{ config_id = 250003, monster_id = 21010501, pos = { x = -2766.121, y = 200.171, z = -4593.935 }, rot = { x = 0.000, y = 166.992, z = 0.000 }, level = 27, drop_id = 1000100, pose_id = 9012, area_id = 11 },
	{ config_id = 250005, monster_id = 21010501, pos = { x = -2765.598, y = 200.534, z = -4590.225 }, rot = { x = 0.000, y = 171.146, z = 0.000 }, level = 27, drop_id = 1000100, pose_id = 9012, area_id = 11 },
	{ config_id = 250006, monster_id = 21010501, pos = { x = -2768.936, y = 200.379, z = -4591.052 }, rot = { x = 0.000, y = 161.786, z = 0.000 }, level = 27, drop_id = 1000100, pose_id = 9012, area_id = 11 },
	{ config_id = 250007, monster_id = 21030601, pos = { x = -2759.282, y = 200.062, z = -4600.083 }, rot = { x = 0.000, y = 310.408, z = 0.000 }, level = 27, drop_id = 1000100, area_id = 11 },
	{ config_id = 250009, monster_id = 21030601, pos = { x = -2769.504, y = 200.070, z = -4600.285 }, rot = { x = 0.000, y = 11.698, z = 0.000 }, level = 27, drop_id = 1000100, area_id = 11 },
	{ config_id = 250010, monster_id = 22010101, pos = { x = -2759.223, y = 200.320, z = -4592.585 }, rot = { x = 0.000, y = 244.948, z = 0.000 }, level = 27, drop_id = 1000100, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 250002, gadget_id = 70300107, pos = { x = -2762.117, y = 200.087, z = -4604.193 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1250011, name = "ANY_MONSTER_DIE_250011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_250011", action = "action_EVENT_ANY_MONSTER_DIE_250011" },
	{ config_id = 1250012, name = "ANY_MONSTER_DIE_250012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_250012", action = "action_EVENT_ANY_MONSTER_DIE_250012" }
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
		monsters = { 250001, 250003, 250005, 250006 },
		gadgets = { 250002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_250011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 250007, 250009, 250010 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_250012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_250011(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_250011(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220250, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_250012(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_250012(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133220250") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end