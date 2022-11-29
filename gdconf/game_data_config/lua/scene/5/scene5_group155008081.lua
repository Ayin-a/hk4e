-- 基础信息
local base_info = {
	group_id = 155008081
}

-- Trigger变量
local defs = {
	group_ID = 155008081
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
		ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_ID, 81003, 201)
		ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_ID, 81004, 201)
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
	{ config_id = 81003, gadget_id = 70290281, pos = { x = -125.851, y = 232.243, z = 179.478 }, rot = { x = 90.000, y = 359.671, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 81004, gadget_id = 70360002, pos = { x = -131.605, y = 233.652, z = 184.322 }, rot = { x = 0.000, y = 77.740, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 81005, gadget_id = 70360122, pos = { x = -131.270, y = 233.650, z = 184.352 }, rot = { x = 0.000, y = 27.466, z = 0.000 }, level = 36, interact_id = 81, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 初始化
	{ config_id = 1081001, name = "GROUP_LOAD_81001", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_81001", trigger_count = 0 },
	-- 监听gameplayState
	{ config_id = 1081002, name = "VARIABLE_CHANGE_81002", event = EventType.EVENT_VARIABLE_CHANGE, source = "gameplayState", condition = "", action = "action_EVENT_VARIABLE_CHANGE_81002", trigger_count = 0 },
	{ config_id = 1081006, name = "GADGET_STATE_CHANGE_81006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_81006", action = "action_EVENT_GADGET_STATE_CHANGE_81006", trigger_count = 0 }
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
		triggers = { "GROUP_LOAD_81001", "VARIABLE_CHANGE_81002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 81003, 81004, 81005 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_81006" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 81003, 81004 },
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
function action_EVENT_GROUP_LOAD_81001(context, evt)
	UpdateGamePlayState(context)
	return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_81002(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	UpdateGamePlayState(context)
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_81006(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 155008081, 81005) then
		return false
	end
	
	-- 判断变量"gameplayState"为1
	if ScriptLib.GetGroupVariableValue(context, "gameplayState") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_81006(context, evt)
	-- 将本组内变量名为 "gameplayState" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gameplayState", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "gameplayState" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "gameplayState", 1, 155008071) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end