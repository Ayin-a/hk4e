-- 基础信息
local base_info = {
	group_id = 133102761
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
	{ config_id = 761001, gadget_id = 70211123, pos = { x = 2155.995, y = 186.406, z = 740.248 }, rot = { x = 357.133, y = 234.148, z = 357.439 }, level = 16, drop_tag = "解谜高级璃月", isOneoff = true, persistent = true, area_id = 5 },
	{ config_id = 761002, gadget_id = 70211131, pos = { x = 2128.853, y = 186.039, z = 743.996 }, rot = { x = 359.993, y = 318.413, z = 359.987 }, level = 16, chest_drop_id = 2000900, drop_count = 1, isOneoff = true, persistent = true, oneoff_reset_version = 3, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 761003, gadget_id = 70211111, pos = { x = 2146.041, y = 185.018, z = 734.625 }, rot = { x = 347.187, y = 270.193, z = 351.138 }, level = 16, drop_tag = "解谜中级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 761004, gadget_id = 70211101, pos = { x = 2133.383, y = 185.089, z = 726.073 }, rot = { x = 358.345, y = 7.182, z = 350.988 }, level = 16, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 761005, gadget_id = 70211101, pos = { x = 2131.970, y = 185.158, z = 730.383 }, rot = { x = 0.000, y = 342.494, z = 0.000 }, level = 16, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 761006, gadget_id = 70211111, pos = { x = 2130.107, y = 185.251, z = 728.400 }, rot = { x = 358.493, y = 335.096, z = 357.711 }, level = 16, drop_tag = "解谜中级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 761007, gadget_id = 70211101, pos = { x = 2036.622, y = 216.999, z = 865.096 }, rot = { x = 354.619, y = 181.540, z = 357.915 }, level = 16, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 761008, gadget_id = 70350004, pos = { x = 2087.446, y = 194.006, z = 790.885 }, rot = { x = 0.000, y = 326.721, z = 0.000 }, level = 18, persistent = true, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1761009, name = "GADGET_STATE_CHANGE_761009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_761009", action = "action_EVENT_GADGET_STATE_CHANGE_761009", trigger_count = 0 },
	{ config_id = 1761010, name = "GADGET_STATE_CHANGE_761010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_761010", action = "action_EVENT_GADGET_STATE_CHANGE_761010", trigger_count = 0 },
	{ config_id = 1761011, name = "ANY_GADGET_DIE_761011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_761011", action = "action_EVENT_ANY_GADGET_DIE_761011", trigger_count = 0 },
	{ config_id = 1761012, name = "ANY_GADGET_DIE_761012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_761012", action = "action_EVENT_ANY_GADGET_DIE_761012", trigger_count = 0 },
	{ config_id = 1761013, name = "QUEST_FINISH_761013", event = EventType.EVENT_QUEST_FINISH, source = "2102114", condition = "condition_EVENT_QUEST_FINISH_761013", action = "action_EVENT_QUEST_FINISH_761013", trigger_count = 0 },
	{ config_id = 1761014, name = "QUEST_FINISH_761014", event = EventType.EVENT_QUEST_FINISH, source = "2102123", condition = "condition_EVENT_QUEST_FINISH_761014", action = "action_EVENT_QUEST_FINISH_761014", trigger_count = 0 },
	-- 26
	{ config_id = 1761015, name = "GROUP_LOAD_761015", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_761015", action = "action_EVENT_GROUP_LOAD_761015", trigger_count = 0 },
	-- 27
	{ config_id = 1761016, name = "GROUP_LOAD_761016", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_761016", action = "action_EVENT_GROUP_LOAD_761016", trigger_count = 0 },
	-- 26任务开始发消息保底
	{ config_id = 1761017, name = "QUEST_START_761017", event = EventType.EVENT_QUEST_START, source = "2102126", condition = "condition_EVENT_QUEST_START_761017", action = "action_EVENT_QUEST_START_761017", trigger_count = 0 },
	-- 27任务开始发消息保底
	{ config_id = 1761018, name = "QUEST_START_761018", event = EventType.EVENT_QUEST_START, source = "2102127", condition = "condition_EVENT_QUEST_START_761018", action = "action_EVENT_QUEST_START_761018", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "open", value = 0, no_refresh = true }
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
		gadgets = { 761008 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_761009", "GADGET_STATE_CHANGE_761010", "ANY_GADGET_DIE_761011", "ANY_GADGET_DIE_761012", "QUEST_FINISH_761013", "QUEST_FINISH_761014", "GROUP_LOAD_761015", "GROUP_LOAD_761016", "QUEST_START_761017", "QUEST_START_761018" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 761001, 761002, 761003, 761004, 761005, 761006, 761007 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_761009", "GADGET_STATE_CHANGE_761010", "ANY_GADGET_DIE_761011", "ANY_GADGET_DIE_761012", "QUEST_FINISH_761013", "QUEST_FINISH_761014" },
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
function condition_EVENT_GADGET_STATE_CHANGE_761009(context, evt)
	if 761002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_761009(context, evt)
	-- 将本组内变量名为 "open" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "open", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "2102126_finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_761010(context, evt)
	if 761002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_761010(context, evt)
	-- 将本组内变量名为 "open" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "open", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "2102127_finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_761011(context, evt)
	if 761002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_761011(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "2102126_finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_761012(context, evt)
	if 761002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_761012(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "2102127_finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_761013(context, evt)
	--检查ID为2102114的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 2102114 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_761013(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102761, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_761014(context, evt)
	--检查ID为2102123的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 2102123 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_761014(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102761, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_761015(context, evt)
	-- 判断变量"open"为1
	if ScriptLib.GetGroupVariableValue(context, "open") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_761015(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "2102126_finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_761016(context, evt)
	-- 判断变量"open"为1
	if ScriptLib.GetGroupVariableValue(context, "open") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_761016(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "2102127_finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_761017(context, evt)
	-- 判断指定group组剩余gadget数量是否是1 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133102761}) ~= 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_761017(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "2102126_finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_761018(context, evt)
	-- 判断指定group组剩余gadget数量是否是1 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133102761}) ~= 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_761018(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "2102127_finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end