-- 基础信息
local base_info = {
	group_id = 155006069
}

-- Trigger变量
local defs = {
	group_ID = 155006069,
	gadget_01 = 69001,
	gadget_02 = 69002,
	gadget_03 = 69003,
	gadget_04 = 69004,
	gadget_mask_01 = 69006,
	gadget_mask_02 = 69005,
	gadget_mask_03 = 69007,
	gadget_mask_04 = 69008
}

-- DEFS_MISCS
-- DEFS_MISCS
local Controllers = {}
local EnvControlGadgets = {}
local Worktops = {}
local DayAppearGadgets = {defs.gadget_mask_01,defs.gadget_mask_02,defs.gadget_mask_03,defs.gadget_mask_04}
local NightAppearGadgets = {defs.gadget_01,defs.gadget_02,defs.gadget_03,defs.gadget_04,69013,69014,69015,69016}


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
		ScriptLib.SetGroupVariableValue(context,"is_daynight_finish",0)
		ScriptLib.AddExtraGroupSuite(context, defs.group_ID, 3)
		--ScriptLib.CreateGadget(context, { config_id = defs.gadget_chest })
		--ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_ID, defs.gadget_chest, 0)

		ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_ID, defs.gadget_01, 201)
		ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_ID, defs.gadget_02, 201)
		ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_ID, defs.gadget_03, 201)
		ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_ID, defs.gadget_04, 201)
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
	{ config_id = 69001, gadget_id = 70900049, pos = { x = 593.309, y = 144.892, z = -458.935 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 69002, gadget_id = 70900049, pos = { x = 563.224, y = 144.748, z = -469.313 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 69003, gadget_id = 70900049, pos = { x = 552.522, y = 144.784, z = -449.534 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 69004, gadget_id = 70900049, pos = { x = 592.851, y = 144.865, z = -489.621 }, rot = { x = 0.000, y = 40.595, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 69005, gadget_id = 70290216, pos = { x = 593.219, y = 144.775, z = -458.864 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 69006, gadget_id = 70290216, pos = { x = 563.137, y = 144.811, z = -469.217 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 69007, gadget_id = 70290216, pos = { x = 552.503, y = 144.719, z = -449.344 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 69008, gadget_id = 70290216, pos = { x = 592.948, y = 144.775, z = -489.495 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 69013, gadget_id = 70710126, pos = { x = 593.301, y = 144.776, z = -458.938 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 69014, gadget_id = 70710126, pos = { x = 563.223, y = 144.670, z = -469.336 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 69015, gadget_id = 70710126, pos = { x = 552.679, y = 144.762, z = -449.390 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 69016, gadget_id = 70710126, pos = { x = 592.883, y = 144.777, z = -489.553 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 69001
	{ config_id = 1069009, name = "GADGET_STATE_CHANGE_69009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_69009", action = "action_EVENT_GADGET_STATE_CHANGE_69009", trigger_count = 0 },
	-- 激活全部的重力压板
	{ config_id = 1069010, name = "GADGET_STATE_CHANGE_69010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_69010", action = "action_EVENT_GADGET_STATE_CHANGE_69010", trigger_count = 0 },
	-- 初始化
	{ config_id = 1069011, name = "GROUP_LOAD_69011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_69011", trigger_count = 0 },
	-- 监听gameplayState变化
	{ config_id = 1069012, name = "VARIABLE_CHANGE_69012", event = EventType.EVENT_VARIABLE_CHANGE, source = "gameplayState", condition = "condition_EVENT_VARIABLE_CHANGE_69012", action = "action_EVENT_VARIABLE_CHANGE_69012", trigger_count = 0 },
	-- 69002
	{ config_id = 1069017, name = "GADGET_STATE_CHANGE_69017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_69017", action = "action_EVENT_GADGET_STATE_CHANGE_69017", trigger_count = 0 },
	-- 69003
	{ config_id = 1069018, name = "GADGET_STATE_CHANGE_69018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_69018", action = "action_EVENT_GADGET_STATE_CHANGE_69018", trigger_count = 0 },
	-- 69004
	{ config_id = 1069019, name = "GADGET_STATE_CHANGE_69019", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_69019", action = "action_EVENT_GADGET_STATE_CHANGE_69019", trigger_count = 0 },
	{ config_id = 1069020, name = "GADGET_CREATE_69020", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_69020", action = "action_EVENT_GADGET_CREATE_69020", trigger_count = 0 }
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
		triggers = { "GROUP_LOAD_69011", "VARIABLE_CHANGE_69012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 玩法开启,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_69009", "GADGET_STATE_CHANGE_69010", "GADGET_STATE_CHANGE_69017", "GADGET_STATE_CHANGE_69018", "GADGET_STATE_CHANGE_69019" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 玩法完成,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GADGET_CREATE_69020" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_69009(context, evt)
	-- 检测config_id为69001的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 69001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_69009(context, evt)
	-- 改变指定group组155006069中， configid为69013的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 155006069, 69013, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_69010(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 155006069, 69001) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 155006069, 69002) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 155006069, 69003) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 155006069, 69004) then
		return false
	end
	
	-- 判断变量"gameplayState"为1
	if ScriptLib.GetGroupVariableValue(context, "gameplayState") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_69010(context, evt)
	-- 将本组内变量名为 "gameplayState" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gameplayState", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "gameplayState" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "gameplayState", 2, 155006012) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "gameplayState" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "gameplayState", 2, 155006029) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 通知场景上的所有玩家播放名字为58 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 58, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_69011(context, evt)
	UpdateGamePlayState(context)
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_69012(context, evt)
	if evt.param1 == evt.param2 then return false end
	
		-- 判断变量"gameplayState"为0
		if ScriptLib.GetGroupVariableValue(context, "gameplayState") == 0 then
				return false
		end
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_69012(context, evt)
	UpdateGamePlayState(context)
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_69017(context, evt)
	-- 检测config_id为69002的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 69002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_69017(context, evt)
	-- 改变指定group组155006069中， configid为69014的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 155006069, 69014, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_69018(context, evt)
	-- 检测config_id为69003的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 69003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_69018(context, evt)
	-- 改变指定group组155006069中， configid为69015的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 155006069, 69015, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_69019(context, evt)
	-- 检测config_id为69004的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 69004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_69019(context, evt)
	-- 改变指定group组155006069中， configid为69016的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 155006069, 69016, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_69020(context, evt)
	if evt.param1 ~= 69001 and
	evt.param1 ~= 69002 and
	evt.param1 ~= 69003 and
	evt.param1 ~= 69004 then 
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_69020(context, evt)
	-- 改变指定group组155006069中， configid为69001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 155006069, 69001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组155006069中， configid为69002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 155006069, 69002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组155006069中， configid为69003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 155006069, 69003, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组155006069中， configid为69004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 155006069, 69004, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

require "V2_4/EnvState"