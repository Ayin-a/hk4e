-- 基础信息
local base_info = {
	group_id = 199002124
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
	{ config_id = 124001, gadget_id = 70310332, pos = { x = 703.479, y = 120.287, z = -567.300 }, rot = { x = 0.000, y = 183.924, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 124002, gadget_id = 70310332, pos = { x = 703.749, y = 120.179, z = -569.811 }, rot = { x = 0.000, y = 326.649, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 124003, gadget_id = 70310332, pos = { x = 701.576, y = 120.266, z = -568.705 }, rot = { x = 0.000, y = 81.377, z = 0.000 }, level = 20, area_id = 401 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1124004, name = "GADGETTALK_DONE_124004", event = EventType.EVENT_GADGETTALK_DONE, source = "6800359", condition = "", action = "action_EVENT_GADGETTALK_DONE_124004" },
	{ config_id = 1124005, name = "GADGETTALK_DONE_124005", event = EventType.EVENT_GADGETTALK_DONE, source = "6800360", condition = "", action = "action_EVENT_GADGETTALK_DONE_124005" },
	{ config_id = 1124006, name = "GADGETTALK_DONE_124006", event = EventType.EVENT_GADGETTALK_DONE, source = "6800361", condition = "", action = "action_EVENT_GADGETTALK_DONE_124006" },
	{ config_id = 1124007, name = "VARIABLE_CHANGE_124007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_124007", action = "action_EVENT_VARIABLE_CHANGE_124007" }
}

-- 变量
variables = {
	{ config_id = 1, name = "Talkdone", value = 0, no_refresh = true }
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
		gadgets = { 124001, 124002, 124003 },
		regions = { },
		triggers = { "GADGETTALK_DONE_124004", "GADGETTALK_DONE_124005", "GADGETTALK_DONE_124006", "VARIABLE_CHANGE_124007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GADGETTALK_DONE_124004(context, evt)
	-- 针对当前group内变量名为 "Talkdone" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "Talkdone", 1, 199002124) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GADGETTALK_DONE_124005(context, evt)
	-- 针对当前group内变量名为 "Talkdone" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "Talkdone", 1, 199002124) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GADGETTALK_DONE_124006(context, evt)
	-- 针对当前group内变量名为 "Talkdone" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "Talkdone", 1, 199002124) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_124007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Talkdone"为3
	if ScriptLib.GetGroupVariableValue(context, "Talkdone") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_124007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199002182, 2)
	
	return 0
end