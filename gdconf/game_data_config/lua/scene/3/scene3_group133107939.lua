-- 基础信息
local base_info = {
	group_id = 133107939
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
	{ config_id = 939001, gadget_id = 70360001, pos = { x = -274.849, y = 182.513, z = 863.398 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 8 },
	{ config_id = 939003, gadget_id = 70211111, pos = { x = -275.319, y = 182.231, z = 863.429 }, rot = { x = 0.000, y = 94.600, z = 0.000 }, level = 26, drop_tag = "解谜中级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 8 },
	{ config_id = 939006, gadget_id = 70300118, pos = { x = -275.098, y = 183.260, z = 863.394 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 8 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1939002, name = "GADGET_STATE_CHANGE_939002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_939002", action = "action_EVENT_GADGET_STATE_CHANGE_939002", trigger_count = 0 },
	{ config_id = 1939004, name = "GADGET_CREATE_939004", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_939004", action = "action_EVENT_GADGET_CREATE_939004", trigger_count = 0 },
	{ config_id = 1939005, name = "SELECT_OPTION_939005", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_939005", action = "action_EVENT_SELECT_OPTION_939005", trigger_count = 0 },
	{ config_id = 1939007, name = "QUEST_START_939007", event = EventType.EVENT_QUEST_START, source = "7181209", condition = "condition_EVENT_QUEST_START_939007", action = "action_EVENT_QUEST_START_939007", trigger_count = 0 },
	{ config_id = 1939008, name = "QUEST_START_939008", event = EventType.EVENT_QUEST_START, source = "7181209", condition = "condition_EVENT_QUEST_START_939008", action = "action_EVENT_QUEST_START_939008", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "chest_opened", value = 0, no_refresh = false }
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
		triggers = { "QUEST_START_939007", "QUEST_START_939008" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 939001, 939006 },
		regions = { },
		triggers = { "GADGET_CREATE_939004", "SELECT_OPTION_939005", "QUEST_START_939007", "QUEST_START_939008" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 939003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_939002", "QUEST_START_939007", "QUEST_START_939008" },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_939002(context, evt)
	if 939003 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_939002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310791302") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "chest_opened" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "chest_opened", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_939004(context, evt)
	if 939001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_939004(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {169}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_939005(context, evt)
	if 939001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_939005(context, evt)
	-- 删除指定group： 133107939 ；指定config：939001；物件身上指定option：169；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133107939, 939001, 169) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2011, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133107939, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133107939, EntityType.GADGET, 939006 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_939007(context, evt)
	-- 判断变量"chest_opened"为1
	if ScriptLib.GetGroupVariableValue(context, "chest_opened") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_939007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310791302") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_939008(context, evt)
	-- 判断变量"chest_opened"为0
	if ScriptLib.GetGroupVariableValue(context, "chest_opened") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_939008(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133107939, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end