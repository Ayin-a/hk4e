-- 基础信息
local base_info = {
	group_id = 155009035
}

-- Trigger变量
local defs = {
	group_ID = 155009035,
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
	{ config_id = 35001, monster_id = 28040703, pos = { x = -756.215, y = 140.087, z = -118.234 }, rot = { x = 0.000, y = 102.244, z = 0.000 }, level = 36, drop_tag = "水族", area_id = 200 },
	{ config_id = 35002, monster_id = 28040703, pos = { x = -785.582, y = 143.295, z = -271.100 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "水族", area_id = 200 },
	{ config_id = 35003, monster_id = 28040703, pos = { x = -668.907, y = 138.822, z = -178.923 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "水族", area_id = 200 }
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
	{ config_id = 1035004, name = "GROUP_LOAD_35004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_35004", trigger_count = 0 },
	{ config_id = 1035005, name = "VARIABLE_CHANGE_35005", event = EventType.EVENT_VARIABLE_CHANGE, source = "gameplayState", condition = "condition_EVENT_VARIABLE_CHANGE_35005", action = "action_EVENT_VARIABLE_CHANGE_35005", trigger_count = 0 }
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
		triggers = { "GROUP_LOAD_35004", "VARIABLE_CHANGE_35005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 35001, 35002, 35003 },
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
function action_EVENT_GROUP_LOAD_35004(context, evt)
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
function condition_EVENT_VARIABLE_CHANGE_35005(context, evt)
	if evt.param1 == evt.param2 then return false end
	
		-- 判断变量"gameplayState"为0
		if ScriptLib.GetGroupVariableValue(context, "gameplayState") == 0 then
				return false
		end
		
		return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_35005(context, evt)
	UpdateGamePlayState(context)
	return 0
end