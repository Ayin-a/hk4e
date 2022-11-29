-- 基础信息
local base_info = {
	group_id = 155005102
}

-- DEFS_MISCS
local Controllers = {}
local EnvControlGadgets = {}
local Worktops = {}
local DayAppearGadgets = {}
local NightAppearGadgets = {102010}

local gameplayStateFuncitons = 
{
	["0"] = function(context)

	end,
	["1"] = function(context)

	end,
	["2"] = function(context)

		ScriptLib.SetGadgetStateByConfigId(context,102010, 202)
	end
}
function UpdateGamePlayState(context)
	local state = ScriptLib.GetGroupVariableValue(context, "gameplayState") 

	gameplayStateFuncitons[tostring(state)](context)

end
--state = {}
function GadgetStateSwitcher(context,groupid,gadget_id,state)

	if ScriptLib.GetGadgetStateByConfigId(context, groupid, gadget_id)  == state[1] then 
		ScriptLib.SetGroupGadgetStateByConfigId(context, groupid, gadget_id, state[2])
	elseif ScriptLib.GetGadgetStateByConfigId(context, groupid, gadget_id)  == state[2] then 
		ScriptLib.SetGroupGadgetStateByConfigId(context, groupid, gadget_id, state[1])
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
	{ config_id = 102010, gadget_id = 70360320, pos = { x = 196.660, y = 286.333, z = 350.507 }, rot = { x = 0.000, y = 36.083, z = 0.000 }, level = 36, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 初始化
	{ config_id = 1102011, name = "GROUP_LOAD_102011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_102011", trigger_count = 0 },
	-- 监听gameplayState
	{ config_id = 1102015, name = "VARIABLE_CHANGE_102015", event = EventType.EVENT_VARIABLE_CHANGE, source = "gameplayState", condition = "", action = "action_EVENT_VARIABLE_CHANGE_102015", trigger_count = 0 }
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
		triggers = { "GROUP_LOAD_102011", "VARIABLE_CHANGE_102015" },
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

-- 触发操作
function action_EVENT_GROUP_LOAD_102011(context, evt)
	UpdateGamePlayState(context)
	return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_102015(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	if evt.param1 == evt.param2 then return -1 end
	
	UpdateGamePlayState(context)
	return 0
end

require "V2_4/EnvState"
require "V2_4/EnvStateWorktop"