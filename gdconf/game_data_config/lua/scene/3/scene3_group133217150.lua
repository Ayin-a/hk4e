-- 基础信息
local base_info = {
	group_id = 133217150
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 150001, monster_id = 21010101, pos = { x = -4390.600, y = 204.485, z = -3946.495 }, rot = { x = 0.000, y = 322.199, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 9010, area_id = 14 },
	{ config_id = 150002, monster_id = 21010101, pos = { x = -4393.642, y = 205.391, z = -3944.133 }, rot = { x = 0.000, y = 97.312, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 9010, area_id = 14 },
	{ config_id = 150003, monster_id = 21010101, pos = { x = -4389.792, y = 204.970, z = -3942.906 }, rot = { x = 0.000, y = 213.069, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 9010, area_id = 14 }
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
	{ config_id = 1150004, name = "ANY_MONSTER_DIE_150004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_150004", action = "action_EVENT_ANY_MONSTER_DIE_150004", trigger_count = 0 },
	{ config_id = 1150005, name = "GROUP_LOAD_150005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_150005", action = "action_EVENT_GROUP_LOAD_150005", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "Finish", value = 0, no_refresh = true }
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
		triggers = { "GROUP_LOAD_150005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 150001, 150002, 150003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_150004", "GROUP_LOAD_150005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_150004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_150004(context, evt)
	-- 将本组内变量名为 "Finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7216201") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_150005(context, evt)
	-- 判断变量"Finish"为1
	if ScriptLib.GetGroupVariableValue(context, "Finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_150005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7216201") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end