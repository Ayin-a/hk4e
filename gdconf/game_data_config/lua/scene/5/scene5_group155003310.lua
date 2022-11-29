-- 基础信息
local base_info = {
	group_id = 155003310
}

-- Trigger变量
local defs = {
	managerGroupID = 155003001,
	group_ID = 155003310
}

-- DEFS_MISCS
local EnvControlGadgets = {}

local DayAppearGadgets = {310004}
local NightAppearGadgets = {310005}




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
		ScriptLib.SetGadgetStateByConfigId(context, 310005, GadgetState.GearStop)
		ScriptLib.SetGadgetStateByConfigId(context, 310004, GadgetState.GearStop)
	end,
	["3"] = function(context)
		
		ScriptLib.SetGroupVariableValue(context,"is_daynight_finish",1)
		ScriptLib.AddExtraGroupSuite(context, defs.group_ID, 4)
		ScriptLib.InitTimeAxis(context, "delayactive", {1}, false)
	end,
	["4"] = function(context)
		
		ScriptLib.SetGroupVariableValue(context,"is_daynight_finish",1)
		ScriptLib.AddExtraGroupSuite(context, defs.group_ID, 5)

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
	{ config_id = 310004, gadget_id = 70360314, pos = { x = 1293.148, y = 269.143, z = -629.322 }, rot = { x = 0.000, y = 330.158, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 310005, gadget_id = 70360315, pos = { x = 1293.147, y = 269.143, z = -629.322 }, rot = { x = 0.000, y = 330.158, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 310006, gadget_id = 70360329, pos = { x = 1293.064, y = 271.406, z = -629.279 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, persistent = true, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1310001, name = "GROUP_LOAD_310001", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_310001", trigger_count = 0 },
	{ config_id = 1310002, name = "VARIABLE_CHANGE_310002", event = EventType.EVENT_VARIABLE_CHANGE, source = "gameplayState", condition = "condition_EVENT_VARIABLE_CHANGE_310002", action = "action_EVENT_VARIABLE_CHANGE_310002", trigger_count = 0 },
	{ config_id = 1310003, name = "QUEST_START_310003", event = EventType.EVENT_QUEST_START, source = "7226907", condition = "condition_EVENT_QUEST_START_310003", action = "action_EVENT_QUEST_START_310003", trigger_count = 0 },
	{ config_id = 1310007, name = "QUEST_FINISH_310007", event = EventType.EVENT_QUEST_FINISH, source = "7226907", condition = "condition_EVENT_QUEST_FINISH_310007", action = "action_EVENT_QUEST_FINISH_310007", trigger_count = 0 },
	{ config_id = 1310008, name = "TIME_AXIS_PASS_310008", event = EventType.EVENT_TIME_AXIS_PASS, source = "delayactive", condition = "", action = "action_EVENT_TIME_AXIS_PASS_310008", trigger_count = 0 },
	{ config_id = 1310009, name = "GROUP_LOAD_310009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_310009", trigger_count = 0 }
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
		triggers = { "GROUP_LOAD_310001", "VARIABLE_CHANGE_310002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "QUEST_START_310003" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "QUEST_FINISH_310007" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "TIME_AXIS_PASS_310008", "GROUP_LOAD_310009" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 310006 },
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
function action_EVENT_GROUP_LOAD_310001(context, evt)
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
function condition_EVENT_VARIABLE_CHANGE_310002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
			if ScriptLib.GetGroupVariableValue(context, "gameplayState") == 0 then
					return false
			end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_310002(context, evt)
	UpdateGamePlayState(context)
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_310003(context, evt)
	-- 判断变量"gameplayState"为1
	if ScriptLib.GetGroupVariableValue(context, "gameplayState") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_310003(context, evt)
	-- 将本组内变量名为 "gameplayState" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gameplayState", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 310005 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 310005, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 310004 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 310004, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_310007(context, evt)
	-- 判断变量"gameplayState"为2
	if ScriptLib.GetGroupVariableValue(context, "gameplayState") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_310007(context, evt)
	-- 将本组内变量名为 "gameplayState" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gameplayState", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_310008(context, evt)
	-- 将本组内变量名为 "gameplayState" 的变量设置为 4
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gameplayState", 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_310009(context, evt)
	-- 将本组内变量名为 "gameplayState" 的变量设置为 4
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gameplayState", 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

require "V2_4/EnvState"