-- 基础信息
local base_info = {
	group_id = 133303071
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 71001, monster_id = 26090201, pos = { x = -1168.839, y = 196.951, z = 3516.490 }, rot = { x = 0.000, y = 83.208, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 5209 }, pose_id = 101, area_id = 23 },
	{ config_id = 71002, monster_id = 26090201, pos = { x = -1131.733, y = 185.984, z = 3561.441 }, rot = { x = 0.000, y = 53.292, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 5209 }, pose_id = 101, area_id = 23 },
	{ config_id = 71003, monster_id = 26090501, pos = { x = -1162.743, y = 193.655, z = 3583.179 }, rot = { x = 0.000, y = 232.095, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, affix = { 5209 }, pose_id = 101, area_id = 23 },
	{ config_id = 71004, monster_id = 26090201, pos = { x = -1158.981, y = 190.659, z = 3596.414 }, rot = { x = 0.000, y = 232.095, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 5209 }, pose_id = 101, area_id = 23 },
	{ config_id = 71005, monster_id = 26090801, pos = { x = -1150.218, y = 185.957, z = 3628.281 }, rot = { x = 0.000, y = 232.095, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 5209 }, pose_id = 101, area_id = 23 },
	{ config_id = 71006, monster_id = 26090901, pos = { x = -1152.964, y = 184.187, z = 3650.668 }, rot = { x = 0.000, y = 232.095, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 5209 }, pose_id = 101, area_id = 23 },
	{ config_id = 71007, monster_id = 26090801, pos = { x = -1126.257, y = 187.418, z = 3602.033 }, rot = { x = 0.000, y = 232.095, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, affix = { 5209 }, pose_id = 101, area_id = 23 },
	{ config_id = 71008, monster_id = 26090801, pos = { x = -1104.958, y = 177.912, z = 3575.694 }, rot = { x = 0.000, y = 232.095, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, affix = { 5209 }, pose_id = 101, area_id = 23 },
	{ config_id = 71009, monster_id = 26090801, pos = { x = -1075.800, y = 175.180, z = 3597.684 }, rot = { x = 0.000, y = 232.095, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, affix = { 5209 }, pose_id = 101, area_id = 23 },
	{ config_id = 71010, monster_id = 26090701, pos = { x = -1121.077, y = 173.773, z = 3681.144 }, rot = { x = 0.000, y = 232.095, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 5209 }, pose_id = 101, area_id = 23 },
	{ config_id = 71012, monster_id = 26090701, pos = { x = -1131.636, y = 189.168, z = 3660.795 }, rot = { x = 0.000, y = 232.095, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 5209 }, pose_id = 101, area_id = 23 },
	{ config_id = 71014, monster_id = 26090501, pos = { x = -1073.340, y = 173.366, z = 3672.533 }, rot = { x = 0.000, y = 232.095, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 5209 }, pose_id = 101, area_id = 23 },
	{ config_id = 71015, monster_id = 26090501, pos = { x = -1070.074, y = 170.867, z = 3689.372 }, rot = { x = 0.000, y = 232.095, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 5209 }, pose_id = 101, area_id = 23 },
	{ config_id = 71016, monster_id = 26090501, pos = { x = -1110.702, y = 174.318, z = 3678.757 }, rot = { x = 0.000, y = 232.095, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, affix = { 5209 }, pose_id = 101, area_id = 23 },
	{ config_id = 71017, monster_id = 26090501, pos = { x = -1056.646, y = 172.655, z = 3605.216 }, rot = { x = 0.000, y = 232.095, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, affix = { 5209 }, pose_id = 101, area_id = 23 }
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
	{ config_id = 1071018, name = "MONSTER_BATTLE_71018", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_71018", trigger_count = 0 },
	{ config_id = 1071019, name = "MONSTER_BATTLE_71019", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_71019", trigger_count = 0 },
	{ config_id = 1071020, name = "MONSTER_BATTLE_71020", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_71020", trigger_count = 0 },
	{ config_id = 1071021, name = "MONSTER_BATTLE_71021", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_71021", trigger_count = 0 },
	{ config_id = 1071022, name = "MONSTER_BATTLE_71022", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_71022", trigger_count = 0 }
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
		monsters = { 71001, 71002, 71003, 71004, 71005, 71006, 71007, 71008, 71009, 71010, 71012, 71014, 71015, 71016, 71017 },
		gadgets = { },
		regions = { },
		triggers = { "MONSTER_BATTLE_71018" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 71001, 71002, 71003, 71004, 71005, 71006, 71007, 71008, 71009, 71010, 71012, 71014, 71015, 71016, 71017 },
		gadgets = { },
		regions = { },
		triggers = { "MONSTER_BATTLE_71019" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 71001, 71002, 71003, 71004, 71005, 71006, 71007, 71008, 71009, 71010, 71012, 71014, 71015, 71016, 71017 },
		gadgets = { },
		regions = { },
		triggers = { "MONSTER_BATTLE_71020" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 71001, 71002, 71003, 71004, 71005, 71006, 71007, 71008, 71009, 71010, 71012, 71014, 71015, 71016, 71017 },
		gadgets = { },
		regions = { },
		triggers = { "MONSTER_BATTLE_71021" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { 71001, 71002, 71003, 71004, 71005, 71006, 71007, 71008, 71009, 71010, 71012, 71014, 71015, 71016, 71017 },
		gadgets = { },
		regions = { },
		triggers = { "MONSTER_BATTLE_71022" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_MONSTER_BATTLE_71018(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7301504_fail") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_71019(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7301505_fail") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_71020(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7301506_fail") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_71021(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7301507_fail") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_71022(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7301508_fail") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end