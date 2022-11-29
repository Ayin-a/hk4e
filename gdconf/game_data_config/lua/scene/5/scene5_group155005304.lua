-- 基础信息
local base_info = {
	group_id = 155005304
}

-- Trigger变量
local defs = {
	group_ID = 155005304
}

-- DEFS_MISCS
local Controllers = {}
local EnvControlGadgets = {}
local Worktops = {}
local DayAppearGadgets = {304006,304007}
local NightAppearGadgets = {304004,304005}


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
		
		ScriptLib.SetGroupVariableValue(context,"is_daynight_finish",1)
		
	end,
	["1"] = function(context)
		ScriptLib.SetGroupVariableValue(context,"is_daynight_finish",0)
		ScriptLib.AddExtraGroupSuite(context, defs.group_ID, 2)
		
		
	end,
	["2"] = function(context)
		ScriptLib.SetGroupVariableValue(context,"is_daynight_finish",1)
		ScriptLib.AddExtraGroupSuite(context, defs.group_ID, 3)
		ScriptLib.SetGadgetStateByConfigId(context, 304003, GadgetState.GearStart)
		ScriptLib.SetGadgetStateByConfigId(context, 304004, GadgetState.GearStart)
		ScriptLib.SetGadgetStateByConfigId(context, 304005, GadgetState.GearStart)
		
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
	{ config_id = 304003, gadget_id = 70290281, pos = { x = 219.088, y = 331.175, z = 219.593 }, rot = { x = 0.000, y = 336.968, z = 180.000 }, level = 36, persistent = true, area_id = 200 },
	{ config_id = 304004, gadget_id = 70310011, pos = { x = 216.623, y = 325.615, z = 217.537 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 304005, gadget_id = 70310011, pos = { x = 221.919, y = 325.597, z = 219.774 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 304006, gadget_id = 70290216, pos = { x = 216.845, y = 326.838, z = 217.559 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 304007, gadget_id = 70290216, pos = { x = 221.758, y = 326.867, z = 219.561 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 初始化
	{ config_id = 1304001, name = "GROUP_LOAD_304001", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_304001", trigger_count = 0 },
	-- 监听gameplayState变化
	{ config_id = 1304002, name = "VARIABLE_CHANGE_304002", event = EventType.EVENT_VARIABLE_CHANGE, source = "gameplayState", condition = "condition_EVENT_VARIABLE_CHANGE_304002", action = "action_EVENT_VARIABLE_CHANGE_304002", trigger_count = 0 },
	{ config_id = 1304008, name = "GADGET_STATE_CHANGE_304008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_304008", action = "action_EVENT_GADGET_STATE_CHANGE_304008", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "gameplayState", value = 1, no_refresh = true }
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
		triggers = { "GROUP_LOAD_304001", "VARIABLE_CHANGE_304002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 玩法开启,
		monsters = { },
		gadgets = { 304003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_304008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 玩法完成,
		monsters = { },
		gadgets = { 304003, 304004, 304005 },
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
function action_EVENT_GROUP_LOAD_304001(context, evt)
	UpdateGamePlayState(context)
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_304002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
		-- 判断变量"gameplayState"为0
		if ScriptLib.GetGroupVariableValue(context, "gameplayState") == 0 then
				return false
		end
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_304002(context, evt)
	UpdateGamePlayState(context)
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_304008(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 155005304, 304004) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 155005304, 304005) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_304008(context, evt)
	-- 将configid为 304003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 304003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "gameplayState" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gameplayState", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

require "V2_4/EnvState"
require "V2_4/EnvStateWorktop"