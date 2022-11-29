-- 基础信息
local base_info = {
	group_id = 155006187
}

-- Trigger变量
local defs = {
	group_ID = 155006187
}

-- DEFS_MISCS
local Controllers = {}
local EnvControlGadgets = {}
local Worktops = {}
local DayAppearGadgets = {187004}
local NightAppearGadgets = {187003}


--[[
	Variable:
	ScriptLib.GetGroupVariableValue(context, name)
	ScriptLib.GetGroupVariableValueByGroup(context, name, group_id)
	ScriptLib.SetGroupVariableValue(context, name, value)
	ScriptLib.SetGroupVariableValueByGroup(context, name, value, group_id)

	GadgetState:
	ScriptLib.GetGadgetStateByConfigId(context, group_id, config_id)
	ScriptLib.SetGroupGadgetStateByConfigId(context, group_id, config_id, gadget_state)

	Option:
	ScriptLib.SetWorktopOptionsByGroupId(context, group_id, config_id, {option_table})
	ScriptLib.DelWorktopOptionByGroupId(context, group_id, config_id, option_id)

	SuiteControll:
	ScriptLib.GoToGroupSuite(context, group_id, suite_index)
	ScriptLib.AddExtraGroupSuite(context, group_id, suite_index)

	TimeAxis:
	ScriptLib.InitTimeAxis(context, key, timer, is_loop)
	ScriptLib.EndTimeAxis(context, key)
	ScriptLib.PauseTimeAxis(context, key)
	ScriptLib.ContinueTimeAxis(context, key)

	ScriptLib.SetPlatformPointArray(context, gadget_id, pointarray_id, {pointarrayindexlist}, { route_type = 0 })
]]
local gameplayStateFuncitons = 
{
	["0"] = function(context)
		
		
	end,
	["1"] = function(context)
		
		ScriptLib.AddExtraGroupSuite(context, defs.group_ID, 2)
		
		
	end,
	["2"] = function(context)
	
		ScriptLib.AddExtraGroupSuite(context, defs.group_ID, 3)

		
	end,
	["3"] = function(context)
	
		ScriptLib.AddExtraGroupSuite(context, defs.group_ID, 4)
		ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_ID, 187003, 201)
		ScriptLib.AddQuestProgress(context, "72244_PutOrbIntoWater")

		
	end,
	["4"] = function(context)
		
		ScriptLib.AddExtraGroupSuite(context, defs.group_ID, 4)
		ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_ID, 187003, 201)
		
	end,
	["5"] = function(context)
		
		ScriptLib.AddExtraGroupSuite(context, defs.group_ID, 4)
		ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_ID, 187003, 201)
		
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
	{ config_id = 187003, gadget_id = 70360341, pos = { x = 248.448, y = 145.193, z = -286.688 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, area_id = 200 },
	{ config_id = 187005, gadget_id = 70360349, pos = { x = 248.273, y = 144.598, z = -286.576 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, interact_id = 71, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 初始化
	{ config_id = 1187001, name = "GROUP_LOAD_187001", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_187001", trigger_count = 0 },
	-- 监听gameplayState变化
	{ config_id = 1187002, name = "VARIABLE_CHANGE_187002", event = EventType.EVENT_VARIABLE_CHANGE, source = "gameplayState", condition = "", action = "action_EVENT_VARIABLE_CHANGE_187002", trigger_count = 0 },
	-- 7224413 Start 出现平台
	{ config_id = 1187006, name = "QUEST_START_187006", event = EventType.EVENT_QUEST_START, source = "7224413", condition = "condition_EVENT_QUEST_START_187006", action = "action_EVENT_QUEST_START_187006", trigger_count = 0 },
	-- 7224416 Start投入御辔
	{ config_id = 1187007, name = "QUEST_START_187007", event = EventType.EVENT_QUEST_START, source = "7224416", condition = "condition_EVENT_QUEST_START_187007", action = "action_EVENT_QUEST_START_187007", trigger_count = 0 },
	{ config_id = 1187008, name = "GADGET_STATE_CHANGE_187008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_187008", action = "action_EVENT_GADGET_STATE_CHANGE_187008", trigger_count = 0 },
	-- 7224425 Start 完成投入
	{ config_id = 1187009, name = "QUEST_START_187009", event = EventType.EVENT_QUEST_START, source = "7224425", condition = "condition_EVENT_QUEST_START_187009", action = "action_EVENT_QUEST_START_187009", trigger_count = 0 }
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
		-- description = 静态逻辑,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_187001", "VARIABLE_CHANGE_187002", "QUEST_START_187006", "QUEST_START_187007", "QUEST_START_187009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 玩法开启,
		monsters = { },
		gadgets = { 187003 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 玩法完成,
		monsters = { },
		gadgets = { 187003, 187005 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_187008" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 187003 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 187003 },
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
function action_EVENT_GROUP_LOAD_187001(context, evt)
	UpdateGamePlayState(context)
	return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_187002(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	UpdateGamePlayState(context)
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_187006(context, evt)
	-- 判断变量"gameplayState"为0
	if ScriptLib.GetGroupVariableValue(context, "gameplayState") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_187006(context, evt)
	-- 将本组内变量名为 "gameplayState" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gameplayState", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_187007(context, evt)
	-- 判断变量"gameplayState"为1
	if ScriptLib.GetGroupVariableValue(context, "gameplayState") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_187007(context, evt)
	-- 将本组内变量名为 "gameplayState" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gameplayState", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_187008(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 155006187, 187005) then
		return false
	end
	
	-- 判断变量"gameplayState"为2
	if ScriptLib.GetGroupVariableValue(context, "gameplayState") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_187008(context, evt)
	-- 将本组内变量名为 "gameplayState" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gameplayState", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_187009(context, evt)
	-- 判断变量"gameplayState"为3
	if ScriptLib.GetGroupVariableValue(context, "gameplayState") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_187009(context, evt)
	-- 将本组内变量名为 "gameplayState" 的变量设置为 4
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gameplayState", 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end