-- 基础信息
local base_info = {
	group_id = 155005070
}

-- Trigger变量
local defs = {
	group_ID = 155005070
}

-- DEFS_MISCS
local gameplayStateFuncitons = 
{
	["0"] = function(context)
		ScriptLib.AddExtraGroupSuite(context, defs.group_ID, 2)
	end,
	["1"] = function(context)
		ScriptLib.AddExtraGroupSuite(context, defs.group_ID, 2)
		ScriptLib.AddQuestProgress(context, "72241_StonBack_B_Success")
	end,
	["2"] = function(context)

		ScriptLib.SetGadgetStateByConfigId(context, 70001, 201)

	end,
	["3"] = function(context)


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
	{ config_id = 70001, gadget_id = 70360331, pos = { x = 279.103, y = 337.746, z = 237.817 }, rot = { x = 0.000, y = 5.515, z = 0.000 }, level = 36, persistent = true, area_id = 200 },
	{ config_id = 70006, gadget_id = 70360346, pos = { x = 279.221, y = 337.738, z = 238.024 }, rot = { x = 0.000, y = 5.515, z = 0.000 }, level = 36, interact_id = 62, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1070002, name = "VARIABLE_CHANGE_70002", event = EventType.EVENT_VARIABLE_CHANGE, source = "gameplayState", condition = "", action = "action_EVENT_VARIABLE_CHANGE_70002", trigger_count = 0 },
	{ config_id = 1070003, name = "GADGET_STATE_CHANGE_70003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_70003", action = "action_EVENT_GADGET_STATE_CHANGE_70003" },
	{ config_id = 1070004, name = "QUEST_FINISH_70004", event = EventType.EVENT_QUEST_FINISH, source = "7224104", condition = "", action = "action_EVENT_QUEST_FINISH_70004", trigger_count = 0 },
	{ config_id = 1070005, name = "GROUP_LOAD_70005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_70005", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "gameplayState", value = 0, no_refresh = true }
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
		gadgets = { 70001 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_70002", "GROUP_LOAD_70005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 70006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_70003", "QUEST_FINISH_70004" },
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
function action_EVENT_VARIABLE_CHANGE_70002(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	UpdateGamePlayState(context)
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_70003(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 155005070, 70006) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_70003(context, evt)
	-- 将本组内变量名为 "gameplayState" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gameplayState", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_70004(context, evt)
	-- 将本组内变量名为 "gameplayState" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gameplayState", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_70005(context, evt)
	UpdateGamePlayState(context)
	return 0
end