-- 基础信息
local base_info = {
	group_id = 133306001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1001, monster_id = 25210601, pos = { x = -2072.790, y = 201.622, z = 2601.962 }, rot = { x = 0.000, y = 176.945, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, isElite = true, title_id = 10116, special_name_id = 10058, area_id = 21 },
	{ config_id = 1002, monster_id = 25210602, pos = { x = -2075.126, y = 201.622, z = 2596.101 }, rot = { x = 0.000, y = 83.502, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, isElite = true, title_id = 10117, special_name_id = 10058, area_id = 21 },
	{ config_id = 1003, monster_id = 25210201, pos = { x = -2078.037, y = 201.648, z = 2597.792 }, rot = { x = 0.000, y = 92.092, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, area_id = 21 },
	{ config_id = 1004, monster_id = 25210201, pos = { x = -2077.962, y = 201.651, z = 2595.228 }, rot = { x = 0.000, y = 82.832, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, area_id = 21 },
	{ config_id = 1005, monster_id = 25210301, pos = { x = -2074.000, y = 201.622, z = 2599.446 }, rot = { x = 0.000, y = 164.495, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, area_id = 21 },
	{ config_id = 1008, monster_id = 25210503, pos = { x = -2071.133, y = 201.622, z = 2599.847 }, rot = { x = 0.000, y = 195.035, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1007, gadget_id = 70710535, pos = { x = -2067.385, y = 202.253, z = 2600.633 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1001006, name = "ANY_MONSTER_DIE_1006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1006", action = "action_EVENT_ANY_MONSTER_DIE_1006", trigger_count = 0 },
	{ config_id = 1001009, name = "ANY_MONSTER_DIE_1009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1009", action = "action_EVENT_ANY_MONSTER_DIE_1009", trigger_count = 0 }
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
		monsters = { 1002, 1003, 1004 },
		gadgets = { 1007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 1001, 1005, 1008 },
		gadgets = { 1007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1006(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133306001, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13330600101") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end