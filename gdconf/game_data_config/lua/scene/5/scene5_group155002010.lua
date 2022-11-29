-- 基础信息
local base_info = {
	group_id = 155002010
}

-- Trigger变量
local defs = {
	gadget_controller = 10001,
	group_ID = 155002010
}

-- DEFS_MISCS
local Controllers  = {defs.gadget_controller}
local EnvControlGadgets = {defs.gadget_controller}
local DayAppearGadgets = {}
local NightAppearGadgets = {}

local gameplayStateFuncitons = 
{
	["0"] = function(context)
		ScriptLib.SetGroupVariableValue(context,"is_daynight_finish",1)
	end,
	["1"] = function(context)
		ScriptLib.SetGroupVariableValue(context,"is_daynight_finish",0)
		ScriptLib.AddExtraGroupSuite(context, defs.group_ID, 2)	
		DayNight_Gadget_Unlock(context,defs.gadget_controller)
	end,
	["2"] = function(context)
		ScriptLib.SetGroupVariableValue(context,"is_daynight_finish",1)
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
	{ config_id = 10001, gadget_id = 70360303, pos = { x = 1319.526, y = 193.380, z = 829.129 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1010002, name = "GROUP_LOAD_10002", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_10002", trigger_count = 0 },
	{ config_id = 1010003, name = "VARIABLE_CHANGE_10003", event = EventType.EVENT_VARIABLE_CHANGE, source = "gameplayState", condition = "condition_EVENT_VARIABLE_CHANGE_10003", action = "action_EVENT_VARIABLE_CHANGE_10003", trigger_count = 0 }
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
		triggers = { "GROUP_LOAD_10002", "VARIABLE_CHANGE_10003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 10001 },
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
function action_EVENT_GROUP_LOAD_10002(context, evt)
			local isactive = ScriptLib.GetGroupVariableValueByGroup(context, "IslandActive", 155002001)
						
				if isactive == 1 then 
					if ScriptLib.GetGroupVariableValue(context,"gameplayState") == 0 or  ScriptLib.GetGroupVariableValue(context,"gameplayState") == 2  then 
						ScriptLib.SetGroupVariableValue(context,"gameplayState", 1)
					end
					
				end
		UpdateGamePlayState(context)
		return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_10003(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"gameplayState"为0
	if ScriptLib.GetGroupVariableValue(context, "gameplayState") == 0 then
			return false
	end
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_10003(context, evt)
	
	UpdateGamePlayState(context)
	return 0
end

require "V2_4/EnvStateControl"
require "V2_4/EnvState"