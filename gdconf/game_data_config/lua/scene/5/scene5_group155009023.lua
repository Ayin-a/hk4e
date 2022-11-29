-- 基础信息
local base_info = {
	group_id = 155009023
}

-- Trigger变量
local defs = {
	group_ID = 155009023,
	managerGroup = 155009001
}

-- DEFS_MISCS
local gameplayStateFuncitons = 
{
	["0"] = function(context)
		
		
	end,
	["1"] = function(context)

		
		ScriptLib.RefreshGroup(context, { group_id = defs.group_ID, suite = 2 })
		ScriptLib.GoToGroupSuite(context, defs.group_ID, 2)
		ScriptLib.PrintContextLog(context, " add suit 2")

	
	end,
	["2"] = function(context)
		
		
		ScriptLib.AddExtraGroupSuite(context, defs.group_ID, 2)

	
	end
}


function UpdateGamePlayState(context)
	local state = ScriptLib.GetGroupVariableValue(context, "gameplayState") 
	ScriptLib.PrintContextLog(context, "update gameplay state")
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
	{ config_id = 23002, gadget_id = 70500000, pos = { x = -801.026, y = 186.268, z = -199.000 }, rot = { x = 325.974, y = 106.301, z = 331.136 }, level = 36, point_type = 1008, area_id = 200 },
	{ config_id = 23003, gadget_id = 70500000, pos = { x = -799.989, y = 188.532, z = -203.921 }, rot = { x = 332.869, y = 114.941, z = 351.807 }, level = 36, point_type = 1008, area_id = 200 },
	{ config_id = 23004, gadget_id = 70500000, pos = { x = -799.574, y = 188.439, z = -203.321 }, rot = { x = 4.049, y = 51.687, z = 39.843 }, level = 36, point_type = 1008, area_id = 200 },
	{ config_id = 23005, gadget_id = 70500000, pos = { x = -800.992, y = 186.126, z = -198.286 }, rot = { x = 1.957, y = 46.096, z = 26.225 }, level = 36, point_type = 1008, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1023006, name = "GROUP_LOAD_23006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_23006", trigger_count = 0 },
	{ config_id = 1023007, name = "VARIABLE_CHANGE_23007", event = EventType.EVENT_VARIABLE_CHANGE, source = "gameplayState", condition = "condition_EVENT_VARIABLE_CHANGE_23007", action = "action_EVENT_VARIABLE_CHANGE_23007", trigger_count = 0 }
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
	end_suite = 2,
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
		triggers = { "GROUP_LOAD_23006", "VARIABLE_CHANGE_23007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 23002, 23003, 23004, 23005 },
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
function action_EVENT_GROUP_LOAD_23006(context, evt)
			local isactive = ScriptLib.GetGroupVariableValueByGroup(context, "IslandActive", defs.managerGroup)
			
			if isactive == 1 then 
				if ScriptLib.GetGroupVariableValue(context,"gameplayState") == 0 then 
					ScriptLib.SetGroupVariableValue(context,"gameplayState", 1)
				end
				
			end
		UpdateGamePlayState(context)
			return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_23007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
		-- 判断变量"gameplayState"为0
		if ScriptLib.GetGroupVariableValue(context, "gameplayState") == 0 then
				return false
		end
		
		return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_23007(context, evt)
	UpdateGamePlayState(context)
	return 0
end