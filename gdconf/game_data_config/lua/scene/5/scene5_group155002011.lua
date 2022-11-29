-- 基础信息
local base_info = {
	group_id = 155002011
}

-- Trigger变量
local defs = {
	group_ID = 155002011
}

-- DEFS_MISCS
local Controllers = {}
local EnvControlGadgets = {}
local Worktops = {}
local DayAppearGadgets = {}
local NightAppearGadgets = {11002}

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
	{ config_id = 11002, gadget_id = 70360315, pos = { x = 1299.024, y = 180.096, z = 825.602 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 初始化
	{ config_id = 1011005, name = "GROUP_LOAD_11005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_11005", trigger_count = 0 },
	-- 监听gameplayState
	{ config_id = 1011006, name = "VARIABLE_CHANGE_11006", event = EventType.EVENT_VARIABLE_CHANGE, source = "gameplayState", condition = "condition_EVENT_VARIABLE_CHANGE_11006", action = "action_EVENT_VARIABLE_CHANGE_11006", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "gameplayState", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1011007, name = "GADGET_STATE_CHANGE_11007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_11007", action = "action_EVENT_GADGET_STATE_CHANGE_11007", trigger_count = 0 }
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
		triggers = { "GROUP_LOAD_11005", "VARIABLE_CHANGE_11006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_11005", "VARIABLE_CHANGE_11006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_11005(context, evt)
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
function condition_EVENT_VARIABLE_CHANGE_11006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
		if ScriptLib.GetGroupVariableValue(context, "gameplayState") == 0 then
				return false
		end
		return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_11006(context, evt)
	UpdateGamePlayState(context)
	return 0
end

require "V2_4/EnvState"