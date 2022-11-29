-- 基础信息
local base_info = {
	group_id = 155002031
}

-- Trigger变量
local defs = {
	group_ID = 155002031,
	managerGroup = 155002001
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
	{ config_id = 31001, monster_id = 28010402, pos = { x = 1344.635, y = 179.011, z = 831.238 }, rot = { x = 0.000, y = 56.862, z = 0.000 }, level = 36, drop_tag = "采集动物", pose_id = 1, area_id = 200 },
	{ config_id = 31002, monster_id = 28010402, pos = { x = 1343.096, y = 179.011, z = 831.372 }, rot = { x = 0.000, y = 27.427, z = 0.000 }, level = 36, drop_tag = "采集动物", pose_id = 1, area_id = 200 },
	{ config_id = 31003, monster_id = 28010402, pos = { x = 1341.587, y = 179.011, z = 830.676 }, rot = { x = 0.000, y = 356.822, z = 0.000 }, level = 36, drop_tag = "采集动物", pose_id = 1, area_id = 200 }
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
	{ config_id = 1031005, name = "GROUP_LOAD_31005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_31005", trigger_count = 0 },
	{ config_id = 1031006, name = "VARIABLE_CHANGE_31006", event = EventType.EVENT_VARIABLE_CHANGE, source = "gameplayState", condition = "condition_EVENT_VARIABLE_CHANGE_31006", action = "action_EVENT_VARIABLE_CHANGE_31006", trigger_count = 0 }
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
		triggers = { "GROUP_LOAD_31005", "VARIABLE_CHANGE_31006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 31001, 31002, 31003 },
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
function action_EVENT_GROUP_LOAD_31005(context, evt)
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
function condition_EVENT_VARIABLE_CHANGE_31006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
		-- 判断变量"gameplayState"为0
		if ScriptLib.GetGroupVariableValue(context, "gameplayState") == 0 then
				return false
		end
		
		return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_31006(context, evt)
	UpdateGamePlayState(context)
	return 0
end

require "V2_4/EnvState"
require "V2_4/EnvStateWorktop"