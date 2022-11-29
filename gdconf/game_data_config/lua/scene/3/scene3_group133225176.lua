-- 基础信息
local base_info = {
	group_id = 133225176
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 176004, gadget_id = 70360001, pos = { x = -6132.000, y = 212.514, z = -3270.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1176001, name = "QUEST_START_176001", event = EventType.EVENT_QUEST_START, source = "7216630", condition = "", action = "action_EVENT_QUEST_START_176001" },
	{ config_id = 1176002, name = "QUEST_START_176002", event = EventType.EVENT_QUEST_START, source = "7217219", condition = "", action = "action_EVENT_QUEST_START_176002" },
	{ config_id = 1176003, name = "QUEST_START_176003", event = EventType.EVENT_QUEST_START, source = "7217316", condition = "", action = "action_EVENT_QUEST_START_176003" }
}

-- 变量
variables = {
	{ config_id = 1, name = "suiteByDay", value = 1, no_refresh = true }
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
		gadgets = { 176004 },
		regions = { },
		triggers = { "QUEST_START_176001", "QUEST_START_176002", "QUEST_START_176003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_START_176001(context, evt)
	-- 将本组内变量名为 "suiteByDay" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "suiteByDay", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_176002(context, evt)
	-- 将本组内变量名为 "suiteByDay" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "suiteByDay", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_176003(context, evt)
	-- 将本组内变量名为 "suiteByDay" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "suiteByDay", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end