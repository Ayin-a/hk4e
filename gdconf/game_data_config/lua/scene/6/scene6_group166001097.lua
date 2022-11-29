-- 基础信息
local base_info = {
	group_id = 166001097
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 97001, monster_id = 23030101, pos = { x = 351.669, y = 176.992, z = 804.900 }, rot = { x = 0.000, y = 149.609, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 9009 }, title_id = 10080, special_name_id = 10113, area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 97004, gadget_id = 70360001, pos = { x = 352.493, y = 177.151, z = 804.589 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1097002, name = "ANY_MONSTER_DIE_97002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_97002", action = "action_EVENT_ANY_MONSTER_DIE_97002" },
	{ config_id = 1097003, name = "GROUP_LOAD_97003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_97003", action = "action_EVENT_GROUP_LOAD_97003", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "kill", value = 0, no_refresh = true }
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
		monsters = { 97001 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_97002", "GROUP_LOAD_97003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 97004 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
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

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_97002(context, evt)
	if 97001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_97002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "166001097") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "kill" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "kill", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_97003(context, evt)
	-- 判断变量"kill"为1
	if ScriptLib.GetGroupVariableValue(context, "kill") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_97003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "166001097") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end