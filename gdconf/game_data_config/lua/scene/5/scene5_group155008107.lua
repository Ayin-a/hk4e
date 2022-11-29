-- 基础信息
local base_info = {
	group_id = 155008107
}

-- Trigger变量
local defs = {
	group_ID = 155008107,
	gadget_RuneSeal = 107001,
	gadget_mask = 107002
}

-- DEFS_MISCS
local Controllers = {}
local EnvControlGadgets = {}
local Worktops = {}
local DayAppearGadgets = {defs.gadget_mask}
local NightAppearGadgets = {defs.gadget_RuneSeal}

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
		ScriptLib.AddExtraGroupSuite(context, defs.group_ID, 3)

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
	{ config_id = 107001, gadget_id = 70590046, pos = { x = -331.634, y = 269.046, z = 337.047 }, rot = { x = 351.595, y = 182.529, z = 0.162 }, level = 36, isOneoff = true, persistent = true, interact_id = 58, area_id = 200 },
	{ config_id = 107002, gadget_id = 70290216, pos = { x = -331.633, y = 269.024, z = 337.002 }, rot = { x = 0.000, y = 231.268, z = 0.000 }, level = 36, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 初始化
	{ config_id = 1107003, name = "GROUP_LOAD_107003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_107003", trigger_count = 0 },
	-- 监听gameplayState
	{ config_id = 1107004, name = "VARIABLE_CHANGE_107004", event = EventType.EVENT_VARIABLE_CHANGE, source = "gameplayState", condition = "", action = "action_EVENT_VARIABLE_CHANGE_107004", trigger_count = 0 },
	-- 解除刻印
	{ config_id = 1107005, name = "GADGET_STATE_CHANGE_107005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_107005", action = "action_EVENT_GADGET_STATE_CHANGE_107005" }
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
		triggers = { "GROUP_LOAD_107003", "VARIABLE_CHANGE_107004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 107001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_107005" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 107001 },
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
function action_EVENT_GROUP_LOAD_107003(context, evt)
	UpdateGamePlayState(context)
	return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_107004(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	UpdateGamePlayState(context)
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_107005(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 155008107, 107001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_107005(context, evt)
	-- 将本组内变量名为 "gameplayState" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gameplayState", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 针对当前group内变量名为 "activecount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "activecount", 1, 155008036) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

require "V2_4/EnvState"