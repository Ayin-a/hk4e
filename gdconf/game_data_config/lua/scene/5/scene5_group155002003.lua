-- 基础信息
local base_info = {
	group_id = 155002003
}

-- Trigger变量
local defs = {
	group_ID = 155002003,
	pointarray_route = 500200009
}

-- DEFS_MISCS
local Controllers = {}
local EnvControlGadgets = {3002}

local DayAppearGadgets = {3004}
local NightAppearGadgets = {}


local gameplayStateFuncitons = 
{
	["0"] = function(context)
		ScriptLib.SetGroupVariableValue(context,"is_daynight_finish",1)
		
	end,
	["1"] = function(context)

		ScriptLib.SetGroupVariableValue(context,"is_daynight_finish",0)
		ScriptLib.AddExtraGroupSuite(context, 155002003, 2)
		ScriptLib.PrintContextLog(context, "[155002003] : " .." add suit 2")
		DayNight_Gadget_Unlock(context,3002)

	
	end,
	["2"] = function(context)
		
		ScriptLib.SetGroupVariableValue(context,"is_daynight_finish",1)
		ScriptLib.AddExtraGroupSuite(context, 155002003, 2)
		DayNight_Gadget_Finish(context,3002)
		
	
	end
}


function UpdateGamePlayState(context)
	local state = ScriptLib.GetGroupVariableValue(context, "gameplayState") 
	ScriptLib.PrintContextLog(context, "[155002003] : " .." update gameplay state")
	gameplayStateFuncitons[tostring(state)](context)

end

function MovePlatform(context,platform_id,pointarray_id,routelist,routemode,turnmode)
	ScriptLib.SetPlatformPointArray(context, platform_id, pointarray_id, routelist, { route_type = routemode,turn_mode = turnmode } )
	return 0
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
	{ config_id = 3002, gadget_id = 70360309, pos = { x = 1347.964, y = 192.589, z = 846.768 }, rot = { x = 0.000, y = 90.248, z = 2.152 }, level = 36, area_id = 200 },
	{ config_id = 3003, gadget_id = 70290170, pos = { x = 1323.973, y = 192.537, z = 845.956 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 36, is_use_point_array = true, area_id = 200 },
	{ config_id = 3004, gadget_id = 70360314, pos = { x = 1349.261, y = 191.999, z = 846.102 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1003001, name = "GROUP_LOAD_3001", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_3001", trigger_count = 0 },
	{ config_id = 1003005, name = "TIME_AXIS_PASS_3005", event = EventType.EVENT_TIME_AXIS_PASS, source = "initialSuite", condition = "", action = "action_EVENT_TIME_AXIS_PASS_3005", trigger_count = 0 },
	{ config_id = 1003006, name = "GADGET_STATE_CHANGE_3006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_3006", action = "action_EVENT_GADGET_STATE_CHANGE_3006", trigger_count = 0 },
	{ config_id = 1003007, name = "VARIABLE_CHANGE_3007", event = EventType.EVENT_VARIABLE_CHANGE, source = "gameplayState", condition = "condition_EVENT_VARIABLE_CHANGE_3007", action = "action_EVENT_VARIABLE_CHANGE_3007", trigger_count = 0 }
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
		triggers = { "GROUP_LOAD_3001", "VARIABLE_CHANGE_3007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 3002, 3003 },
		regions = { },
		triggers = { "TIME_AXIS_PASS_3005", "GADGET_STATE_CHANGE_3006" },
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
		local isactive = ScriptLib.GetGroupVariableValueByGroup(context, "IslandActive", 155002001)
		
		if isactive == 1 then 
			if ScriptLib.GetGroupVariableValue(context,"gameplayState") == 0 then 
				ScriptLib.SetGroupVariableValue(context,"gameplayState", 1)
			end
			
		end
	UpdateGamePlayState(context)
		return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_3005(context, evt)
	UpdateGamePlayState(context)
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_3006(context, evt)
		if 322 ~= ScriptLib.GetGadgetStateByConfigId(context, 155002003, 3002) then
			return false
		end
		
		return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_3006(context, evt)
	
	
	MovePlatform(context,3003,defs.pointarray_route,{2},0,false)
	
		
		return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_3007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"gameplayState"为0
	if ScriptLib.GetGroupVariableValue(context, "gameplayState") == 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_3007(context, evt)
	UpdateGamePlayState(context)
	
	return 0
end

require "V2_4/EnvState"