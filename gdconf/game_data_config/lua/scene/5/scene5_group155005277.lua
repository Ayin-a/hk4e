-- 基础信息
local base_info = {
	group_id = 155005277
}

-- Trigger变量
local defs = {
	group_ID = 155005277,
	gadget_lamp_01 = 277003,
	gadget_lamp_02 = 277004,
	gadget_lamp_03 = 277005,
	gadget_controller_01 = 277006,
	gadget_controller_02 = 277007,
	gadget_controller_03 = 277008,
	gadget_gate = 277009,
	gadget_sound_01 = 277012,
	gadget_sound_02 = 277013,
	gadget_sound_03 = 277014
}

-- DEFS_MISCS
local Controllers = {}
local EnvControlGadgets = {277006,277007,277008}
local Worktops = {}
local DayAppearGadgets = {}
local NightAppearGadgets = {}

local gadgetinfo = 
{
	{defs.gadget_controller_01, defs.gadget_lamp_01,defs.gadget_sound_01},
	{defs.gadget_controller_02, defs.gadget_lamp_02,defs.gadget_sound_02},
	{defs.gadget_controller_03, defs.gadget_lamp_03,defs.gadget_sound_03}
}

local stateloopinfo = 
{
	202,203,204
}

local solution = 
{
	203,202,204
}
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
		DayNight_Gadget_Unlock(context,defs.gadget_controller_01)
		DayNight_Gadget_Unlock(context,defs.gadget_controller_02)
		DayNight_Gadget_Unlock(context,defs.gadget_controller_03)
		
	end,
	["2"] = function(context)
		ScriptLib.SetGroupVariableValue(context,"is_daynight_finish",0)
		ScriptLib.AddExtraGroupSuite(context, defs.group_ID, 2)
		DayNight_Gadget_Finish(context,defs.gadget_controller_01)
		DayNight_Gadget_Finish(context,defs.gadget_controller_02)
		DayNight_Gadget_Finish(context,defs.gadget_controller_03)
		ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_gate })
		--ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_controller_01, 201)
		
	end

}


function UpdateGamePlayState(context)
	local state = ScriptLib.GetGroupVariableValue(context, "gameplayState") 

	gameplayStateFuncitons[tostring(state)](context)

end

function GetNextStateFromStateList(context,curstate,list)
	for i=1, #list do
		if list[i] == curstate then 
			if i == #list then 
				return list[1]
			else
				return list[i+1]
			end
		end
	end

	ScriptLib.PrintContextLog(context,"nothing to be found in list")
	return -1
end

function CheckIfSuccess(context)
	ScriptLib.PrintContextLog(context,"------check start------")
	local statelist = {}

	for i=1,#gadgetinfo do
		table.insert(statelist,ScriptLib.GetGadgetStateByConfigId(context, defs.group_ID, gadgetinfo[i][2]))
	end

	for i=1,#statelist do
		ScriptLib.PrintContextLog(context,"State["..i.."] = "..statelist[i])
	end
	if #statelist ~= #solution then 
		ScriptLib.PrintContextLog(context,"------check false------")
		return false
	end

	for i=1,#statelist do
		if statelist[i] ~= solution[i] then 
			ScriptLib.PrintContextLog(context,"------check false------")
			return false
		end
	end
	ScriptLib.PrintContextLog(context,"------check true------")
	return true
end

function FeedBackActive(context,gadgetid)
	ScriptLib.PrintContextLog(context,"------FeedBack Start------")
	local tempindex
	for i=1,#gadgetinfo do
		if gadgetinfo[i][2] == gadgetid then 
			tempindex = i
		end
	end

	if solution[tempindex] == ScriptLib.GetGadgetStateByConfigId(context, defs.group_ID, gadgetid) then 
		ScriptLib.ShowReminder(context, 50050102) 
		ScriptLib.SetGadgetStateByConfigId(context, gadgetinfo[tempindex][3], 201)

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
	{ config_id = 277003, gadget_id = 70380296, pos = { x = 631.596, y = 182.849, z = 792.145 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, persistent = true, area_id = 200 },
	{ config_id = 277004, gadget_id = 70380296, pos = { x = 635.312, y = 182.649, z = 790.498 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.ChestLocked, persistent = true, area_id = 200 },
	{ config_id = 277005, gadget_id = 70380296, pos = { x = 638.204, y = 182.258, z = 791.889 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, area_id = 200 },
	{ config_id = 277006, gadget_id = 70360305, pos = { x = 629.783, y = 174.026, z = 797.943 }, rot = { x = 357.735, y = 351.084, z = 0.921 }, level = 36, area_id = 200 },
	{ config_id = 277007, gadget_id = 70360305, pos = { x = 633.844, y = 174.043, z = 795.404 }, rot = { x = 0.000, y = 349.400, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 277008, gadget_id = 70360305, pos = { x = 637.557, y = 174.100, z = 798.885 }, rot = { x = 0.000, y = 351.582, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 277009, gadget_id = 70290279, pos = { x = 635.233, y = 177.941, z = 785.989 }, rot = { x = 357.194, y = 359.773, z = 352.202 }, level = 36, area_id = 200 },
	{ config_id = 277012, gadget_id = 70380297, pos = { x = 631.660, y = 182.062, z = 792.127 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 277013, gadget_id = 70380297, pos = { x = 635.307, y = 181.751, z = 790.616 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 277014, gadget_id = 70380297, pos = { x = 638.041, y = 181.494, z = 792.104 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 初始化
	{ config_id = 1277001, name = "GROUP_LOAD_277001", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_277001", trigger_count = 0 },
	-- 监听gameplayState变化
	{ config_id = 1277002, name = "VARIABLE_CHANGE_277002", event = EventType.EVENT_VARIABLE_CHANGE, source = "gameplayState", condition = "", action = "action_EVENT_VARIABLE_CHANGE_277002", trigger_count = 0 },
	{ config_id = 1277010, name = "GADGET_STATE_CHANGE_277010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_277010", action = "action_EVENT_GADGET_STATE_CHANGE_277010", trigger_count = 0 },
	-- 播放声音
	{ config_id = 1277015, name = "GADGET_STATE_CHANGE_277015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_277015", action = "action_EVENT_GADGET_STATE_CHANGE_277015", trigger_count = 0 }
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
		triggers = { "GROUP_LOAD_277001", "VARIABLE_CHANGE_277002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 玩法开启,
		monsters = { },
		gadgets = { 277003, 277004, 277005, 277006, 277007, 277008, 277009, 277012, 277013, 277014 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_277010", "GADGET_STATE_CHANGE_277015" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 玩法完成,
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
function action_EVENT_GROUP_LOAD_277001(context, evt)
	UpdateGamePlayState(context)
	return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_277002(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	UpdateGamePlayState(context)
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_277010(context, evt)
		if evt.param2 ~= defs.gadget_controller_01 and evt.param2 ~= defs.gadget_controller_02 and evt.param2 ~= defs.gadget_controller_03 then 
			return false
		end
	
		if 222 ~= ScriptLib.GetGadgetStateByConfigId(context, defs.group_ID, evt.param2) then
			return false
		end
		
		return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_277010(context, evt)
		local lamp
		
			for i=1,#gadgetinfo do
				if gadgetinfo[i][1] == evt.param2 then 
					lamp = gadgetinfo[i][2]
				end
			end
			ScriptLib.PrintContextLog(context, "Lamp = "..lamp)
			local state =  ScriptLib.GetGadgetStateByConfigId(context, defs.group_ID, lamp)
			ScriptLib.PrintContextLog(context,"Pre State = "..state)
			if state ~= 202 and state ~= 203 and  state ~= 204 then 
				return -1
			end
	
			
		
			state = GetNextStateFromStateList(context,state,stateloopinfo)
			
			if state == 202 then 
				state = 0 
			elseif state == 203 then 
				state = 101 
			elseif state == 204 then 
				state = 201 
			end
			
			ScriptLib.PrintContextLog(context,"Aft State = "..state)
		
			ScriptLib.SetGadgetStateByConfigId(context, lamp, state)
	
			return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_277015(context, evt)
	
		if evt.param2 ~= defs.gadget_lamp_01 and evt.param2 ~= defs.gadget_lamp_02 and evt.param2 ~= defs.gadget_lamp_03 then 
			return false
		end
		
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_277015(context, evt)
		FeedBackActive(context,evt.param2)
	
		if CheckIfSuccess(context) then 
			ScriptLib.SetGroupVariableValue(context, "gameplayState", 2)
		end
	
		return 0
end

require "V2_4/EnvState"
require "V2_4/EnvStateWorktop"