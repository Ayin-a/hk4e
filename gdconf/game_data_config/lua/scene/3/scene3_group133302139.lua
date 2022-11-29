-- 基础信息
local base_info = {
	group_id = 133302139
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 139001, monster_id = 26060201, pos = { x = -446.539, y = 203.885, z = 2904.699 }, rot = { x = 0.000, y = 280.378, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 24 },
	{ config_id = 139002, monster_id = 26060201, pos = { x = -447.537, y = 203.885, z = 2904.597 }, rot = { x = 0.000, y = 152.713, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 24 },
	{ config_id = 139003, monster_id = 26060201, pos = { x = -446.619, y = 203.885, z = 2903.449 }, rot = { x = 0.000, y = 280.378, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 24 },
	{ config_id = 139004, monster_id = 26060201, pos = { x = -445.585, y = 203.885, z = 2902.219 }, rot = { x = 0.000, y = 280.378, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 24 }
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
	{ config_id = 1139005, name = "ANY_MONSTER_DIE_139005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_139005", action = "action_EVENT_ANY_MONSTER_DIE_139005" },
	{ config_id = 1139006, name = "GROUP_LOAD_139006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_139006", action = "action_EVENT_GROUP_LOAD_139006" }
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
		monsters = { 139001, 139002, 139003, 139004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_139005", "GROUP_LOAD_139006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_139005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_139005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q230170301") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_139006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_139006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q230170301") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end