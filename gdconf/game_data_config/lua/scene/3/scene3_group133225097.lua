-- 基础信息
local base_info = {
	group_id = 133225097
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
	{ config_id = 97001, gadget_id = 70360001, pos = { x = -6354.242, y = 246.616, z = -2658.022 }, rot = { x = 0.000, y = 175.400, z = 0.000 }, level = 19, area_id = 18 },
	{ config_id = 97002, gadget_id = 70217010, pos = { x = -6354.171, y = 246.688, z = -2658.115 }, rot = { x = 347.747, y = 81.152, z = 356.870 }, level = 26, chest_drop_id = 1050152, drop_count = 1, showcutscene = true, isOneoff = true, persistent = true, area_id = 18 },
	{ config_id = 97007, gadget_id = 70360089, pos = { x = -6354.140, y = 247.204, z = -2658.041 }, rot = { x = 0.000, y = 222.405, z = 0.000 }, level = 33, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1097003, name = "GADGET_CREATE_97003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_97003", action = "action_EVENT_GADGET_CREATE_97003", trigger_count = 0 },
	{ config_id = 1097004, name = "SELECT_OPTION_97004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_97004", action = "action_EVENT_SELECT_OPTION_97004", trigger_count = 0 },
	{ config_id = 1097005, name = "GADGET_STATE_CHANGE_97005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_97005", action = "action_EVENT_GADGET_STATE_CHANGE_97005" },
	{ config_id = 1097006, name = "VARIABLE_CHANGE_97006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_97006", action = "action_EVENT_VARIABLE_CHANGE_97006" }
}

-- 变量
variables = {
	{ config_id = 1, name = "start", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 3,
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 97001, 97007 },
		regions = { },
		triggers = { "GADGET_CREATE_97003", "SELECT_OPTION_97004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 97002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_97005" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "VARIABLE_CHANGE_97006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_97003(context, evt)
	-- 判断是gadgetid 97001
	if 97001 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_97003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {169}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_97004(context, evt)
	if 97001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_97004(context, evt)
	-- 删除指定group： 133225097 ；指定config：97001；物件身上指定option：169；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133225097, 97001, 169) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2011, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133225097, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_97005(context, evt)
	if 97002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_97005(context, evt)
	-- 将本组内变量名为 "StoneCanPlace_B" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "StoneCanPlace_B", 1, 133225094) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "stone_progress" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stone_progress", 1, 133225161) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_97006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"start"为1
	if ScriptLib.GetGroupVariableValue(context, "start") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_97006(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133225097, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end