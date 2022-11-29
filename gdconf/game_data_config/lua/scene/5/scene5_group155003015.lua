-- 基础信息
local base_info = {
	group_id = 155003015
}

-- Trigger变量
local defs = {
	managerGroupID = 155003001,
	group_ID = 155003015
}

-- DEFS_MISCS
local gameplayStateFuncitons = 
{
	["0"] = function(context)
		--ScriptLib.SetGroupVariableValue(context,"is_daynight_finish",1)
		
	end,
	["1"] = function(context)
		ScriptLib.PrintContextLog(context,"Function : 1 ---Start")
		--ScriptLib.SetGroupVariableValue(context,"is_daynight_finish",0)
		ScriptLib.AddExtraGroupSuite(context, defs.group_ID, 2)
		ScriptLib.PrintContextLog(context,"Function : 1 ---End")
	
	end,
	["2"] = function(context)
		ScriptLib.PrintContextLog(context,"Function : 2 ---Start")
		--ScriptLib.SetGroupVariableValue(context,"is_daynight_finish",1)
		ScriptLib.AddExtraGroupSuite(context, defs.group_ID, 3)
		ScriptLib.PrintContextLog(context,"Function : 2 ---End")
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
	{ config_id = 15002, gadget_id = 70217012, pos = { x = 1332.761, y = 251.665, z = -758.637 }, rot = { x = 1.871, y = 39.464, z = 5.712 }, level = 26, drop_tag = "摩拉石箱稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
	{ config_id = 15006, gadget_id = 70217012, pos = { x = 1297.842, y = 263.378, z = -785.429 }, rot = { x = 348.247, y = 54.776, z = 5.545 }, level = 26, drop_tag = "摩拉石箱稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
	{ config_id = 15008, gadget_id = 70217012, pos = { x = 1286.609, y = 261.483, z = -785.579 }, rot = { x = 348.247, y = 54.776, z = 5.545 }, level = 26, drop_tag = "摩拉石箱稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1015004, name = "GROUP_LOAD_15004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_15004", trigger_count = 0 },
	{ config_id = 1015005, name = "VARIABLE_CHANGE_15005", event = EventType.EVENT_VARIABLE_CHANGE, source = "gameplayState", condition = "condition_EVENT_VARIABLE_CHANGE_15005", action = "action_EVENT_VARIABLE_CHANGE_15005", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "gameplayState", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 15001, gadget_id = 70217012, pos = { x = 1300.559, y = 242.573, z = -771.190 }, rot = { x = 341.801, y = 54.152, z = 5.145 }, level = 26, drop_tag = "摩拉石箱稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
		{ config_id = 15003, gadget_id = 70217012, pos = { x = 1293.325, y = 260.526, z = -652.056 }, rot = { x = 343.588, y = 0.765, z = 356.861 }, level = 26, drop_tag = "摩拉石箱稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
		{ config_id = 15007, gadget_id = 70217012, pos = { x = 1292.338, y = 264.516, z = -780.170 }, rot = { x = 9.336, y = 56.949, z = 6.532 }, level = 26, drop_tag = "摩拉石箱稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 }
	}
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
		gadgets = { 15008 },
		regions = { },
		triggers = { "GROUP_LOAD_15004", "VARIABLE_CHANGE_15005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 15002, 15006 },
		regions = { },
		triggers = { },
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
function action_EVENT_GROUP_LOAD_15004(context, evt)
			local isactive = ScriptLib.GetGroupVariableValueByGroup(context, "IslandActive", defs.managerGroupID)
		
			if isactive == 1 then 
				if ScriptLib.GetGroupVariableValue(context,"gameplayState") == 0 then 
					ScriptLib.SetGroupVariableValue(context,"gameplayState", 1)
				end
				
			end
		UpdateGamePlayState(context)
		return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_15005(context, evt)
	if evt.param1 == evt.param2 then return false end
	
				if ScriptLib.GetGroupVariableValue(context, "gameplayState") == 0 then
						return false
				end
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_15005(context, evt)
	UpdateGamePlayState(context)
	return 0
end