-- 基础信息
local base_info = {
	group_id = 133210496
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 496006, monster_id = 20010501, pos = { x = -4029.520, y = 195.836, z = -817.341 }, rot = { x = 0.000, y = 131.539, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 17 },
	{ config_id = 496007, monster_id = 20010501, pos = { x = -4029.250, y = 195.731, z = -820.233 }, rot = { x = 0.000, y = 69.150, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 17 },
	{ config_id = 496008, monster_id = 20010601, pos = { x = -4026.977, y = 195.568, z = -818.138 }, rot = { x = 0.000, y = 81.248, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 17 },
	{ config_id = 496009, monster_id = 20010901, pos = { x = -4027.266, y = 195.737, z = -821.839 }, rot = { x = 0.000, y = 54.275, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 17 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 496001, gadget_id = 71700105, pos = { x = -4023.199, y = 195.047, z = -818.229 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 496002, gadget_id = 71700105, pos = { x = -4023.447, y = 194.980, z = -817.603 }, rot = { x = 0.000, y = 283.551, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 496003, gadget_id = 70710536, pos = { x = -4023.541, y = 194.965, z = -819.134 }, rot = { x = 3.322, y = 0.000, z = 356.584 }, level = 1, area_id = 17 },
	{ config_id = 496004, gadget_id = 70710536, pos = { x = -4024.281, y = 195.037, z = -818.283 }, rot = { x = 7.007, y = 359.622, z = 351.875 }, level = 1, area_id = 17 },
	{ config_id = 496005, gadget_id = 70710536, pos = { x = -4024.501, y = 194.994, z = -817.007 }, rot = { x = 5.664, y = 63.904, z = 1.869 }, level = 1, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1496010, name = "QUEST_START_496010", event = EventType.EVENT_QUEST_START, source = "7281303", condition = "", action = "action_EVENT_QUEST_START_496010", trigger_count = 0 },
	{ config_id = 1496011, name = "ANY_MONSTER_DIE_496011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_496011", action = "action_EVENT_ANY_MONSTER_DIE_496011" },
	{ config_id = 1496012, name = "QUEST_START_496012", event = EventType.EVENT_QUEST_START, source = "7281304", condition = "condition_EVENT_QUEST_START_496012", action = "action_EVENT_QUEST_START_496012", trigger_count = 0 }
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
		gadgets = { 496001, 496002, 496003, 496004, 496005 },
		regions = { },
		triggers = { "QUEST_START_496010", "ANY_MONSTER_DIE_496011", "QUEST_START_496012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 496006, 496007, 496008, 496009 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 496001, 496002 },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_START_496010(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133210496, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_496011(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_496011(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133210496") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_496012(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_496012(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133210496") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end