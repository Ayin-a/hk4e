-- 基础信息
local base_info = {
	group_id = 155009003
}

-- Trigger变量
local defs = {
	group_ID = 155009003
}

-- DEFS_MISCS
local Controllers = {}
local EnvControlGadgets = {}
local Worktops = {}
local DayAppearGadgets = {3004}
local NightAppearGadgets = {3003}

local gameplayStateFuncitons = 
{
	["0"] = function(context)
		ScriptLib.SetGroupVariableValue(context,"is_daynight_finish",1)
		
	end,
	["1"] = function(context)
		ScriptLib.SetGroupVariableValue(context,"is_daynight_finish",0)
		ScriptLib.AddExtraGroupSuite(context, defs.group_ID, 2)

	end,
	["2"] = function(context)
		
		ScriptLib.SetGroupVariableValue(context,"is_daynight_finish",1)
		ScriptLib.AddExtraGroupSuite(context, defs.group_ID, 3)
		ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_ID, 3004, 202)
		ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_ID, 3003, 202)
		
		
	end,
	["3"] = function(context)
		
		ScriptLib.SetGroupVariableValue(context,"is_daynight_finish",1)
		ScriptLib.AddExtraGroupSuite(context, defs.group_ID, 4)
		ScriptLib.InitTimeAxis(context, "delayactive", {1}, false)
	end,
	["4"] = function(context)
		
		ScriptLib.SetGroupVariableValue(context,"is_daynight_finish",1)
		ScriptLib.AddExtraGroupSuite(context, defs.group_ID, 5)
	end,
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
	{ config_id = 3003, gadget_id = 70360315, pos = { x = -699.328, y = 139.227, z = -192.157 }, rot = { x = 0.000, y = 328.828, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 3004, gadget_id = 70360314, pos = { x = -699.328, y = 139.227, z = -192.157 }, rot = { x = 0.000, y = 328.828, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 3005, gadget_id = 70360329, pos = { x = -699.235, y = 141.366, z = -192.233 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, persistent = true, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1003001, name = "GROUP_LOAD_3001", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_3001", trigger_count = 0 },
	{ config_id = 1003002, name = "VARIABLE_CHANGE_3002", event = EventType.EVENT_VARIABLE_CHANGE, source = "gameplayState", condition = "", action = "action_EVENT_VARIABLE_CHANGE_3002", trigger_count = 0 },
	-- 7227007 Start
	{ config_id = 1003006, name = "QUEST_START_3006", event = EventType.EVENT_QUEST_START, source = "7227007", condition = "condition_EVENT_QUEST_START_3006", action = "action_EVENT_QUEST_START_3006", trigger_count = 0 },
	{ config_id = 1003007, name = "QUEST_FINISH_3007", event = EventType.EVENT_QUEST_FINISH, source = "7227007", condition = "condition_EVENT_QUEST_FINISH_3007", action = "action_EVENT_QUEST_FINISH_3007", trigger_count = 0 },
	{ config_id = 1003008, name = "TIME_AXIS_PASS_3008", event = EventType.EVENT_TIME_AXIS_PASS, source = "delayactive", condition = "", action = "action_EVENT_TIME_AXIS_PASS_3008", trigger_count = 0 },
	{ config_id = 1003009, name = "GROUP_LOAD_3009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_3009", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "gameplayState", value = 0, no_refresh = true }
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
		triggers = { "GROUP_LOAD_3001", "VARIABLE_CHANGE_3002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "QUEST_START_3006" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "QUEST_FINISH_3007" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "TIME_AXIS_PASS_3008", "GROUP_LOAD_3009" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 3005 },
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

-- 触发操作
function action_EVENT_GROUP_LOAD_3001(context, evt)
				local isactive = ScriptLib.GetGroupVariableValueByGroup(context, "IslandActive", 155009001)
						
				if isactive == 1 then 
					if ScriptLib.GetGroupVariableValue(context,"gameplayState") == 0 then 
						ScriptLib.SetGroupVariableValue(context,"gameplayState", 1)
					end
					
				end
	UpdateGamePlayState(context)
			
		return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_3002(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	UpdateGamePlayState(context)
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_3006(context, evt)
	-- 判断变量"gameplayState"为1
	if ScriptLib.GetGroupVariableValue(context, "gameplayState") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_3006(context, evt)
	-- 将本组内变量名为 "gameplayState" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gameplayState", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_3007(context, evt)
	-- 判断变量"gameplayState"为2
	if ScriptLib.GetGroupVariableValue(context, "gameplayState") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_3007(context, evt)
	-- 将本组内变量名为 "gameplayState" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gameplayState", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_3008(context, evt)
	-- 将本组内变量名为 "gameplayState" 的变量设置为 4
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gameplayState", 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_3009(context, evt)
	-- 将本组内变量名为 "gameplayState" 的变量设置为 4
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gameplayState", 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

require "V2_4/EnvState"