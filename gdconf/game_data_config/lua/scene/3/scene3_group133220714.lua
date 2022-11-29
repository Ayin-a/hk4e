-- 基础信息
local base_info = {
	group_id = 133220714
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 714003, monster_id = 23030101, pos = { x = -2587.103, y = 424.458, z = -4466.282 }, rot = { x = 0.000, y = 226.428, z = 0.000 }, level = 27, drop_id = 1000100, affix = { 1018 }, title_id = 154, special_name_id = 10091, area_id = 11 }
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
	{ config_id = 1714001, name = "ANY_MONSTER_DIE_714001", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_714001", action = "action_EVENT_ANY_MONSTER_DIE_714001", trigger_count = 0 },
	{ config_id = 1714002, name = "GROUP_LOAD_714002", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_714002", action = "action_EVENT_GROUP_LOAD_714002", trigger_count = 0 },
	{ config_id = 1714004, name = "TIME_AXIS_PASS_714004", event = EventType.EVENT_TIME_AXIS_PASS, source = "end", condition = "condition_EVENT_TIME_AXIS_PASS_714004", action = "action_EVENT_TIME_AXIS_PASS_714004", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "win", value = 0, no_refresh = true }
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
		triggers = { "GROUP_LOAD_714002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 714003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_714001", "GROUP_LOAD_714002", "TIME_AXIS_PASS_714004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_714001(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133220714) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_714001(context, evt)
	-- 将本组内变量名为 "win" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "win", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建标识为"end"，时间节点为{2}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "end", {2}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_714002(context, evt)
	-- 判断变量"win"为1
	if ScriptLib.GetGroupVariableValue(context, "win") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_714002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7226507") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_714004(context, evt)
	if "end" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_714004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7226507") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end