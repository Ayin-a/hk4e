-- 基础信息
local base_info = {
	group_id = 155005039
}

-- Trigger变量
local defs = {
	groupid = 155005039,
	pointarray_Rot = 500500004
}

-- DEFS_MISCS
local EnvControlGadgets = {39005}
local DayAppearGadgets = {}
local NightAppearGadgets = {}

local gameplayStateFuncitons = 
{
	["0"] = function(context)
		DayNight_Gadget_Lock(context,39005)
		
	end,
	["1"] = function(context)
		DayNight_Gadget_Unlock(context,39005)
		DayNight_Gadget_Reset(context,39005)
		ScriptLib.SetWorktopOptionsByGroupId(context, 155005039, 39008, {7})
		ScriptLib.SetWorktopOptionsByGroupId(context, 155005039, 39006, {7})
		InitialRotY(context)
	end,
	["2"] = function(context)
		
		ScriptLib.AddQuestProgress(context, "72190_SolvePuzzle")
		
	end
}


function UpdateGamePlayState(context)
	local state = ScriptLib.GetGroupVariableValue(context, "gameplayState") 

	gameplayStateFuncitons[tostring(state)](context)

end

function GadgetStateSwitcher(context,gadget_id,state)

	if ScriptLib.GetGadgetStateByConfigId(context, defs.groupid, gadget_id)  == state[1] then 
		ScriptLib.SetGroupGadgetStateByConfigId(context, defs.groupid, gadget_id, state[2])
	elseif ScriptLib.GetGadgetStateByConfigId(context, defs.groupid, gadget_id)  == state[2] then 
		ScriptLib.SetGroupGadgetStateByConfigId(context, defs.groupid, gadget_id, state[1])
	end 

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

function InitialRotY(context)

	local rot
	rot = math.floor(ScriptLib.GetGroupVariableValue(context,"Rot")/90)

	if rot ~= 0 then
		ScriptLib.SetPlatformPointArray(context,39004, defs.pointarray_Rot, {rot}, { route_type = 0,turn_mode=true })
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
	{ config_id = 39001, gadget_id = 70290281, pos = { x = 193.306, y = 180.126, z = -430.062 }, rot = { x = 0.000, y = 60.588, z = 0.000 }, level = 36, state = GadgetState.GearStart, persistent = true, area_id = 200 },
	{ config_id = 39002, gadget_id = 70290281, pos = { x = 198.255, y = 180.094, z = -438.489 }, rot = { x = 0.000, y = 60.588, z = 0.000 }, level = 36, persistent = true, area_id = 200 },
	{ config_id = 39003, gadget_id = 70290281, pos = { x = 186.708, y = 180.232, z = -427.519 }, rot = { x = 0.000, y = 328.504, z = 0.000 }, level = 36, persistent = true, area_id = 200 },
	{ config_id = 39004, gadget_id = 70290228, pos = { x = 200.960, y = 173.959, z = -442.350 }, rot = { x = 0.000, y = 240.624, z = 0.000 }, level = 36, start_route = false, is_use_point_array = true, area_id = 200 },
	{ config_id = 39005, gadget_id = 70360305, pos = { x = 198.108, y = 174.300, z = -427.368 }, rot = { x = 0.000, y = 333.627, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 39006, gadget_id = 70360170, pos = { x = 204.252, y = 177.250, z = -427.897 }, rot = { x = 90.000, y = 329.483, z = 0.000 }, level = 36, persistent = true, area_id = 200 },
	{ config_id = 39007, gadget_id = 70290281, pos = { x = 191.848, y = 180.335, z = -436.563 }, rot = { x = 0.000, y = 328.504, z = 0.000 }, level = 36, state = GadgetState.GearStart, persistent = true, area_id = 200 },
	{ config_id = 39008, gadget_id = 70360170, pos = { x = 200.168, y = 177.293, z = -421.120 }, rot = { x = 89.972, y = 148.898, z = 0.000 }, level = 36, persistent = true, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1039009, name = "TIME_AXIS_PASS_39009", event = EventType.EVENT_TIME_AXIS_PASS, source = "resetisActing", condition = "", action = "action_EVENT_TIME_AXIS_PASS_39009", trigger_count = 0 },
	-- 初始化
	{ config_id = 1039010, name = "GROUP_LOAD_39010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_39010", trigger_count = 0 },
	-- 监听gameplayState
	{ config_id = 1039011, name = "VARIABLE_CHANGE_39011", event = EventType.EVENT_VARIABLE_CHANGE, source = "gameplayState", condition = "", action = "action_EVENT_VARIABLE_CHANGE_39011", trigger_count = 0 },
	-- 震动机关受击 转动墙壁
	{ config_id = 1039012, name = "GADGET_STATE_CHANGE_39012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_39012", action = "action_EVENT_GADGET_STATE_CHANGE_39012", trigger_count = 0 },
	-- 机关开启
	{ config_id = 1039013, name = "SELECT_OPTION_39013", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_39013", action = "action_EVENT_SELECT_OPTION_39013", trigger_count = 0 },
	-- 重置铁门操作杆39008
	{ config_id = 1039014, name = "TIME_AXIS_PASS_39014", event = EventType.EVENT_TIME_AXIS_PASS, source = "controller_39008", condition = "", action = "action_EVENT_TIME_AXIS_PASS_39014", trigger_count = 0 },
	-- 重置铁门操作杆39006
	{ config_id = 1039015, name = "TIME_AXIS_PASS_39015", event = EventType.EVENT_TIME_AXIS_PASS, source = "controller_39006", condition = "", action = "action_EVENT_TIME_AXIS_PASS_39015", trigger_count = 0 },
	{ config_id = 1039016, name = "GADGET_STATE_CHANGE_39016", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_39016", action = "action_EVENT_GADGET_STATE_CHANGE_39016", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "gameplayState", value = 1, no_refresh = true },
	{ config_id = 2, name = "Rot", value = 0, no_refresh = true },
	{ config_id = 3, name = "isActing", value = 0, no_refresh = true }
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
		gadgets = { 39001, 39002, 39003, 39004, 39005, 39006, 39007, 39008 },
		regions = { },
		triggers = { "TIME_AXIS_PASS_39009", "GROUP_LOAD_39010", "VARIABLE_CHANGE_39011", "GADGET_STATE_CHANGE_39012", "SELECT_OPTION_39013", "TIME_AXIS_PASS_39014", "TIME_AXIS_PASS_39015", "GADGET_STATE_CHANGE_39016" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_39009(context, evt)
	-- 将本组内变量名为 "isActing" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isActing", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_39010(context, evt)
	UpdateGamePlayState(context)
	ScriptLib.SetGroupVariableValue(context, "isActing", 0)
	return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_39011(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	UpdateGamePlayState(context)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_39012(context, evt)
			if 222 ~= ScriptLib.GetGadgetStateByConfigId(context, 155005039, 39005) then
				return false
			end
			
			if 0 ~=ScriptLib.GetGroupVariableValue(context, "isActing") then 
				return false
			end
			return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_39012(context, evt)
			if ScriptLib.GetGadgetStateByConfigId(context, defs.groupid, 39002) == 0
				and ScriptLib.GetGroupVariableValue(context,"Rot") == 180 then 
					ScriptLib.PrintContextLog(context, defs.groupid.." : Somthing block")
					ScriptLib.ShowReminder(context, 50050101)
				return -1
			end
			ScriptLib.InitTimeAxis(context, "resetisActing", {1}, false)
			RotateGate(context,39004,defs.pointarray_Rot,"Rot",90)
			ScriptLib.SetGroupVariableValue(context, "isActing", 1)
		
			ScriptLib.PlayCutScene(context, 53, 0) 
		
			--[[local pos = {x=200, y= 173, z=-442}
			local pos_follow = {x=0, y=0, z=0}
				if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
																is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
																is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
							ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
					return -1
						end ]]
			return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_39013(context, evt)
			-- 判断是gadgetid 39006 option_id 7
			if 39006 ~= evt.param1 and 39008 ~= evt.param1 then
				return false	
			end
			
			if 7 ~= evt.param2 then
				return false
			end
	
			if 0 ~=ScriptLib.GetGroupVariableValue(context, "isActing") then 
				return false
			end
			
			
			return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_39013(context, evt)
			local timeaxisname = "controller_"..evt.param1
				ScriptLib.InitTimeAxis(context, timeaxisname, {1}, false)
				ScriptLib.InitTimeAxis(context, "resetisActing", {1}, false)
				ScriptLib.DelWorktopOptionByGroupId(context, defs.groupid, evt.param1, 7)
				ScriptLib.SetGroupVariableValue(context, "isActing", 1)
				GadgetStateSwitcher(context,evt.param1,{0,201})
				if evt.param1 == 39006 then 
					ScriptLib.PlayCutScene(context, 54, 0) 
				elseif evt.param1 == 39008 then 
					ScriptLib.PlayCutScene(context, 55, 0) 
				end
			return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_39014(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 155005039, 39008, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_39015(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 155005039, 39006, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_39016(context, evt)
		if evt.param2 ~= 39006 and evt.param2 ~= 39008 then 
			return false
		end
	
		return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_39016(context, evt)
		-- 将configid为 39002 的物件更改为状态 GadgetState.Default
		if evt.param2 == 39006 then
			if ScriptLib.GetGroupVariableValue(context,"Rot") ~= 270 then
				GadgetStateSwitcher(context,39002,{0,201})
			end
			GadgetStateSwitcher(context,39007,{0,201})
		end
		if evt.param2 == 39008 then 
			GadgetStateSwitcher(context,39001,{0,201})
			GadgetStateSwitcher(context,39003,{0,201})
		end
		
		return 0
end

require "V2_4/EnvState"