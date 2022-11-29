-- 基础信息
local base_info = {
	group_id = 155009021
}

-- Trigger变量
local defs = {
	group_ID = 155009021,
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
	{ config_id = 21001, monster_id = 20060601, pos = { x = -755.977, y = 203.752, z = -156.724 }, rot = { x = 9.199, y = 7.431, z = 10.149 }, level = 36, drop_tag = "飘浮灵", pose_id = 101, area_id = 200 },
	{ config_id = 21002, monster_id = 20060601, pos = { x = -757.347, y = 204.389, z = -162.592 }, rot = { x = 7.127, y = 7.185, z = 9.541 }, level = 36, drop_tag = "飘浮灵", pose_id = 101, area_id = 200 },
	{ config_id = 21003, monster_id = 20060601, pos = { x = -744.697, y = 204.774, z = -154.571 }, rot = { x = 5.787, y = 6.917, z = 7.685 }, level = 36, drop_tag = "飘浮灵", pose_id = 101, area_id = 200 },
	{ config_id = 21004, monster_id = 20060601, pos = { x = -754.258, y = 202.679, z = -148.690 }, rot = { x = 11.458, y = 7.745, z = 10.960 }, level = 36, drop_tag = "飘浮灵", pose_id = 101, area_id = 200 }
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
	{ config_id = 1021005, name = "GROUP_LOAD_21005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_21005", trigger_count = 0 },
	{ config_id = 1021006, name = "VARIABLE_CHANGE_21006", event = EventType.EVENT_VARIABLE_CHANGE, source = "gameplayState", condition = "condition_EVENT_VARIABLE_CHANGE_21006", action = "action_EVENT_VARIABLE_CHANGE_21006", trigger_count = 0 }
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
		triggers = { "GROUP_LOAD_21005", "VARIABLE_CHANGE_21006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 21001, 21002, 21003, 21004 },
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
function action_EVENT_GROUP_LOAD_21005(context, evt)
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
function condition_EVENT_VARIABLE_CHANGE_21006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
		-- 判断变量"gameplayState"为0
		if ScriptLib.GetGroupVariableValue(context, "gameplayState") == 0 then
				return false
		end
		
		return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_21006(context, evt)
	UpdateGamePlayState(context)
	return 0
end