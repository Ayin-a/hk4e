-- 基础信息
local base_info = {
	group_id = 133212150
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 150001, monster_id = 25100101, pos = { x = -3666.199, y = 246.895, z = -2134.413 }, rot = { x = 0.000, y = 144.438, z = 0.000 }, level = 27, drop_id = 1000100, affix = { 1101 }, pose_id = 1, area_id = 13 },
	{ config_id = 150002, monster_id = 25080101, pos = { x = -3665.746, y = 246.288, z = -2140.709 }, rot = { x = 0.000, y = 120.958, z = 0.000 }, level = 27, drop_id = 1000100, affix = { 1101 }, pose_id = 1, area_id = 13 },
	{ config_id = 150003, monster_id = 25080101, pos = { x = -3661.880, y = 246.483, z = -2137.038 }, rot = { x = 0.000, y = 142.684, z = 0.000 }, level = 27, drop_id = 1000100, affix = { 1101 }, pose_id = 1, area_id = 13 },
	{ config_id = 150004, monster_id = 25080101, pos = { x = -3659.030, y = 246.205, z = -2141.511 }, rot = { x = 0.000, y = 116.005, z = 0.000 }, level = 27, drop_id = 1000100, affix = { 1101 }, pose_id = 1, area_id = 13 },
	{ config_id = 150005, monster_id = 25100101, pos = { x = -3662.750, y = 246.427, z = -2138.625 }, rot = { x = 0.000, y = 116.005, z = 0.000 }, level = 27, drop_id = 1000100, affix = { 1101 }, pose_id = 1, area_id = 13 },
	{ config_id = 150006, monster_id = 25080101, pos = { x = -3662.208, y = 246.016, z = -2143.834 }, rot = { x = 0.000, y = 116.005, z = 0.000 }, level = 27, drop_id = 1000100, affix = { 1101 }, pose_id = 1, area_id = 13 },
	{ config_id = 150007, monster_id = 25100101, pos = { x = -3660.378, y = 246.351, z = -2139.201 }, rot = { x = 0.000, y = 136.851, z = 0.000 }, level = 27, drop_id = 1000100, affix = { 1101 }, pose_id = 1, area_id = 13 },
	{ config_id = 150012, monster_id = 25100201, pos = { x = -3663.253, y = 246.188, z = -2141.920 }, rot = { x = 0.000, y = 137.805, z = 0.000 }, level = 27, drop_id = 1000100, affix = { 1101 }, pose_id = 1, area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1150008, name = "ANY_MONSTER_DIE_150008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_150008", action = "action_EVENT_ANY_MONSTER_DIE_150008" },
	{ config_id = 1150009, name = "ANY_MONSTER_DIE_150009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_150009", action = "action_EVENT_ANY_MONSTER_DIE_150009" },
	{ config_id = 1150010, name = "ANY_MONSTER_DIE_150010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_150010", action = "action_EVENT_ANY_MONSTER_DIE_150010" },
	{ config_id = 1150011, name = "ANY_MONSTER_LIVE_150011", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_150011", action = "" }
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
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 150001, 150002, 150003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_150008", "ANY_MONSTER_LIVE_150011" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 150004, 150005, 150006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_150009" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 150007, 150012 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_150010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_150008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_150008(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212150, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_150009(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133212150) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_150009(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212150, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_150010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_150010(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7213805_finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_150011(context, evt)
	if 150002 ~= evt.param1 then
		return false
	end
	
	return true
end