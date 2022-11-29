-- 基础信息
local base_info = {
	group_id = 133001231
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 995, monster_id = 20011201, pos = { x = 1712.069, y = 263.176, z = -1294.951 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 12, drop_tag = "史莱姆", area_id = 2 },
	{ config_id = 996, monster_id = 20011201, pos = { x = 1707.877, y = 262.943, z = -1291.357 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 12, drop_tag = "史莱姆", area_id = 2 },
	{ config_id = 997, monster_id = 20011201, pos = { x = 1708.206, y = 263.376, z = -1298.694 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 12, drop_tag = "史莱姆", area_id = 2 },
	{ config_id = 998, monster_id = 20011301, pos = { x = 1709.456, y = 263.101, z = -1293.498 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 12, drop_tag = "大史莱姆", area_id = 2 },
	{ config_id = 231002, monster_id = 20011201, pos = { x = 1711.656, y = 263.168, z = -1294.478 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_id = 1000100, area_id = 2 },
	{ config_id = 231003, monster_id = 20011201, pos = { x = 1708.997, y = 263.106, z = -1293.487 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_id = 1000100, area_id = 2 },
	{ config_id = 231004, monster_id = 20011201, pos = { x = 1710.547, y = 263.291, z = -1296.737 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_id = 1000100, area_id = 2 }
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
	{ config_id = 1231001, name = "ANY_MONSTER_DIE_231001", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_231001", action = "action_EVENT_ANY_MONSTER_DIE_231001", trigger_count = 0 },
	{ config_id = 1231005, name = "QUEST_FINISH_231005", event = EventType.EVENT_QUEST_FINISH, source = "2006302", condition = "condition_EVENT_QUEST_FINISH_231005", action = "action_EVENT_QUEST_FINISH_231005" },
	{ config_id = 1231006, name = "ANY_MONSTER_DIE_231006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_231006" },
	{ config_id = 1231007, name = "QUEST_FINISH_231007", event = EventType.EVENT_QUEST_FINISH, source = "2006308", condition = "", action = "action_EVENT_QUEST_FINISH_231007", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "is_monster_killed", value = 1, no_refresh = false }
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
		monsters = { 995, 996, 997, 998 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 231002, 231003, 231004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_231001", "QUEST_FINISH_231005", "ANY_MONSTER_DIE_231006", "QUEST_FINISH_231007" },
		rand_weight = 0,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_231001(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_231001(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330012311") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_231005(context, evt)
	-- 判断变量"is_monster_killed"为0
	if ScriptLib.GetGroupVariableValue(context, "is_monster_killed") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_231005(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133001231, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_231006(context, evt)
	-- 变量"is_monster_killed"赋值为0
	ScriptLib.SetGroupVariableValue(context, "is_monster_killed", 0)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_231007(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133001231, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end