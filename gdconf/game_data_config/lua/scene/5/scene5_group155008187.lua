-- 基础信息
local base_info = {
	group_id = 155008187
}

-- Trigger变量
local defs = {
	group_ID = 155008187,
	CallCheckFunction = 0
}

-- DEFS_MISCS
local pairsgrouplist = 
{
	{155008201,1}
}
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
		ScriptLib.AddExtraGroupSuite(context, defs.group_ID, 2)

		ScriptLib.SetGroupVariableValueByGroup(context, "gameplayState", 2, 155008189) 
		
		
	end

}


function UpdateGamePlayState(context)
	local state = ScriptLib.GetGroupVariableValue(context, "gameplayState") 

	gameplayStateFuncitons[tostring(state)](context)

end

function GetGroup(context,unid)

	for i=1,#pairsgrouplist do
		if pairsgrouplist[i] == unid then 
			return pairsgrouplist[i][1]
		end
	end
	return -1
end

function ResetUniqeID(context,pair)
	ScriptLib.SetGroupVariableValue(context,"uniqe_id_01",0)
	ScriptLib.SetGroupVariableValue(context,"uniqe_id_02",0)
end

function ResetPairGroup(context)



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
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 初始化
	{ config_id = 1187001, name = "GROUP_LOAD_187001", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_187001", trigger_count = 0 },
	-- 监听gameplayState变化
	{ config_id = 1187002, name = "VARIABLE_CHANGE_187002", event = EventType.EVENT_VARIABLE_CHANGE, source = "gameplayState", condition = "condition_EVENT_VARIABLE_CHANGE_187002", action = "action_EVENT_VARIABLE_CHANGE_187002", trigger_count = 0 },
	-- 监听玩法对的情况
	{ config_id = 1187003, name = "VARIABLE_CHANGE_187003", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_187003", action = "action_EVENT_VARIABLE_CHANGE_187003", trigger_count = 0 },
	-- 确定全部激活
	{ config_id = 1187004, name = "VARIABLE_CHANGE_187004", event = EventType.EVENT_VARIABLE_CHANGE, source = "activepairscount", condition = "condition_EVENT_VARIABLE_CHANGE_187004", action = "action_EVENT_VARIABLE_CHANGE_187004", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "gameplayState", value = 1, no_refresh = true },
	{ config_id = 2, name = "activepairscount", value = 0, no_refresh = true },
	{ config_id = 3, name = "uniqe_id_01", value = 0, no_refresh = false },
	{ config_id = 4, name = "uniqe_id_02", value = 0, no_refresh = false }
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
		triggers = { "GROUP_LOAD_187001", "VARIABLE_CHANGE_187002", "VARIABLE_CHANGE_187003", "VARIABLE_CHANGE_187004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 玩法开启,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 玩法完成,
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
function action_EVENT_GROUP_LOAD_187001(context, evt)
	UpdateGamePlayState(context)
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_187002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
		-- 判断变量"gameplayState"为0
		if ScriptLib.GetGroupVariableValue(context, "gameplayState") == 0 then
				return false
		end
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_187002(context, evt)
	UpdateGamePlayState(context)
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_187003(context, evt)
	if evt.param1 == evt.param2 then return false end
	
		if evt.source_name ~= "uniqe_id_01" and evt.source_name ~= "uniqe_id_02" then 
			return false
		end
	
		if ScriptLib.GetGroupVariableValue(context, "uniqe_id_01") == 0 or ScriptLib.GetGroupVariableValue(context, "uniqe_id_02") == 0 then 
			return false
		end
		return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_187003(context, evt)
		local unid_01 = ScriptLib.GetGroupVariableValue(context, "uniqe_id_01")
		local unid_02 = ScriptLib.GetGroupVariableValue(context, "uniqe_id_02")
	
		local group_01 = GetGroup(context,unid_01)
		local group_02 = GetGroup(context,unid_02)
	
		if unid_01 == unid_02 then 
			ScriptLib.SetGroupVariableValueByGroup(context, "CallOnFunction", 2 , group_01)
				
			ScriptLib.ChangeGroupVariableValue(context, "activepairscount", 1)
	
		else
	
			ScriptLib.SetGroupVariableValueByGroup(context, "CallOnFunction", 1 , group_01)
			ScriptLib.SetGroupVariableValueByGroup(context, "CallOnFunction", 1 , group_02)
	
		end
		return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_187004(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"activepairscount"为2
	if ScriptLib.GetGroupVariableValue(context, "activepairscount") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_187004(context, evt)
	-- 将本组内变量名为 "gameplayState" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "gameplayState", 2, 155008189) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end