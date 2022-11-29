-- 基础信息
local base_info = {
	group_id = 220131015
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
	{ config_id = 15001, gadget_id = 70800202, pos = { x = 116.497, y = 10.531, z = -33.125 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 15002, gadget_id = 70800202, pos = { x = 101.836, y = 10.495, z = -33.126 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 15003, gadget_id = 70800203, pos = { x = 66.899, y = 11.530, z = -64.155 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 15004, gadget_id = 70800203, pos = { x = 49.711, y = 11.531, z = -64.037 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 加任务进度；改group4变量，开启推箱子玩法；改group19变量，切换水片水闸状态
	{ config_id = 1015005, name = "VARIABLE_CHANGE_15005", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_15005", action = "action_EVENT_VARIABLE_CHANGE_15005" },
	{ config_id = 1015006, name = "GADGET_STATE_CHANGE_15006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_15006", action = "action_EVENT_GADGET_STATE_CHANGE_15006", trigger_count = 0 },
	{ config_id = 1015007, name = "GADGET_STATE_CHANGE_15007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_15007", action = "action_EVENT_GADGET_STATE_CHANGE_15007", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "GH2", value = 0, no_refresh = false }
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
		gadgets = { 15003, 15004 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_15005", "GADGET_STATE_CHANGE_15006", "GADGET_STATE_CHANGE_15007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 15001, 15002 },
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
function condition_EVENT_VARIABLE_CHANGE_15005(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"GH2"为2
	if ScriptLib.GetGroupVariableValue(context, "GH2") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_15005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "110262001") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "level_start" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "level_start", 1, 220131004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "Stage" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Stage", 3, 220131019) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_15006(context, evt)
	if 15001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_15006(context, evt)
	-- 针对当前group内变量名为 "GH2" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "GH2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_15007(context, evt)
	if 15002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_15007(context, evt)
	-- 针对当前group内变量名为 "GH2" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "GH2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end