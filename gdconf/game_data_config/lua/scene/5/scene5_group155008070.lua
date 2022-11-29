-- 基础信息
local base_info = {
	group_id = 155008070
}

-- Trigger变量
local defs = {
	group_ID = 155008070
}

-- DEFS_MISCS
local gameplayStateFuncitons = 
{
	["0"] = function(context)
		
		
	end,
	["1"] = function(context)
	
		ScriptLib.AddExtraGroupSuite(context, defs.group_ID, 2)
	
		
	end,
	["2"] = function(context)
		
		ScriptLib.AddExtraGroupSuite(context, defs.group_ID, 3)
		ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_ID, 70001, 0)
		ScriptLib.SetGroupVariableValueByGroup(context, "gameplayState", 2, 155008071)
	end,
	["3"] = function(context)
		ScriptLib.AddQuestProgress(context, "72267_MirrorSolved")
		ScriptLib.MarkPlayerAction(context, 6070, 3, 1)
	end

}


function UpdateGamePlayState(context)
	local state = ScriptLib.GetGroupVariableValue(context, "gameplayState") 

	gameplayStateFuncitons[tostring(state)](context)

end

function CheckSuccess(context)
	local wallmatch = ScriptLib.GetGroupVariableValue(context, "iswallmatch")


	if wallmatch == 1 then 
		return true
	end

	return false
end

function FinishProcess(context)

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
	-- 对称回廊宝箱 产出伊达的认可状2
	{ config_id = 70001, gadget_id = 70211132, pos = { x = -173.184, y = 209.331, z = 184.697 }, rot = { x = 0.000, y = 90.426, z = 0.000 }, level = 16, chest_drop_id = 2004200, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1070002, name = "LEVEL_TAG_CHANGE_70002", event = EventType.EVENT_LEVEL_TAG_CHANGE, source = "", condition = "", action = "action_EVENT_LEVEL_TAG_CHANGE_70002", trigger_count = 0 },
	{ config_id = 1070003, name = "VARIABLE_CHANGE_70003", event = EventType.EVENT_VARIABLE_CHANGE, source = "iswallmatch", condition = "", action = "action_EVENT_VARIABLE_CHANGE_70003", trigger_count = 0 },
	{ config_id = 1070004, name = "GROUP_LOAD_70004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_70004", trigger_count = 0 },
	{ config_id = 1070005, name = "VARIABLE_CHANGE_70005", event = EventType.EVENT_VARIABLE_CHANGE, source = "gameplayState", condition = "", action = "action_EVENT_VARIABLE_CHANGE_70005", trigger_count = 0 },
	{ config_id = 1070006, name = "GADGET_STATE_CHANGE_70006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_70006", action = "action_EVENT_GADGET_STATE_CHANGE_70006", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "gameplayState", value = 1, no_refresh = true },
	{ config_id = 2, name = "iswallmatch", value = 0, no_refresh = false },
	{ config_id = 3, name = "isNight", value = 0, no_refresh = false }
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
		triggers = { "GROUP_LOAD_70004", "VARIABLE_CHANGE_70005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 70001 },
		regions = { },
		triggers = { "LEVEL_TAG_CHANGE_70002", "VARIABLE_CHANGE_70003" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 70001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_70006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_LEVEL_TAG_CHANGE_70002(context, evt)
	if evt.param2 == 1 then 
			ScriptLib.SetGroupVariableValue(context, "isNight", 0)
		elseif evt.param2 == 2 then 
			ScriptLib.SetGroupVariableValue(context, "isNight", 1)
			if CheckSuccess(context) == true then 
				FinishProcess(context)
				if ScriptLib.GetGroupVariableValue(context, "gameplayState") ~= 3 then
					ScriptLib.SetGroupVariableValue(context, "gameplayState", 2)
				end
			end
		end
		return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_70003(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
		local current_env_state_id = ScriptLib.GetCurrentLevelTagVec(context, 1)[1]
			if (current_env_state_id == 1) then
				ScriptLib.SetGroupVariableValue(context, "isNight", 0)
			elseif  (current_env_state_id == 2) then
				ScriptLib.SetGroupVariableValue(context, "isNight", 1)
				if CheckSuccess(context) == true then 
					FinishProcess(context)
					if ScriptLib.GetGroupVariableValue(context, "gameplayState") ~= 3 then
						ScriptLib.SetGroupVariableValue(context, "gameplayState", 2)
					end
				end
			end 
		return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_70004(context, evt)
	UpdateGamePlayState(context)
	return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_70005(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	UpdateGamePlayState(context)
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_70006(context, evt)
	if GadgetState.ChestOpened ~= ScriptLib.GetGadgetStateByConfigId(context, 155008070, 70001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_70006(context, evt)
	-- 将本组内变量名为 "gameplayState" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gameplayState", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end