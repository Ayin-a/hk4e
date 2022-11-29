-- 基础信息
local base_info = {
	group_id = 155002016
}

-- Trigger变量
local defs = {
	group_ID = 155002016,
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
	{ config_id = 16003, monster_id = 20060301, pos = { x = 1448.145, y = 201.381, z = 822.143 }, rot = { x = 0.000, y = 30.283, z = 0.000 }, level = 36, drop_tag = "飘浮灵", pose_id = 101, area_id = 200 },
	{ config_id = 16004, monster_id = 20060301, pos = { x = 1461.488, y = 201.120, z = 833.030 }, rot = { x = 0.000, y = 76.358, z = 0.000 }, level = 36, drop_tag = "飘浮灵", pose_id = 101, area_id = 200 }
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
	{ config_id = 1016001, name = "GROUP_LOAD_16001", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_16001", trigger_count = 0 },
	{ config_id = 1016002, name = "VARIABLE_CHANGE_16002", event = EventType.EVENT_VARIABLE_CHANGE, source = "gameplayState", condition = "condition_EVENT_VARIABLE_CHANGE_16002", action = "action_EVENT_VARIABLE_CHANGE_16002", trigger_count = 0 }
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
		triggers = { "GROUP_LOAD_16001", "VARIABLE_CHANGE_16002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 16003, 16004 },
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
function action_EVENT_GROUP_LOAD_16001(context, evt)
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
function condition_EVENT_VARIABLE_CHANGE_16002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
		-- 判断变量"gameplayState"为0
		if ScriptLib.GetGroupVariableValue(context, "gameplayState") == 0 then
				return false
		end
		
		return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_16002(context, evt)
	UpdateGamePlayState(context)
	return 0
end

require "V2_4/EnvState"
require "V2_4/EnvStateWorktop"