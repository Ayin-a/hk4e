-- 基础信息
local base_info = {
	group_id = 199001006
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
	{ config_id = 6003, gadget_id = 70210102, pos = { x = 298.312, y = 121.263, z = 152.224 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, area_id = 402 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 监听书信被拾取，派蒙表示这个道具很奇怪
	{ config_id = 1006001, name = "GADGET_STATE_CHANGE_6001", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_6001", action = "action_EVENT_GADGET_STATE_CHANGE_6001" },
	-- 监听书信被拾取，派蒙表示这个就是藏镜的合照8
	{ config_id = 1006002, name = "GADGET_STATE_CHANGE_6002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_6002", action = "action_EVENT_GADGET_STATE_CHANGE_6002" },
	{ config_id = 1006004, name = "GROUP_LOAD_6004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_6004", action = "action_EVENT_GROUP_LOAD_6004", trigger_count = 0 },
	{ config_id = 1006005, name = "GROUP_LOAD_6005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_6005", action = "action_EVENT_GROUP_LOAD_6005", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "IsItemPickedUp", value = 0, no_refresh = true },
	{ config_id = 2, name = "IsQuestStart", value = 0, no_refresh = false },
	{ config_id = 3, name = "default", value = 0, no_refresh = false }
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
		gadgets = { 6003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_6001", "GROUP_LOAD_6004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = wq接取后，流转至本suite,
		monsters = { },
		gadgets = { 6003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_6002", "GROUP_LOAD_6005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_6001(context, evt)
	if 6003 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_6001(context, evt)
	-- 将本组内变量名为 "IsItemPickedUp" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "IsItemPickedUp", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=304.5369,y=121.0109,z=156.9601}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1111201, pos, 15) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7902202") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_6002(context, evt)
	if 6003 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_6002(context, evt)
	-- 将本组内变量名为 "IsItemPickedUp" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "IsItemPickedUp", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=304.5369,y=121.0109,z=156.9601}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1111199, pos, 15) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7902202") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_6004(context, evt)
	-- 判断变量"IsItemPickedUp"为1
	if ScriptLib.GetGroupVariableValue(context, "IsItemPickedUp") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_6004(context, evt)
	ScriptLib.AddQuestProgress(context, "7902202")
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_6005(context, evt)
	-- 判断变量"IsItemPickedUp"为1
	if ScriptLib.GetGroupVariableValue(context, "IsItemPickedUp") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_6005(context, evt)
	ScriptLib.AddQuestProgress(context, "7902202")
	return 0
end