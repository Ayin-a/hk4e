-- 基础信息
local base_info = {
	group_id = 155002008
}

-- Trigger变量
local defs = {
	pointarray_route = 500200002,
	group_ID = 155002008
}

-- DEFS_MISCS
local Controllers = {}
local EnvControlGadgets = {8006,8009}
local DayAppearGadgets = {}
local NightAppearGadgets = {}

local gameplayStateFuncitons = 
{
	["0"] = function(context)
		ScriptLib.SetGroupVariableValue(context,"is_daynight_finish",1)
		
	end,
	["1"] = function(context)
		ScriptLib.SetGroupVariableValue(context,"is_daynight_finish",0)

		ScriptLib.AddExtraGroupSuite(context, defs.group_ID, 2)
		DayNight_Gadget_Unlock(context,8006)
		DayNight_Gadget_Unlock(context,8009)
		Restore(context)
		ScriptLib.SetGroupVariableValue(context, "isMoving", 0) 
	
	end,
	["2"] = function(context)
		
		ScriptLib.SetGroupVariableValue(context,"is_daynight_finish",1)
	end
}


function UpdateGamePlayState(context)
	local state = ScriptLib.GetGroupVariableValue(context, "gameplayState") 

	gameplayStateFuncitons[tostring(state)](context)

end

function GadgetStateSwitcher(context,groupid,gadget_id,state)

	if ScriptLib.GetGadgetStateByConfigId(context, groupid, gadget_id)  == state[1] then 
		ScriptLib.SetGroupGadgetStateByConfigId(context, groupid, gadget_id, state[2])
	elseif ScriptLib.GetGadgetStateByConfigId(context, groupid, gadget_id)  == state[2] then 
		ScriptLib.SetGroupGadgetStateByConfigId(context, groupid, gadget_id, state[1])
	end 
end


function MovePlatform(context,platform_id,pointarray_id,routelist,routemode,turnmode)
	ScriptLib.SetPlatformPointArray(context, platform_id, pointarray_id, routelist, { route_type = routemode,turn_mode = turnmode } )
	return 0
end

function PrintLog(context,str)

	local log = "["..defs.group_ID.."] : "..str
	ScriptLib.PrintContextLog(context,log)
end

function Restore(context)
	MovePlatform(context,8008,defs.pointarray_route,{ScriptLib.GetGroupVariableValue(context,"wallCurPos")},0,false)
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
	{ config_id = 8001, gadget_id = 70290281, pos = { x = 1313.825, y = 186.331, z = 845.558 }, rot = { x = 0.000, y = 90.000, z = 180.000 }, level = 36, persistent = true, area_id = 200 },
	{ config_id = 8002, gadget_id = 70290281, pos = { x = 1319.097, y = 186.431, z = 851.084 }, rot = { x = 0.000, y = 0.000, z = 180.000 }, level = 36, persistent = true, area_id = 200 },
	{ config_id = 8006, gadget_id = 70360305, pos = { x = 1318.949, y = 180.499, z = 856.234 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 8008, gadget_id = 70290170, pos = { x = 1303.538, y = 180.537, z = 846.001 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 36, start_route = false, is_use_point_array = true, area_id = 200 },
	{ config_id = 8009, gadget_id = 70360309, pos = { x = 1318.924, y = 180.572, z = 845.954 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 移动铁栅栏
	{ config_id = 1008005, name = "GADGET_STATE_CHANGE_8005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_8005", action = "action_EVENT_GADGET_STATE_CHANGE_8005", trigger_count = 0 },
	-- 激活机关移动墙壁
	{ config_id = 1008007, name = "GADGET_STATE_CHANGE_8007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_8007", action = "action_EVENT_GADGET_STATE_CHANGE_8007", trigger_count = 0 },
	-- 初始化
	{ config_id = 1008011, name = "GROUP_LOAD_8011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_8011", trigger_count = 0 },
	-- 监听gameplayState
	{ config_id = 1008012, name = "VARIABLE_CHANGE_8012", event = EventType.EVENT_VARIABLE_CHANGE, source = "gameplayState", condition = "condition_EVENT_VARIABLE_CHANGE_8012", action = "action_EVENT_VARIABLE_CHANGE_8012", trigger_count = 0 },
	-- 移动平台到点后设置i是Moving为0
	{ config_id = 1008016, name = "TIME_AXIS_PASS_8016", event = EventType.EVENT_TIME_AXIS_PASS, source = "Active_8010", condition = "", action = "action_EVENT_TIME_AXIS_PASS_8016", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "gameplayState", value = 0, no_refresh = true },
	{ config_id = 2, name = "wallCurPos", value = 1, no_refresh = true },
	{ config_id = 3, name = "isMoving", value = 0, no_refresh = false }
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
		triggers = { "GROUP_LOAD_8011", "VARIABLE_CHANGE_8012", "TIME_AXIS_PASS_8016" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 8001, 8002, 8006, 8008, 8009 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_8005", "GADGET_STATE_CHANGE_8007", "GROUP_LOAD_8011", "VARIABLE_CHANGE_8012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_8005(context, evt)
	if 8006 ~= evt.param2 then
			return false
		end
	if 222 ~= ScriptLib.GetGadgetStateByConfigId(context, 155002008, 8006) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_8005(context, evt)
				local blocker = 8001
				local state = ScriptLib.GetGadgetStateByConfigId(context, defs.group_ID, blocker)
			
				GadgetStateSwitcher(context,defs.group_ID,8002,{0,201})
		
			
				
				if (state == 0) then
					if (ScriptLib.GetGroupVariableValue(context,"wallCurPos") ~= 2) then
						ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_ID, blocker, 201)
					else
						--ScriptLib.ShowReminder(context, 50050101)
					end
		
				end
				
				if (state == 201) then
					if (ScriptLib.GetGroupVariableValue(context,"wallCurPos") ~= 2) then
						
			
						ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_ID, blocker, 0)
					else
		
						--ScriptLib.ShowReminder(context, 50050101)
					end
				end
				
				
		return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_8007(context, evt)
	if 8009 ~= evt.param2 then
			return false
		end
		if ScriptLib.GetGroupVariableValue(context,"isMoving") ~= 0 then 
			return false
		end	
		
		return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_8007(context, evt)
				if evt.param2 == 8009 and 322 == ScriptLib.GetGadgetStateByConfigId(context, defs.group_ID, evt.param2) then 
					PrintLog(context,"Controller("..evt.param2..") State = "..evt.param1)
			
			
					local blockerstate = ScriptLib.GetGadgetStateByConfigId(context, defs.group_ID, 8001)
					if blockerstate ~= 201 then 
						ScriptLib.ShowReminder(context, 50050101)
						return -1 
					end
			
					MovePlatform(context,8008,defs.pointarray_route,{2},0,false)
			
					ScriptLib.SetGroupVariableValue(context,"isMoving",1)
					ScriptLib.SetGroupVariableValue(context,"wallCurPos",2)
					--ScriptLib.InitTimeAxis(context, "Active_"..evt.param2, {2}, false)
				end
			
			
				return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_8011(context, evt)
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
function condition_EVENT_VARIABLE_CHANGE_8012(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	
	
	
	-- 判断变量"gameplayState"为0
	if ScriptLib.GetGroupVariableValue(context, "gameplayState") == 0 then
			return false
	end
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_8012(context, evt)
	UpdateGamePlayState(context)
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_8016(context, evt)
	-- 将本组内变量名为 "isMoving" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isMoving", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

require "V2_4/EnvState"