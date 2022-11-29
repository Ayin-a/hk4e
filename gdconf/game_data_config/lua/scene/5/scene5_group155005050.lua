-- 基础信息
local base_info = {
	group_id = 155005050
}

-- Trigger变量
local defs = {
	group_ID = 155005050,
	gadget_controller = 50001
}

-- DEFS_MISCS
local Controllers  = {defs.gadget_controller}
local EnvControlGadgets = {defs.gadget_controller}
local DayAppearGadgets = {}
local NightAppearGadgets = {}

local gameplayStateFuncitons = 
{
	["0"] = function(context)
		
	end,
	["1"] = function(context)
		ScriptLib.AddExtraGroupSuite(context, defs.group_ID, 2)					
		DayNight_Gadget_Lock(context,defs.gadget_controller)
	
	end,
	["2"] = function(context)
		ScriptLib.AddExtraGroupSuite(context, defs.group_ID, 2)					
		DayNight_Gadget_Unlock(context,defs.gadget_controller)

		local current_env_state_id = ScriptLib.GetCurrentLevelTagVec(context, 1)[1]
    	if (current_env_state_id == 1) then
			ScriptLib.SetWorktopOptionsByGroupId(context, 155005050, 50001, {500})
		elseif (current_env_state_id == 2) then
			ScriptLib.SetWorktopOptionsByGroupId(context, 155005050, 50001, {501})
		end 

		ScriptLib.SetGroupVariableValue(context, "gameplayState", 3)
	end,
	["3"] = function(context)
		ScriptLib.AddExtraGroupSuite(context, defs.group_ID, 2)					
		DayNight_Gadget_Unlock(context,defs.gadget_controller)
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
	{ config_id = 50001, gadget_id = 70360302, pos = { x = 269.420, y = 358.704, z = 211.912 }, rot = { x = 0.000, y = 7.184, z = 0.000 }, level = 36, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 7217716[22] Start
	{ config_id = 1050002, name = "QUEST_START_50002", event = EventType.EVENT_QUEST_START, source = "7217716", condition = "", action = "action_EVENT_QUEST_START_50002", trigger_count = 0 },
	-- 初始化
	{ config_id = 1050003, name = "GROUP_LOAD_50003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_50003", trigger_count = 0 },
	-- 监听gameplayState
	{ config_id = 1050004, name = "VARIABLE_CHANGE_50004", event = EventType.EVENT_VARIABLE_CHANGE, source = "gameplayState", condition = "", action = "action_EVENT_VARIABLE_CHANGE_50004", trigger_count = 0 }
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
	end_suite = 2,
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
		triggers = { "QUEST_START_50002", "GROUP_LOAD_50003", "VARIABLE_CHANGE_50004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 50001 },
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
function action_EVENT_QUEST_START_50002(context, evt)
	-- 将本组内变量名为 "gameplayState" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gameplayState", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_50003(context, evt)
	UpdateGamePlayState(context)
	return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_50004(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	UpdateGamePlayState(context)
	return 0
end

require "V2_4/EnvState"
require "V2_4/EnvStateControl"