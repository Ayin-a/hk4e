-- 基础信息
local base_info = {
	group_id = 155006012
}

-- Trigger变量
local defs = {
	groupID = 155006012,
	gadget_1 = 12003,
	gadget_2 = 12004,
	gadget_3 = 0,
	gadget_operator_1 = 12006,
	gadget_operator_2 = 12007,
	gadget_operator_3 = 0,
	pointarray_Rotate_1 = 500600013,
	pointarray_Rotate_2 = 500600001
}

-- DEFS_MISCS
local Controllers = {}
local EnvControlGadgets =  {12001,12006,12007}
local Worktops = {}
local DayAppearGadgets = {}
local NightAppearGadgets = {12013}

local gameplayStateFuncitons = 
{
	["0"] = function(context)
		ScriptLib.SetGroupVariableValue(context,"is_daynight_finish",1)
	end,
	["1"] = function(context)
		ScriptLib.SetGroupVariableValue(context,"is_daynight_finish",0)
	
		DayNight_Gadget_Unlock(context,12006)
		DayNight_Gadget_Unlock(context,12007)

	end,
	["2"] = function(context)
		ScriptLib.SetGroupVariableValue(context,"is_daynight_finish",0)
		
		DayNight_Gadget_Unlock(context,12006)
		DayNight_Gadget_Unlock(context,12007)
	end

}
function UpdateGamePlayState(context)
	local state = ScriptLib.GetGroupVariableValue(context, "gameplayState") 

	gameplayStateFuncitons[tostring(state)](context)

end

local mazzinfo = 
{
	mid = {wall = defs.gadget_1, operator = defs.gadget_operator_1, sotrevarname = "RotWall_1", rotstate = "isStartRot_Wall_1", pointarray = defs.pointarray_Rotate_1 },
	inside = {wall = defs.gadget_2, operator = defs.gadget_operator_2, sotrevarname = "RotWall_2", rotstate = "isStartRot_Wall_2", pointarray = defs.pointarray_Rotate_2}
}


function GetMazzInfoByConfigID(context,config_id)
	
	if config_id == defs.gadget_1 or config_id == defs.gadget_operator_1 then 
		return mazzinfo.mid
	elseif config_id == defs.gadget_2 or config_id == defs.gadget_operator_2 then 
		return mazzinfo.inside
	end

end


function RotateWall(context, gadgetID)
	if gadgetID == 0 then return end
	info = GetMazzInfoByConfigID(context,gadgetID)

	ScriptLib.SetPlatformPointArray(context, gadgetID, info.pointarray, { 1 }, { route_type = 0,turn_mode=true })
end

function InitialRotY(context)
	local gadgetname 
	local varname
	local gadgetid
	local rot

	for k,v in pairs(mazzinfo) do
		ScriptLib.SetGroupVariableValue(context,v.rotstate,0)
		rot = math.floor(ScriptLib.GetGroupVariableValue(context,v.sotrevarname)/90)
		if rot ~= 0 then
			ScriptLib.SetPlatformPointArray(context, v.wall, defs.pointarray_Rotate_2, {rot}, { route_type = 0,turn_mode=true })
		end 
	end
	--[[for i = 1, 2 do 
		gadgetname = "gadget_"..i
		varname = "RotWall_"..i
		rot = ScriptLib.GetGroupVariableValue(context,varname)
		rot = math.floor(rot/90)
		if rot ~= 0 then
			ScriptLib.SetPlatformPointArray(context, defs[gadgetname], defs.pointarray_Rotate, {rot}, { route_type = 0,turn_mode=true })
		end
	end]]
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
	{ config_id = 12001, gadget_id = 70290189, pos = { x = 573.038, y = 150.913, z = -469.807 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 12003, gadget_id = 70290187, pos = { x = 573.038, y = 150.913, z = -469.807 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, is_use_point_array = true, area_id = 200 },
	{ config_id = 12004, gadget_id = 70290186, pos = { x = 573.038, y = 150.913, z = -469.807 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, is_use_point_array = true, area_id = 200 },
	{ config_id = 12006, gadget_id = 70360305, pos = { x = 565.959, y = 178.432, z = -424.753 }, rot = { x = 0.000, y = 359.211, z = 0.000 }, level = 36, state = GadgetState.GearStop, area_id = 200 },
	{ config_id = 12007, gadget_id = 70360305, pos = { x = 555.644, y = 178.354, z = -425.625 }, rot = { x = 356.840, y = 354.000, z = 356.176 }, level = 36, state = GadgetState.GearStop, area_id = 200 },
	{ config_id = 12013, gadget_id = 70360322, pos = { x = 573.033, y = 153.898, z = -469.815 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 中圈转动
	{ config_id = 1012005, name = "TIME_AXIS_PASS_12005", event = EventType.EVENT_TIME_AXIS_PASS, source = "Rotating_12003", condition = "", action = "action_EVENT_TIME_AXIS_PASS_12005", trigger_count = 0 },
	-- Group初始化
	{ config_id = 1012008, name = "GROUP_LOAD_12008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_12008", trigger_count = 0 },
	-- 旋转到点后的处理
	{ config_id = 1012009, name = "PLATFORM_REACH_POINT_12009", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "", action = "action_EVENT_PLATFORM_REACH_POINT_12009", trigger_count = 0 },
	-- 玩家选择机关旋转对应的迷宫墙壁
	{ config_id = 1012010, name = "GADGET_STATE_CHANGE_12010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_12010", action = "action_EVENT_GADGET_STATE_CHANGE_12010", trigger_count = 0 },
	-- 内圈转动
	{ config_id = 1012014, name = "TIME_AXIS_PASS_12014", event = EventType.EVENT_TIME_AXIS_PASS, source = "Rotating_12004", condition = "", action = "action_EVENT_TIME_AXIS_PASS_12014", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "RotWall_1", value = 180, no_refresh = true },
	{ config_id = 2, name = "RotWall_2", value = 180, no_refresh = true },
	{ config_id = 3, name = "RotWall_3", value = 0, no_refresh = true },
	{ config_id = 4, name = "isStartRot_Wall_1", value = 0, no_refresh = false },
	{ config_id = 5, name = "isStartRot_Wall_2", value = 0, no_refresh = false },
	{ config_id = 6, name = "isStartRot_Wall_3", value = 0, no_refresh = false },
	{ config_id = 7, name = "gameplayState", value = 1, no_refresh = true }
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
		gadgets = { 12001, 12003, 12004, 12006, 12007 },
		regions = { },
		triggers = { "TIME_AXIS_PASS_12005", "GROUP_LOAD_12008", "PLATFORM_REACH_POINT_12009", "GADGET_STATE_CHANGE_12010", "TIME_AXIS_PASS_12014" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_12005(context, evt)
		ScriptLib.PrintContextLog(context,"Active Time Axis : evtname = "..evt.source_name..", axisindex = "..evt.param1)
		if evt.param1 == 1 then 
			ScriptLib.PrintContextLog(context,"Rotation : "..defs.gadget_1)
			RotateWall(context, defs.gadget_1)
		elseif evt.param1 == 2 then 
			local temprot
			local tempmazzinfo = {}
		
			tempmazzinfo = GetMazzInfoByConfigID(context,defs.gadget_1)
			temprot = ScriptLib.GetGroupVariableValue(context,tempmazzinfo.sotrevarname)
			temprot = temprot + 90
			if temprot == 360 then 
				temprot = 0
			end
			ScriptLib.SetGroupVariableValue(context,tempmazzinfo.sotrevarname,temprot)
			ScriptLib.SetGroupVariableValue(context,tempmazzinfo.rotstate,0)
		end
		return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_12008(context, evt)
		UpdateGamePlayState(context)
		
		InitialRotY(context)
		
		return 0
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_12009(context, evt)
		--[[ScriptLib.PrintContextLog(context,"ReachPoint : PlatformConfigID = "..evt.param1..", PointArrayID = "..evt.param2..", PointIndex = "..evt.param3)
		local temprot
		local tempmazzinfo = {}
	
		tempmazzinfo = GetMazzInfoByConfigID(context,evt.param1)
		ScriptLib.PrintContextLog(context,"ReachPoint : {wall = "..tempmazzinfo.wall..", operator = "..tempmazzinfo.operator..", initialRot = "..tempmazzinfo.initialRot..", targetRot = "..tempmazzinfo.targetRot..", sotrevarname = "..tempmazzinfo.sotrevarname..", rotstate = "..tempmazzinfo.rotstate.. "}")
		
		temprot = ScriptLib.GetGroupVariableValue(context,tempmazzinfo.sotrevarname)
		temprot = temprot + 90
		if temprot == 360 then 
			temprot = 0
		end
		ScriptLib.SetGroupVariableValue(context,tempmazzinfo.sotrevarname,temprot)
		ScriptLib.SetGroupVariableValue(context,tempmazzinfo.rotstate,0)
	]]
		return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_12010(context, evt)
		ScriptLib.PrintContextLog(context,"Active Controller is "..evt.param2.." with state = "..evt.param1)
		if 12006 ~= evt.param2 and 12007 ~= evt.param2 then
			return false	
		end
		
		if evt.param1 ~= 222 then 
			return false
		end
		return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_12010(context, evt)
				local tempmazzinfo = {}
				tempmazzinfo = GetMazzInfoByConfigID(context,evt.param2)
				--ScriptLib.PrintContextLog(context,"StateChange : {wall = "..tempmazzinfo.wall..", operator = "..tempmazzinfo.operator..", sotrevarname = "..tempmazzinfo.sotrevarname..", rotstate = "..tempmazzinfo.rotstate.. "}")	
				if ScriptLib.GetGroupVariableValue(context,tempmazzinfo.rotstate) == 0 then
					ScriptLib.SetGroupVariableValue(context,tempmazzinfo.rotstate,1)
					ScriptLib.InitTimeAxis(context, "Rotating_"..tempmazzinfo.wall, {1,4}, false)
					ScriptLib.PlayCutScene(context, 48, 0)
				end
					return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_12014(context, evt)
		ScriptLib.PrintContextLog(context,"Active Time Axis : evtname = "..evt.source_name..", axisindex = "..evt.param1)
		if evt.param1 == 1 then 
			ScriptLib.PrintContextLog(context,"Rotation : "..defs.gadget_2)
			RotateWall(context, defs.gadget_2)
		elseif evt.param1 == 2 then 
			local temprot
			local tempmazzinfo = {}
		
			tempmazzinfo = GetMazzInfoByConfigID(context,defs.gadget_2)
			temprot = ScriptLib.GetGroupVariableValue(context,tempmazzinfo.sotrevarname)
			temprot = temprot + 90
			if temprot == 360 then 
				temprot = 0
			end
			ScriptLib.SetGroupVariableValue(context,tempmazzinfo.sotrevarname,temprot)
			ScriptLib.SetGroupVariableValue(context,tempmazzinfo.rotstate,0)
		end
		return 0
end

require "V2_4/EnvState"