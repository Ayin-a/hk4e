-- 基础信息
local base_info = {
	group_id = 133309319
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 319002, monster_id = 24040201, pos = { x = -2356.546, y = 142.592, z = 5535.068 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 32, drop_tag = "元能构装体", pose_id = 1, title_id = 10138, area_id = 27 },
	{ config_id = 319003, monster_id = 24040201, pos = { x = -2340.365, y = 142.891, z = 5552.395 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 32, drop_tag = "元能构装体", pose_id = 1, area_id = 27 }
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
	{ config_id = 1319001, name = "ANY_MONSTER_DIE_319001", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_319001", action = "action_EVENT_ANY_MONSTER_DIE_319001" },
	{ config_id = 1319004, name = "GROUP_LOAD_319004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_319004", action = "action_EVENT_GROUP_LOAD_319004", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "monsterdie", value = 0, no_refresh = true }
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
		monsters = { 319002, 319003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_319001", "GROUP_LOAD_319004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_319001(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_319001(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7329302") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "monsterdie" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monsterdie", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_319004(context, evt)
	-- 判断变量"monsterdie"为1
	if ScriptLib.GetGroupVariableValue(context, "monsterdie") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_319004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7329302") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end