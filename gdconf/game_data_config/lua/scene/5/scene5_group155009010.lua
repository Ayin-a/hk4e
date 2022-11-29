-- 基础信息
local base_info = {
	group_id = 155009010
}

-- Trigger变量
local defs = {
	managerGroupID = 155009001,
	group_ID = 155009010,
	gadget_sealday = 10001,
	gadget_sealnight = 10002
}

-- DEFS_MISCS
local EnvControlGadgets = {}

local DayAppearGadgets = {defs.gadget_sealday}
local NightAppearGadgets = {defs.gadget_sealnight}




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
		ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_ID, defs.gadget_sealday, 202)
		ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_ID, defs.gadget_sealnight, 202)
--ScriptLib.SetGroupVariableValueByGroup(context, "isstart", 1, 155009014)
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
	{ config_id = 10001, gadget_id = 70360307, pos = { x = -771.830, y = 141.224, z = -218.534 }, rot = { x = 0.000, y = 14.226, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 10002, gadget_id = 70360310, pos = { x = -771.829, y = 141.038, z = -218.534 }, rot = { x = 0.000, y = 14.226, z = 0.000 }, level = 36, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1010003, name = "GROUP_LOAD_10003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_10003", trigger_count = 0 },
	{ config_id = 1010004, name = "VARIABLE_CHANGE_10004", event = EventType.EVENT_VARIABLE_CHANGE, source = "gameplayState", condition = "condition_EVENT_VARIABLE_CHANGE_10004", action = "action_EVENT_VARIABLE_CHANGE_10004", trigger_count = 0 }
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
		triggers = { "GROUP_LOAD_10003", "VARIABLE_CHANGE_10004" },
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

-- 触发操作
function action_EVENT_GROUP_LOAD_10003(context, evt)
		local isactive = ScriptLib.GetGroupVariableValueByGroup(context, "IslandActive", defs.managerGroupID)
	
		if isactive == 1 then 
			if ScriptLib.GetGroupVariableValue(context,"gameplayState") == 0 then 
				ScriptLib.SetGroupVariableValue(context,"gameplayState", 1)
			end
			
		end
	UpdateGamePlayState(context)
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_10004(context, evt)
	if evt.param1 == evt.param2 then return false end
	
			if ScriptLib.GetGroupVariableValue(context, "gameplayState") == 0 then
					return false
			end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_10004(context, evt)
	UpdateGamePlayState(context)
	return 0
end

require "V2_4/EnvState"