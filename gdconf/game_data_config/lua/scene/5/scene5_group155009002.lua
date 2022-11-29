-- 基础信息
local base_info = {
	group_id = 155009002
}

-- Trigger变量
local defs = {
	group_ID = 155009002
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
	{ config_id = 2002, gadget_id = 70290261, pos = { x = -795.776, y = 153.220, z = -46.214 }, rot = { x = 0.022, y = 18.344, z = 359.656 }, level = 36, area_id = 200 },
	{ config_id = 2005, gadget_id = 70290262, pos = { x = -763.128, y = 168.532, z = -157.807 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1002001, name = "QUEST_START_2001", event = EventType.EVENT_QUEST_START, source = "7227006", condition = "condition_EVENT_QUEST_START_2001", action = "action_EVENT_QUEST_START_2001", trigger_count = 0 },
	{ config_id = 1002003, name = "GROUP_LOAD_2003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_2003", trigger_count = 0 },
	{ config_id = 1002004, name = "VARIABLE_CHANGE_2004", event = EventType.EVENT_VARIABLE_CHANGE, source = "gameplayState", condition = "condition_EVENT_VARIABLE_CHANGE_2004", action = "action_EVENT_VARIABLE_CHANGE_2004", trigger_count = 0 }
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
		triggers = { "GROUP_LOAD_2003", "VARIABLE_CHANGE_2004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 2002, 2005 },
		regions = { },
		triggers = { "QUEST_START_2001" },
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
function condition_EVENT_QUEST_START_2001(context, evt)
	-- 判断变量"gameplayState"为1
	if ScriptLib.GetGroupVariableValue(context, "gameplayState") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_2001(context, evt)
	-- 将本组内变量名为 "gameplayState" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gameplayState", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 2002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 155009002, EntityType.GADGET, 2005 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_2003(context, evt)
		local isactive = ScriptLib.GetGroupVariableValueByGroup(context, "IslandActive", 155009001)
	
		if isactive == 1 then 
			if ScriptLib.GetGroupVariableValue(context,"gameplayState") == 0 then 
				ScriptLib.SetGroupVariableValue(context,"gameplayState", 1)
			end
			
		end
	
	UpdateGamePlayState(context)
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_2004(context, evt)
	if evt.param1 == evt.param2 then return false end
	
			if ScriptLib.GetGroupVariableValue(context, "gameplayState") == 0 then
					return false
			end
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_2004(context, evt)
	UpdateGamePlayState(context)
	return 0
end