-- 基础信息
local base_info = {
	group_id = 155006058
}

-- Trigger变量
local defs = {
	group_ID = 155006058,
	gadget_seal_night = 58002,
	gadget_seal_day = 58005
}

-- DEFS_MISCS
local Controllers = {}
local EnvControlGadgets = {}
local Worktops = {}
local DayAppearGadgets = {defs.gadget_seal_day}
local NightAppearGadgets = {defs.gadget_seal_night}

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
		ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_ID, defs.gadget_seal_night, 202)
		ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_ID, defs.gadget_seal_day, 202)
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
	-- 常夜灵龛的夜晚封印
	{ config_id = 58002, gadget_id = 70360315, pos = { x = 252.718, y = 141.487, z = -237.268 }, rot = { x = 0.000, y = 0.000, z = 346.226 }, level = 36, area_id = 200 },
	-- 常夜灵龛的夜晚封印
	{ config_id = 58005, gadget_id = 70360314, pos = { x = 252.718, y = 141.487, z = -237.268 }, rot = { x = 0.000, y = 0.000, z = 346.226 }, level = 36, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 监听active count
	{ config_id = 1058001, name = "VARIABLE_CHANGE_58001", event = EventType.EVENT_VARIABLE_CHANGE, source = "activecount", condition = "condition_EVENT_VARIABLE_CHANGE_58001", action = "action_EVENT_VARIABLE_CHANGE_58001", trigger_count = 0 },
	-- 初始化
	{ config_id = 1058003, name = "GROUP_LOAD_58003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_58003", trigger_count = 0 },
	-- 监听gameplayState
	{ config_id = 1058004, name = "VARIABLE_CHANGE_58004", event = EventType.EVENT_VARIABLE_CHANGE, source = "gameplayState", condition = "", action = "action_EVENT_VARIABLE_CHANGE_58004", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "gameplayState", value = 1, no_refresh = true },
	{ config_id = 2, name = "activecount", value = 0, no_refresh = true }
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
		triggers = { "VARIABLE_CHANGE_58001", "GROUP_LOAD_58003", "VARIABLE_CHANGE_58004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
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
function condition_EVENT_VARIABLE_CHANGE_58001(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"activecount"为2
	if ScriptLib.GetGroupVariableValue(context, "activecount") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_58001(context, evt)
	-- 将本组内变量名为 "gameplayState" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gameplayState", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_58003(context, evt)
	UpdateGamePlayState(context)
	return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_58004(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	UpdateGamePlayState(context)
	
	return 0
end

require "V2_4/EnvState"