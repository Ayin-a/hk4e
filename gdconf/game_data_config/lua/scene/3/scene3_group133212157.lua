-- 基础信息
local base_info = {
	group_id = 133212157
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
	{ config_id = 157001, gadget_id = 70310001, pos = { x = -3749.032, y = 240.609, z = -2142.212 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 157002, gadget_id = 70310001, pos = { x = -3752.200, y = 239.649, z = -2139.600 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 157003, gadget_id = 70360001, pos = { x = -3750.502, y = 240.376, z = -2141.259 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 157004, gadget_id = 70211111, pos = { x = -3750.167, y = 240.033, z = -2140.483 }, rot = { x = 0.000, y = 202.167, z = 0.000 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 13 },
	{ config_id = 157008, gadget_id = 70950144, pos = { x = -3753.063, y = 242.369, z = -2147.524 }, rot = { x = 270.416, y = 0.002, z = 59.009 }, level = 27, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1157005, name = "GADGET_STATE_CHANGE_157005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_157005", action = "action_EVENT_GADGET_STATE_CHANGE_157005" },
	{ config_id = 1157006, name = "GADGET_CREATE_157006", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_157006", action = "action_EVENT_GADGET_CREATE_157006", trigger_count = 0 },
	{ config_id = 1157007, name = "SELECT_OPTION_157007", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_157007", action = "action_EVENT_SELECT_OPTION_157007", trigger_count = 0 },
	{ config_id = 1157009, name = "GROUP_LOAD_157009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_157009", action = "action_EVENT_GROUP_LOAD_157009", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "quest_finish", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 3,
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
		gadgets = { 157001, 157002 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 157001, 157002, 157003, 157008 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_157005", "GADGET_CREATE_157006", "SELECT_OPTION_157007", "GROUP_LOAD_157009" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 157001, 157002, 157004, 157008 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_157005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_157005(context, evt)
	if 157004 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_157005(context, evt)
	-- 将本组内变量名为 "quest_finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "quest_finish", 1, 133212157) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7214111_finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_157006(context, evt)
	if 157003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_157006(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133212157, 157003, {39}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_157007(context, evt)
	-- 判断是gadgetid 157003 option_id 39
	if 157003 ~= evt.param1 then
		return false	
	end
	
	if 39 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_157007(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133212157, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 删除指定group： 133212157 ；指定config：157003；物件身上指定option：39；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133212157, 157003, 39) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_157009(context, evt)
	-- 判断变量"quest_finish"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "quest_finish", 133212157) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_157009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7214111_finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133212157, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end