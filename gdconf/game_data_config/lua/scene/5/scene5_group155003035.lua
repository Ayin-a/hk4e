-- 基础信息
local base_info = {
	group_id = 155003035
}

-- Trigger变量
local defs = {
	group_ID = 155003035,
	managerGroup = 155003001
}

-- DEFS_MISCS
local Controllers = {}
local EnvControlGadgets = {}
local Worktops = {}
local DayAppearGadgets = {}
local NightAppearGadgets = {}


local gameplayStateFuncitons = 
{
	["0"] = function(context)
		ScriptLib.SetGroupVariableValue(context,"is_daynight_finish",1)
		
	end,
	["1"] = function(context)

		ScriptLib.SetGroupVariableValue(context,"is_daynight_finish",0)
ScriptLib.RefreshGroup(context, { group_id = defs.group_ID, suite = 2 })
		ScriptLib.PrintContextLog(context, " add suit 2")

	
	end,
	["2"] = function(context)
		
		ScriptLib.SetGroupVariableValue(context,"is_daynight_finish",1)
		ScriptLib.AddExtraGroupSuite(context, defs.group_ID, 2)

	
	end
}


function UpdateGamePlayState(context)
	local state = ScriptLib.GetGroupVariableValue(context, "gameplayState") 
	ScriptLib.PrintContextLog(context, "update gameplay state")
	gameplayStateFuncitons[tostring(state)](context)

end

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 35001, monster_id = 28040703, pos = { x = 1211.862, y = 224.409, z = -679.159 }, rot = { x = 0.000, y = 327.987, z = 0.000 }, level = 36, drop_tag = "水族", area_id = 200 },
	{ config_id = 35002, monster_id = 28040703, pos = { x = 1252.293, y = 224.423, z = -672.952 }, rot = { x = 0.000, y = 131.382, z = 0.000 }, level = 36, drop_tag = "水族", area_id = 200 },
	{ config_id = 35003, monster_id = 28040703, pos = { x = 1359.748, y = 261.470, z = -622.630 }, rot = { x = 0.000, y = 305.351, z = 0.000 }, level = 36, drop_tag = "水族", area_id = 200 }
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
	{ config_id = 1035006, name = "GROUP_LOAD_35006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_35006", trigger_count = 0 },
	{ config_id = 1035007, name = "VARIABLE_CHANGE_35007", event = EventType.EVENT_VARIABLE_CHANGE, source = "gameplayState", condition = "condition_EVENT_VARIABLE_CHANGE_35007", action = "action_EVENT_VARIABLE_CHANGE_35007", trigger_count = 0 }
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
		triggers = { "GROUP_LOAD_35006", "VARIABLE_CHANGE_35007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 35001, 35002, 35003 },
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

-- 触发操作
function action_EVENT_GROUP_LOAD_35006(context, evt)
			local isactive = ScriptLib.GetGroupVariableValueByGroup(context, "IslandActive", defs.managerGroup)
			
			if isactive == 1 then 
				if ScriptLib.GetGroupVariableValue(context,"gameplayState") == 0 then 
					ScriptLib.SetGroupVariableValue(context,"gameplayState", 1)
				end
				
			end
		UpdateGamePlayState(context)
			return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_35007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
		-- 判断变量"gameplayState"为0
		if ScriptLib.GetGroupVariableValue(context, "gameplayState") == 0 then
				return false
		end
		
		return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_35007(context, evt)
	UpdateGamePlayState(context)
	return 0
end

require "V2_4/EnvState"
require "V2_4/EnvStateWorktop"