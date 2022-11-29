-- 基础信息
local base_info = {
	group_id = 155003020
}

-- Trigger变量
local defs = {
	group_ID = 155003020,
	managerGroup = 155003001,
	gadget_controller = 20004
}

-- DEFS_MISCS
local gameplayStateFuncitons = 
{
	["0"] = function(context)
		
		
	end,
	["1"] = function(context)

	ScriptLib.AddExtraGroupSuite(context,defs.group_ID, 2)
	ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_ID, defs.gadget_controller, {188}) 

	
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
	{ config_id = 20003, gadget_id = 70360185, pos = { x = 1166.964, y = 248.781, z = -716.359 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 20004, gadget_id = 70360001, pos = { x = 1166.964, y = 248.781, z = -716.359 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1020001, name = "GROUP_LOAD_20001", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_20001", trigger_count = 0 },
	{ config_id = 1020002, name = "VARIABLE_CHANGE_20002", event = EventType.EVENT_VARIABLE_CHANGE, source = "gameplayState", condition = "", action = "action_EVENT_VARIABLE_CHANGE_20002", trigger_count = 0 },
	{ config_id = 1020005, name = "SELECT_OPTION_20005", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_20005", action = "action_EVENT_SELECT_OPTION_20005", trigger_count = 0 },
	{ config_id = 1020006, name = "TIME_AXIS_PASS_20006", event = EventType.EVENT_TIME_AXIS_PASS, source = "reset", condition = "", action = "action_EVENT_TIME_AXIS_PASS_20006", trigger_count = 0 }
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
		triggers = { "GROUP_LOAD_20001", "VARIABLE_CHANGE_20002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 20003, 20004 },
		regions = { },
		triggers = { "SELECT_OPTION_20005", "TIME_AXIS_PASS_20006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_20001(context, evt)
			local isactive = ScriptLib.GetGroupVariableValueByGroup(context, "IslandActive", defs.managerGroup)
			
			if isactive == 1 then 
				if ScriptLib.GetGroupVariableValue(context,"gameplayState") == 0 then 
					ScriptLib.SetGroupVariableValue(context,"gameplayState", 1)
				end
				
			end
		UpdateGamePlayState(context)
			return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_20002(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	UpdateGamePlayState(context)
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_20005(context, evt)
	-- 判断是gadgetid 20004 option_id 188
	if 20004 ~= evt.param1 then
		return false	
	end
	
	if 188 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_20005(context, evt)
	-- 删除指定group： 155003020 ；指定config：20004；物件身上指定option：188；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 155003020, 20004, 188) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 创建标识为"reset"，时间节点为{5}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "reset", {5}, false)
	
	
	-- 通知场景上的所有玩家播放名字为49 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 49, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_20006(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 155003020, 20004, {188}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end