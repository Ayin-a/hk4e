-- 基础信息
local base_info = {
	group_id = 155008033
}

-- DEFS_MISCS
local Controllers = {}
local EnvControlGadgets = {}
local Worktops = {}
local DayAppearGadgets = {33009,33010,33011,33012}
local NightAppearGadgets = {33002,33003,33004,33005}

local gameplayStateFuncitons = 
{
	["0"] = function(context)
		
	end,
	["1"] = function(context)
		ScriptLib.SetGroupVariableValue(context,"is_daynight_finish",0)
	end,
	["2"] = function(context)
		
		ScriptLib.SetGroupVariableValue(context,"is_daynight_finish",1)
		ScriptLib.CreateGadget(context, { config_id = 33007 }) 
		ScriptLib.CreateGadget(context, { config_id = 33002 }) 
		ScriptLib.CreateGadget(context, { config_id = 33003 }) 
		ScriptLib.CreateGadget(context, { config_id = 33004 }) 
		ScriptLib.CreateGadget(context, { config_id = 33005 }) 
		
	end,
	["3"] = function(context) 
		ScriptLib.SetGroupVariableValue(context,"is_daynight_finish",1)
		ScriptLib.CreateGadget(context, { config_id = 33002 }) 
		ScriptLib.CreateGadget(context, { config_id = 33003 }) 
		ScriptLib.CreateGadget(context, { config_id = 33004 }) 
		ScriptLib.CreateGadget(context, { config_id = 33005 }) 
	end,

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
	{ config_id = 33002, gadget_id = 70900049, pos = { x = -165.340, y = 254.800, z = 390.425 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, area_id = 200 },
	{ config_id = 33003, gadget_id = 70900049, pos = { x = -174.122, y = 254.800, z = 391.054 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, area_id = 200 },
	{ config_id = 33004, gadget_id = 70900049, pos = { x = -187.609, y = 254.800, z = 405.894 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, area_id = 200 },
	{ config_id = 33005, gadget_id = 70900049, pos = { x = -187.410, y = 254.699, z = 414.759 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, area_id = 200 },
	{ config_id = 33007, gadget_id = 70211001, pos = { x = -183.143, y = 254.134, z = 396.193 }, rot = { x = 0.000, y = 228.194, z = 0.000 }, level = 16, drop_tag = "战斗低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
	{ config_id = 33009, gadget_id = 70290216, pos = { x = -165.081, y = 255.115, z = 390.472 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 33010, gadget_id = 70290216, pos = { x = -174.169, y = 255.115, z = 391.244 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 33011, gadget_id = 70290216, pos = { x = -187.546, y = 255.115, z = 405.949 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 33012, gadget_id = 70290216, pos = { x = -187.573, y = 255.015, z = 414.838 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1033006, name = "GADGET_STATE_CHANGE_33006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_33006", action = "action_EVENT_GADGET_STATE_CHANGE_33006", trigger_count = 0 },
	{ config_id = 1033013, name = "GROUP_LOAD_33013", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_33013", trigger_count = 0 },
	{ config_id = 1033014, name = "VARIABLE_CHANGE_33014", event = EventType.EVENT_VARIABLE_CHANGE, source = "gameplayState", condition = "", action = "action_EVENT_VARIABLE_CHANGE_33014", trigger_count = 0 },
	{ config_id = 1033015, name = "GADGET_STATE_CHANGE_33015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_33015", action = "action_EVENT_GADGET_STATE_CHANGE_33015", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "gameplayState", value = 1, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 33001, gadget_id = 70360338, pos = { x = -182.013, y = 261.146, z = 397.499 }, rot = { x = 0.000, y = 293.855, z = 0.000 }, level = 36, persistent = true, area_id = 200 },
		{ config_id = 33008, gadget_id = 70290216, pos = { x = -182.058, y = 261.658, z = 397.452 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 }
	}
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
		triggers = { "GADGET_STATE_CHANGE_33006", "GROUP_LOAD_33013", "VARIABLE_CHANGE_33014", "GADGET_STATE_CHANGE_33015" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
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

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_33006(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 155008033, 33002) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 155008033, 33003) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 155008033, 33004) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 155008033, 33005) then
		return false
	end
	
	-- 判断变量"gameplayState"为1
	if ScriptLib.GetGroupVariableValue(context, "gameplayState") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_33006(context, evt)
	-- 将本组内变量名为 "gameplayState" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gameplayState", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_33013(context, evt)
	UpdateGamePlayState(context)
	return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_33014(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	UpdateGamePlayState(context)
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_33015(context, evt)
	if GadgetState.ChestOpened ~= ScriptLib.GetGadgetStateByConfigId(context, 155008033, 33007) then
		return false
	end
	
	-- 判断变量"gameplayState"为2
	if ScriptLib.GetGroupVariableValue(context, "gameplayState") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_33015(context, evt)
	-- 将本组内变量名为 "gameplayState" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gameplayState", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "is_daynight_finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "is_daynight_finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

require "V2_4/EnvState"