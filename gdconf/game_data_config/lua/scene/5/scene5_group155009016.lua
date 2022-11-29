-- 基础信息
local base_info = {
	group_id = 155009016
}

-- Trigger变量
local defs = {
	group_ID = 155009016,
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
	{ config_id = 16003, gadget_id = 70500000, pos = { x = -798.249, y = 155.934, z = -102.399 }, rot = { x = 18.914, y = 96.163, z = 16.838 }, level = 36, point_type = 2004, area_id = 200 },
	{ config_id = 16004, gadget_id = 70500000, pos = { x = -812.000, y = 158.054, z = -104.441 }, rot = { x = 1.177, y = 88.358, z = 9.722 }, level = 36, point_type = 2004, area_id = 200 },
	{ config_id = 16005, gadget_id = 70500000, pos = { x = -809.794, y = 162.373, z = -128.722 }, rot = { x = 7.314, y = 59.631, z = 1.320 }, level = 36, point_type = 2004, area_id = 200 },
	{ config_id = 16006, gadget_id = 70500000, pos = { x = -826.588, y = 166.029, z = -131.718 }, rot = { x = 4.341, y = 307.700, z = 344.556 }, level = 36, point_type = 2004, area_id = 200 },
	{ config_id = 16007, gadget_id = 70500000, pos = { x = -795.653, y = 158.375, z = -115.578 }, rot = { x = 0.000, y = 39.127, z = 0.000 }, level = 36, point_type = 2004, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1016001, name = "GROUP_LOAD_16001", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_16001", trigger_count = 0 },
	{ config_id = 1016002, name = "VARIABLE_CHANGE_16002", event = EventType.EVENT_VARIABLE_CHANGE, source = "gameplayState", condition = "condition_EVENT_VARIABLE_CHANGE_16002", action = "action_EVENT_VARIABLE_CHANGE_16002", trigger_count = 0 }
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
		triggers = { "GROUP_LOAD_16001", "VARIABLE_CHANGE_16002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 16003, 16004, 16005, 16006, 16007 },
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
function action_EVENT_GROUP_LOAD_16001(context, evt)
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
function condition_EVENT_VARIABLE_CHANGE_16002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
		-- 判断变量"gameplayState"为0
		if ScriptLib.GetGroupVariableValue(context, "gameplayState") == 0 then
				return false
		end
		
		return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_16002(context, evt)
	UpdateGamePlayState(context)
	return 0
end