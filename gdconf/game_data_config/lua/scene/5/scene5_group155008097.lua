-- 基础信息
local base_info = {
	group_id = 155008097
}

-- Trigger变量
local defs = {
	group_ID = 155008097,
	pointarray_Rot = 500800010
}

-- DEFS_MISCS
local Controllers = {}
local EnvControlGadgets = {97011,97012}
local Worktops = {}
local DayAppearGadgets = {97013}
local NightAppearGadgets = {97005,97006}


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
		DayNight_Gadget_Unlock(context,97012)
		
		
	end,
	["2"] = function(context)
		ScriptLib.SetGroupVariableValue(context,"is_daynight_finish",1)
		ScriptLib.AddExtraGroupSuite(context, defs.group_ID, 3)
		
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
	{ config_id = 97005, gadget_id = 70360315, pos = { x = -526.987, y = 232.409, z = 444.701 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 97006, gadget_id = 70360315, pos = { x = -547.926, y = 232.289, z = 455.502 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 97010, gadget_id = 70290225, pos = { x = -537.461, y = 232.455, z = 454.658 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, is_use_point_array = true, area_id = 200 },
	{ config_id = 97011, gadget_id = 70290169, pos = { x = -553.812, y = 238.486, z = 466.713 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 97012, gadget_id = 70360305, pos = { x = -537.481, y = 232.463, z = 454.118 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 97013, gadget_id = 70360314, pos = { x = -536.610, y = 231.943, z = 476.192 }, rot = { x = 358.063, y = 0.007, z = 359.612 }, level = 36, area_id = 200 },
	{ config_id = 97014, gadget_id = 70211132, pos = { x = -536.951, y = 232.505, z = 477.502 }, rot = { x = 0.000, y = 188.019, z = 0.000 }, level = 16, drop_tag = "解谜超级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 初始化
	{ config_id = 1097001, name = "GROUP_LOAD_97001", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_97001", trigger_count = 0 },
	-- 监听gameplayState变化
	{ config_id = 1097002, name = "VARIABLE_CHANGE_97002", event = EventType.EVENT_VARIABLE_CHANGE, source = "gameplayState", condition = "condition_EVENT_VARIABLE_CHANGE_97002", action = "action_EVENT_VARIABLE_CHANGE_97002", trigger_count = 0 },
	-- 转动墙壁
	{ config_id = 1097015, name = "GADGET_STATE_CHANGE_97015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_97015", action = "action_EVENT_GADGET_STATE_CHANGE_97015", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "gameplayState", value = 1, no_refresh = true },
	{ config_id = 2, name = "rot_state", value = 0, no_refresh = true }
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
		triggers = { "GROUP_LOAD_97001", "VARIABLE_CHANGE_97002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 玩法开启,
		monsters = { },
		gadgets = { 97010, 97011, 97012, 97014 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_97015" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 玩法完成,
		monsters = { },
		gadgets = { 97010, 97011, 97012, 97014 },
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
function action_EVENT_GROUP_LOAD_97001(context, evt)
	UpdateGamePlayState(context)
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_97002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
		-- 判断变量"gameplayState"为0
		if ScriptLib.GetGroupVariableValue(context, "gameplayState") == 0 then
				return false
		end
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_97002(context, evt)
	UpdateGamePlayState(context)
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_97015(context, evt)
	if evt.param2 ~= 97012 then 
	return false
	end
	
	if 222 ~= ScriptLib.GetGadgetStateByConfigId(context, 155008097, 97012) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_97015(context, evt)
		RotateGate(context,97010,defs.pointarray_Rot,"rot_state",90)
		return 0
end

require "V2_4/EnvState"
require "V2_4/EnvStateWorktop"