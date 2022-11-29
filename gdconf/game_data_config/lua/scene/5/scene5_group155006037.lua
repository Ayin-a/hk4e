-- 基础信息
local base_info = {
	group_id = 155006037
}

-- Trigger变量
local defs = {
	group_ID = 155006037
}

-- DEFS_MISCS
local Controllers = {}
local EnvControlGadgets = {37003,37004,37005}
local Worktops = {}
local DayAppearGadgets = {37001,37011}
local NightAppearGadgets = {37002}



local gameplayStateFuncitons = 
{
	["0"] = function(context)
		ScriptLib.SetGroupVariableValue(context,"is_daynight_finish",1)
		
	end,
	["1"] = function(context)
		ScriptLib.SetGroupVariableValue(context,"is_daynight_finish",0)
		ScriptLib.AddExtraGroupSuite(context, defs.group_ID, 2)

		DayNight_Gadget_Unlock(context,37003)
		DayNight_Gadget_Unlock(context,37004)
		DayNight_Gadget_Unlock(context,37005)

	end,
	["2"] = function(context)
		
		ScriptLib.SetGroupVariableValue(context,"is_daynight_finish",1)
		ScriptLib.AddExtraGroupSuite(context, defs.group_ID, 3)

		DayNight_Gadget_Finish(context,37003)
		DayNight_Gadget_Finish(context,37004)
		DayNight_Gadget_Finish(context,37005)

		ScriptLib.SetGadgetStateByConfigId(context, 37001, 202)
		ScriptLib.SetGadgetStateByConfigId(context, 37011, 202)
		ScriptLib.SetGadgetStateByConfigId(context, 37002, 202)
		
		ScriptLib.SetGadgetStateByConfigId(context, 37012, 201)
		ScriptLib.SetGadgetStateByConfigId(context, 37013, 201)
		ScriptLib.SetGadgetStateByConfigId(context, 37014, 201)

		ScriptLib.SetGadgetStateByConfigId(context,37015,0)


	end,
	["3"] = function(context)
		
		ScriptLib.SetGroupVariableValue(context,"is_daynight_finish",1)
		ScriptLib.AddExtraGroupSuite(context, defs.group_ID, 3)
		DayNight_Gadget_Finish(context,37003)
		DayNight_Gadget_Finish(context,37004)
		DayNight_Gadget_Finish(context,37005)

		ScriptLib.SetGadgetStateByConfigId(context, 37001, 202)
		ScriptLib.SetGadgetStateByConfigId(context, 37011, 202)
		ScriptLib.SetGadgetStateByConfigId(context, 37002, 202)
		
		ScriptLib.SetGadgetStateByConfigId(context, 37012, 201)
		ScriptLib.SetGadgetStateByConfigId(context, 37013, 201)
		ScriptLib.SetGadgetStateByConfigId(context, 37014, 201)

	end,
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
	{ config_id = 37001, gadget_id = 70360320, pos = { x = 331.442, y = 163.662, z = -321.195 }, rot = { x = 0.000, y = 314.604, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 37002, gadget_id = 70360321, pos = { x = 339.279, y = 163.662, z = -321.915 }, rot = { x = 0.000, y = 43.882, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 37003, gadget_id = 70360309, pos = { x = 319.830, y = 164.863, z = -305.613 }, rot = { x = 0.037, y = 350.309, z = 0.828 }, level = 36, area_id = 200 },
	{ config_id = 37004, gadget_id = 70360309, pos = { x = 348.553, y = 165.305, z = -316.920 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 37005, gadget_id = 70360304, pos = { x = 325.762, y = 165.016, z = -311.295 }, rot = { x = 0.000, y = 347.276, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 37011, gadget_id = 70360314, pos = { x = 349.167, y = 163.662, z = -316.608 }, rot = { x = 0.000, y = 44.704, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 37012, gadget_id = 70290281, pos = { x = 338.567, y = 170.985, z = -321.145 }, rot = { x = 0.000, y = 314.890, z = 180.000 }, level = 36, area_id = 200 },
	{ config_id = 37013, gadget_id = 70290281, pos = { x = 338.895, y = 171.056, z = -327.753 }, rot = { x = 0.000, y = 224.973, z = 180.000 }, level = 36, area_id = 200 },
	{ config_id = 37014, gadget_id = 70290281, pos = { x = 345.183, y = 171.114, z = -321.226 }, rot = { x = 0.000, y = 224.973, z = 180.000 }, level = 36, area_id = 200 },
	-- 灵庙山顶遗迹解谜宝箱
	{ config_id = 37015, gadget_id = 70211122, pos = { x = 341.885, y = 165.804, z = -324.498 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "解谜高级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 夜晚震动机关激活，关闭白天常世封印
	{ config_id = 1037006, name = "GADGET_STATE_CHANGE_37006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_37006", action = "action_EVENT_GADGET_STATE_CHANGE_37006", trigger_count = 0 },
	-- 夜晚震动机关激活，通知铁门group，反转铁门的状态
	{ config_id = 1037007, name = "GADGET_STATE_CHANGE_37007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_37007", action = "action_EVENT_GADGET_STATE_CHANGE_37007", trigger_count = 0 },
	-- 打开宝箱
	{ config_id = 1037008, name = "GADGET_STATE_CHANGE_37008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_37008", action = "action_EVENT_GADGET_STATE_CHANGE_37008", trigger_count = 0 },
	-- 监听gameplayState
	{ config_id = 1037009, name = "VARIABLE_CHANGE_37009", event = EventType.EVENT_VARIABLE_CHANGE, source = "gameplayState", condition = "", action = "action_EVENT_VARIABLE_CHANGE_37009", trigger_count = 0 },
	-- 初始化
	{ config_id = 1037010, name = "GROUP_LOAD_37010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_37010", trigger_count = 0 }
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
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "VARIABLE_CHANGE_37009", "GROUP_LOAD_37010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 37003, 37004, 37005, 37012, 37013, 37014, 37015 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_37006", "GADGET_STATE_CHANGE_37007", "GADGET_STATE_CHANGE_37008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 37003, 37004, 37005, 37012, 37013, 37014, 37015 },
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
function condition_EVENT_GADGET_STATE_CHANGE_37006(context, evt)
		if 37003 ~= evt.param2 or 322 ~= evt.param1 then
			return false
		end
	
		if ScriptLib.GetGroupVariableValue(context, "gameplayState") ~= 1 then
			return false
	end
	
		
		ScriptLib.PrintContextLog(context,"EnvState: 震动机关被激活！")
		return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_37006(context, evt)
	
	ScriptLib.SetGroupGadgetStateByConfigId(context, 155006037, 37001, 202)
	
	
	return 0
	
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_37007(context, evt)
		if 37004 ~= evt.param2 or 322 ~= evt.param1 then
			return false
		end
		if ScriptLib.GetGroupVariableValue(context, "gameplayState") ~= 1 then
			return false
		end
	
		
		return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_37007(context, evt)
	-- 将本组内变量名为 "gameplayState" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gameplayState", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_37008(context, evt)
	if GadgetState.ChestOpened ~= ScriptLib.GetGadgetStateByConfigId(context, 155006037, 37015) then
		return false
	end
	
	-- 判断变量"gameplayState"为2
	if ScriptLib.GetGroupVariableValue(context, "gameplayState") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_37008(context, evt)
	-- 将本组内变量名为 "gameplayState" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gameplayState", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_37009(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	UpdateGamePlayState(context)
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_37010(context, evt)
	UpdateGamePlayState(context)
	return 0
end

require "V2_4/EnvState"