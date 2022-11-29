-- 基础信息
local base_info = {
	group_id = 155003029
}

-- Trigger变量
local defs = {
	group_ID = 155003029,
	managerGroup = 155002001
}

-- DEFS_MISCS
local gameplayStateFuncitons = 
{
	["0"] = function(context)
		
		
	end,
	["1"] = function(context)
		ScriptLib.RefreshGroup(context, { group_id = defs.group_ID, suite = 2 })
		ScriptLib.SetGroupVariableValue(context,"gameplayState", 2)
	end,
	["2"] = function(context)
		
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
	{ config_id = 29001, monster_id = 20060101, pos = { x = 1163.909, y = 249.784, z = -718.007 }, rot = { x = 0.000, y = 39.906, z = 0.000 }, level = 36, drop_tag = "飘浮灵", pose_id = 101, area_id = 200 },
	{ config_id = 29002, monster_id = 20060101, pos = { x = 1166.426, y = 248.363, z = -711.747 }, rot = { x = 0.000, y = 272.130, z = 0.000 }, level = 36, drop_tag = "飘浮灵", pose_id = 101, area_id = 200 },
	{ config_id = 29003, monster_id = 20060101, pos = { x = 1171.669, y = 248.893, z = -715.732 }, rot = { x = 0.000, y = 63.012, z = 0.000 }, level = 36, drop_tag = "飘浮灵", pose_id = 101, area_id = 200 }
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
	{ config_id = 1029004, name = "GROUP_LOAD_29004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_29004", trigger_count = 0 },
	{ config_id = 1029005, name = "VARIABLE_CHANGE_29005", event = EventType.EVENT_VARIABLE_CHANGE, source = "gameplayState", condition = "condition_EVENT_VARIABLE_CHANGE_29005", action = "action_EVENT_VARIABLE_CHANGE_29005", trigger_count = 0 }
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
		triggers = { "GROUP_LOAD_29004", "VARIABLE_CHANGE_29005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 29001, 29002, 29003 },
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
function action_EVENT_GROUP_LOAD_29004(context, evt)
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
function condition_EVENT_VARIABLE_CHANGE_29005(context, evt)
	if evt.param1 == evt.param2 then return false end
	
		-- 判断变量"gameplayState"为0
		if ScriptLib.GetGroupVariableValue(context, "gameplayState") == 0 then
				return false
		end
		
		return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_29005(context, evt)
	UpdateGamePlayState(context)
	return 0
end