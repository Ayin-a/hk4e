-- 基础信息
local base_info = {
	group_id = 155008215
}

-- Trigger变量
local defs = {
	managerGroupID = 155003001,
	group_ID = 155008215
}

-- DEFS_MISCS
local EnvControlGadgets = {}

local DayAppearGadgets = {215003}
local NightAppearGadgets = {215004}




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
		
		ScriptLib.SetGadgetStateByConfigId(context, 215003, 202)
		ScriptLib.SetGadgetStateByConfigId(context, 215004, 202)
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
	{ config_id = 215003, gadget_id = 70360318, pos = { x = -163.021, y = 228.572, z = 241.715 }, rot = { x = 0.000, y = 17.562, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 215004, gadget_id = 70360310, pos = { x = -163.509, y = 228.777, z = 242.303 }, rot = { x = 6.293, y = 352.069, z = 344.284 }, level = 36, area_id = 200 },
	{ config_id = 215005, gadget_id = 70211132, pos = { x = -161.552, y = 235.825, z = 243.479 }, rot = { x = 9.030, y = 358.731, z = 344.036 }, level = 16, drop_tag = "解谜超级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1215001, name = "GROUP_LOAD_215001", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_215001", trigger_count = 0 },
	{ config_id = 1215002, name = "VARIABLE_CHANGE_215002", event = EventType.EVENT_VARIABLE_CHANGE, source = "gameplayState", condition = "condition_EVENT_VARIABLE_CHANGE_215002", action = "action_EVENT_VARIABLE_CHANGE_215002", trigger_count = 0 },
	{ config_id = 1215006, name = "GADGET_STATE_CHANGE_215006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_215006", action = "action_EVENT_GADGET_STATE_CHANGE_215006" },
	{ config_id = 1215007, name = "LEVEL_TAG_CHANGE_215007", event = EventType.EVENT_LEVEL_TAG_CHANGE, source = "", condition = "", action = "action_EVENT_LEVEL_TAG_CHANGE_215007", trigger_count = 0 }
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
		triggers = { "GROUP_LOAD_215001", "VARIABLE_CHANGE_215002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 215005 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_215006", "LEVEL_TAG_CHANGE_215007" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
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

-- 触发操作
function action_EVENT_GROUP_LOAD_215001(context, evt)
		local isactive = ScriptLib.GetGroupVariableValueByGroup(context, "IslandActive", defs.managerGroupID)
	
		if isactive == 1 then 
			if ScriptLib.GetGroupVariableValue(context,"gameplayState") == 0 then 
				ScriptLib.SetGroupVariableValue(context,"gameplayState", 1)
			end
			
		end
	UpdateGamePlayState(context)
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_215002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
			if ScriptLib.GetGroupVariableValue(context, "gameplayState") == 0 then
					return false
			end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_215002(context, evt)
	UpdateGamePlayState(context)
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_215006(context, evt)
	if GadgetState.ChestOpened ~= ScriptLib.GetGadgetStateByConfigId(context, 155008215, 215005) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_215006(context, evt)
	-- 将本组内变量名为 "gameplayState" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gameplayState", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_LEVEL_TAG_CHANGE_215007(context, evt)
	if evt.param2 == 1 then
	ScriptLib.SetGadgetStateByConfigId(context, 215005, 0)
	elseif evt.param2 == 2 then
	ScriptLib.SetGadgetStateByConfigId(context, 215005, 101)
	end
	
	return 0
end

require "V2_4/EnvState"