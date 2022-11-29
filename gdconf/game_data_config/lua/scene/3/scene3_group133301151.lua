-- 基础信息
local base_info = {
	group_id = 133301151
}

-- DEFS_MISCS
local gameplayStateFuncitons = 
{
	["0"] = function(context)
		
	end,
	["1"] = function(context)

		ScriptLib.AddExtraGroupSuite(context, base_info.group_id, 2)

	end,
	["2"] = function(context)
		ScriptLib.PrintContextLog(context,"gameplayState = 2")
		ScriptLib.RemoveExtraGroupSuite(context, base_info.group_id, 2)
		ScriptLib.AddExtraGroupSuite(context, base_info.group_id, 3)
	end,
	["3"] = function(context)
		ScriptLib.PrintContextLog(context,"gameplayState = 3")
		ScriptLib.RemoveExtraGroupSuite(context, base_info.group_id, 3)
		ScriptLib.AddExtraGroupSuite(context, base_info.group_id, 4)
		ScriptLib.AddQuestProgress(context, "73071_FindGarden")
	end,
	["4"] = function(context)
		ScriptLib.PrintContextLog(context,"gameplayState = 4")
		ScriptLib.RemoveExtraGroupSuite(context, base_info.group_id, 4)
	end
}
function UpdateGamePlayState(context)
	local state = ScriptLib.GetGroupVariableValue(context, "gameplayState") 

	gameplayStateFuncitons[tostring(state)](context)

end

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
}

-- 区域
regions = {
	{ config_id = 151004, shape = RegionShape.CUBIC, size = { x = 20.000, y = 20.000, z = 5.000 }, pos = { x = -218.209, y = 219.144, z = 3636.120 }, area_id = 29 }
}

-- 触发器
triggers = {
	-- initial
	{ config_id = 1151001, name = "GROUP_LOAD_151001", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_151001", trigger_count = 0 },
	-- gameplayState Change
	{ config_id = 1151002, name = "VARIABLE_CHANGE_151002", event = EventType.EVENT_VARIABLE_CHANGE, source = "gameplayState", condition = "", action = "action_EVENT_VARIABLE_CHANGE_151002", trigger_count = 0 },
	{ config_id = 1151003, name = "QUEST_START_151003", event = EventType.EVENT_QUEST_START, source = "7307104", condition = "", action = "action_EVENT_QUEST_START_151003", trigger_count = 0 },
	{ config_id = 1151004, name = "ENTER_REGION_151004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_151004", trigger_count = 0 },
	{ config_id = 1151005, name = "QUEST_START_151005", event = EventType.EVENT_QUEST_START, source = "7307105", condition = "", action = "action_EVENT_QUEST_START_151005", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "gameplayState", value = 1, no_refresh = true }
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
		triggers = { "GROUP_LOAD_151001", "VARIABLE_CHANGE_151002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "QUEST_START_151003" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 151004 },
		triggers = { "ENTER_REGION_151004" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "QUEST_START_151005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_151001(context, evt)
	UpdateGamePlayState(context)
	return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_151002(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	UpdateGamePlayState(context)
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_151003(context, evt)
	-- 将本组内变量名为 "gameplayState" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gameplayState", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_151004(context, evt)
		local leveltag = ScriptLib.GetCurrentLevelTagVec(context, 12)[1]
	
		if leveltag == 39 then 
			ScriptLib.SetGroupVariableValue(context, "gameplayState", 3)
		end
		
		return 0
	
end

-- 触发操作
function action_EVENT_QUEST_START_151005(context, evt)
	-- 将本组内变量名为 "gameplayState" 的变量设置为 4
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gameplayState", 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end