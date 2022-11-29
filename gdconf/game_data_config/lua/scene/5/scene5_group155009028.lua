-- 基础信息
local base_info = {
	group_id = 155009028
}

-- Trigger变量
local defs = {
	group_ID = 155009028,
	gadget_fire = 28001,
	gadget_controller = 28002,
	managerGroupID = 155009001
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
			
		ScriptLib.AddExtraGroupSuite(context, defs.group_ID, 2)
		ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_ID, defs.gadget_controller, {91})

	end,
	["3"] = function(context)
		
		ScriptLib.AddExtraGroupSuite(context, defs.group_ID, 3)
ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_fire })
		--ScriptLib.RemoveEntityByConfigId(context, defs.group_ID, EntityType.GADGET, defs.gadget_fire)
		ScriptLib.AddQuestProgress(context, "72270_BattleWin_04")
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
	{ config_id = 28001, gadget_id = 70360343, pos = { x = -770.462, y = 148.740, z = -218.797 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, persistent = true, is_use_point_array = true, area_id = 200 },
	{ config_id = 28002, gadget_id = 70360001, pos = { x = -770.462, y = 148.740, z = -218.797 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 交互火焰
	{ config_id = 1028003, name = "SELECT_OPTION_28003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_28003", action = "action_EVENT_SELECT_OPTION_28003", trigger_count = 0 },
	-- 初始化
	{ config_id = 1028004, name = "GROUP_LOAD_28004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_28004", trigger_count = 0 },
	-- 监听gameplayState
	{ config_id = 1028005, name = "VARIABLE_CHANGE_28005", event = EventType.EVENT_VARIABLE_CHANGE, source = "gameplayState", condition = "", action = "action_EVENT_VARIABLE_CHANGE_28005", trigger_count = 0 }
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
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_28004", "VARIABLE_CHANGE_28005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 28001, 28002 },
		regions = { },
		triggers = { "SELECT_OPTION_28003" },
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

-- 触发条件
function condition_EVENT_SELECT_OPTION_28003(context, evt)
	-- 判断是gadgetid 28002 option_id 91
	if 28002 ~= evt.param1 then
		return false	
	end
	
	if 91 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_28003(context, evt)
	-- 删除指定group： 155009028 ；指定config：28002；物件身上指定option：91；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 155009028, 28002, 91) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将本组内变量名为 "gameplayState" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gameplayState", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_28004(context, evt)
		local isactive = ScriptLib.GetGroupVariableValueByGroup(context, "IslandActive", defs.managerGroupID)
				
		if isactive == 1 then 
			if ScriptLib.GetGroupVariableValue(context,"gameplayState") == 0 then 
				ScriptLib.SetGroupVariableValue(context,"gameplayState", 1)
			end
			
		end
	UpdateGamePlayState(context)
	return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_28005(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	UpdateGamePlayState(context)
	return 0
end