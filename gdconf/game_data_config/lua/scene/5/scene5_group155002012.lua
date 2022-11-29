-- 基础信息
local base_info = {
	group_id = 155002012
}

-- Trigger变量
local defs = {
	group_ID = 155002012,
	pointarray_Rot = 500200004
}

-- DEFS_MISCS
local Controllers = {}
local EnvControlGadgets = {}
local Worktops = {}
local DayAppearGadgets = {12001,12002,12003}
local NightAppearGadgets = {}

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
		ScriptLib.AddExtraGroupSuite(context, defs.group_ID, 2)
		ScriptLib.SetGroupVariableValue(context,"is_daynight_finish",1)
	end
}


function UpdateGamePlayState(context)
	local state = ScriptLib.GetGroupVariableValue(context, "gameplayState") 

	gameplayStateFuncitons[tostring(state)](context)

end
function RotateGate(context,gadget_id,pointarray_id,rotvar,rotstep)
	ScriptLib.SetPlatformPointArray(context, gadget_id, pointarray_id, {1}, {route_type = 0, turn_mode = true}) 
	if rotvar ~= '' and rotvar ~= nil then 
		local temprot = ScriptLib.GetGroupVariableValue(context, rotvar)

		temprot = rotstep + temprot 

		if temprot >=360 then 
			temprot = 0 
		end
		ScriptLib.SetGroupVariableValue(context,rotvar, temprot)
	end
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
	{ config_id = 12001, gadget_id = 70360307, pos = { x = 1313.935, y = 203.506, z = 848.506 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 12002, gadget_id = 70360307, pos = { x = 1316.424, y = 203.848, z = 833.337 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 12003, gadget_id = 70360307, pos = { x = 1321.489, y = 203.852, z = 840.872 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 初始化
	{ config_id = 1012005, name = "GROUP_LOAD_12005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_12005", trigger_count = 0 },
	-- 监听gameplayState
	{ config_id = 1012006, name = "VARIABLE_CHANGE_12006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_12006", action = "action_EVENT_VARIABLE_CHANGE_12006", trigger_count = 0 }
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
		triggers = { "GROUP_LOAD_12005", "VARIABLE_CHANGE_12006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_12005", "VARIABLE_CHANGE_12006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_12005(context, evt)
					local isactive = ScriptLib.GetGroupVariableValueByGroup(context, "IslandActive", 155002001)
				
					if isactive == 1 then 
						if ScriptLib.GetGroupVariableValue(context,"gameplayState") == 0 then 
							ScriptLib.SetGroupVariableValue(context,"gameplayState", 1)
						end
						
					end
			UpdateGamePlayState(context)
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_12006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
		if evt.param1 == evt.param2 then return false end
		
			if ScriptLib.GetGroupVariableValue(context, "gameplayState") == 0 then
					return false
			end
			
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_12006(context, evt)
	UpdateGamePlayState(context)
	return 0
end

require "V2_4/EnvState"