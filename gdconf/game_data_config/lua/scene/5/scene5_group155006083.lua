-- 基础信息
local base_info = {
	group_id = 155006083
}

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
	-- 三合一仙灵宝箱
	{ config_id = 83001, gadget_id = 70211111, pos = { x = 375.803, y = 186.682, z = -179.053 }, rot = { x = 22.407, y = 40.904, z = 14.800 }, level = 16, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1083002, name = "GADGET_STATE_CHANGE_83002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_83002", action = "action_EVENT_GADGET_STATE_CHANGE_83002", trigger_count = 0 },
	-- 保底
	{ config_id = 1083003, name = "GROUP_LOAD_83003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_83003", action = "action_EVENT_GROUP_LOAD_83003", trigger_count = 0 },
	{ config_id = 1083004, name = "VARIABLE_CHANGE_83004", event = EventType.EVENT_VARIABLE_CHANGE, source = "activecount", condition = "condition_EVENT_VARIABLE_CHANGE_83004", action = "action_EVENT_VARIABLE_CHANGE_83004", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "activecount", value = 0, no_refresh = true },
	{ config_id = 2, name = "chestopened", value = 0, no_refresh = true }
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
		triggers = { "VARIABLE_CHANGE_83004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 83001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_83002", "GROUP_LOAD_83003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_83002(context, evt)
	if GadgetState.ChestOpened ~= ScriptLib.GetGadgetStateByConfigId(context, 155006083, 83001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_83002(context, evt)
	-- 将本组内变量名为 "chestopened" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "chestopened", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "gameplayState" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "gameplayState", 1, 155006178) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_83003(context, evt)
	-- 判断变量"chestopened"为1
	if ScriptLib.GetGroupVariableValue(context, "chestopened") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_83003(context, evt)
		if ScriptLib.GetGroupVariableValueByGroup(context,  "gameplayState", 155006178) == 0 then 
			ScriptLib.SetGroupVariableValueByGroup(context, "gameplayState", 1, 155006178)
		end
		return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_83004(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"activecount"为3
	if ScriptLib.GetGroupVariableValue(context, "activecount") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_83004(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 155006083, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end