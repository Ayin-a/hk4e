-- 基础信息
local base_info = {
	group_id = 133304208
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
	{ config_id = 208001, gadget_id = 70290472, pos = { x = -1494.074, y = 201.444, z = 2738.373 }, rot = { x = 9.352, y = 249.416, z = 9.623 }, level = 33, vision_level = VisionLevelType.VISION_LEVEL_NEARBY, area_id = 21 },
	{ config_id = 208002, gadget_id = 70290472, pos = { x = -1489.385, y = 200.380, z = 2727.518 }, rot = { x = 359.120, y = 359.504, z = 356.050 }, level = 33, vision_level = VisionLevelType.VISION_LEVEL_NEARBY, area_id = 21 },
	{ config_id = 208003, gadget_id = 70290472, pos = { x = -1492.400, y = 200.384, z = 2731.018 }, rot = { x = 1.136, y = 303.027, z = 3.885 }, level = 33, vision_level = VisionLevelType.VISION_LEVEL_NEARBY, area_id = 21 },
	{ config_id = 208004, gadget_id = 70220065, pos = { x = -1493.992, y = 201.417, z = 2738.336 }, rot = { x = 9.153, y = 250.594, z = 9.812 }, level = 33, persistent = true, area_id = 21 },
	{ config_id = 208005, gadget_id = 70220065, pos = { x = -1489.346, y = 200.377, z = 2727.490 }, rot = { x = 359.172, y = 0.251, z = 356.039 }, level = 33, persistent = true, area_id = 21 },
	{ config_id = 208006, gadget_id = 70220001, pos = { x = -1501.977, y = 200.420, z = 2734.329 }, rot = { x = 359.119, y = 306.139, z = 0.382 }, level = 33, area_id = 21 },
	{ config_id = 208007, gadget_id = 70220001, pos = { x = -1492.274, y = 200.416, z = 2728.348 }, rot = { x = 359.176, y = 0.039, z = 358.654 }, level = 33, area_id = 21 },
	{ config_id = 208008, gadget_id = 70220001, pos = { x = -1498.591, y = 200.447, z = 2735.619 }, rot = { x = 357.776, y = 22.465, z = 354.071 }, level = 33, area_id = 21 },
	{ config_id = 208009, gadget_id = 70220065, pos = { x = -1492.297, y = 200.386, z = 2730.934 }, rot = { x = 0.031, y = 304.080, z = 2.036 }, level = 33, persistent = true, area_id = 21 },
	{ config_id = 208010, gadget_id = 70220065, pos = { x = -1502.209, y = 200.409, z = 2734.034 }, rot = { x = 359.172, y = 0.004, z = 359.514 }, level = 33, persistent = true, area_id = 21 },
	{ config_id = 208011, gadget_id = 70220065, pos = { x = -1492.257, y = 200.417, z = 2728.317 }, rot = { x = 4.274, y = 359.884, z = 2.683 }, level = 33, persistent = true, area_id = 21 },
	{ config_id = 208014, gadget_id = 70360001, pos = { x = -1495.656, y = 201.385, z = 2732.323 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 208018, gadget_id = 70220065, pos = { x = -1498.679, y = 200.394, z = 2735.251 }, rot = { x = 358.997, y = 34.497, z = 355.371 }, level = 33, persistent = true, area_id = 21 },
	{ config_id = 208025, gadget_id = 70211101, pos = { x = -1495.453, y = 200.419, z = 2732.356 }, rot = { x = 355.322, y = 201.127, z = 357.240 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1208012, name = "ANY_GADGET_DIE_208012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_208012", trigger_count = 0 },
	-- 保底，如果玩家在倒计时阶段就传送走，回来刷到suite2
	{ config_id = 1208013, name = "GROUP_LOAD_208013", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_208013" },
	{ config_id = 1208015, name = "GADGET_STATE_CHANGE_208015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_208015", action = "action_EVENT_GADGET_STATE_CHANGE_208015", trigger_count = 0 },
	{ config_id = 1208032, name = "GADGET_CREATE_208032", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_208032", action = "action_EVENT_GADGET_CREATE_208032" },
	{ config_id = 1208033, name = "GADGET_CREATE_208033", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_208033", action = "action_EVENT_GADGET_CREATE_208033" },
	{ config_id = 1208034, name = "GADGET_CREATE_208034", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_208034", action = "action_EVENT_GADGET_CREATE_208034" },
	{ config_id = 1208035, name = "GADGET_CREATE_208035", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_208035", action = "action_EVENT_GADGET_CREATE_208035" },
	{ config_id = 1208036, name = "GADGET_CREATE_208036", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_208036", action = "action_EVENT_GADGET_CREATE_208036" },
	{ config_id = 1208037, name = "GADGET_CREATE_208037", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_208037", action = "action_EVENT_GADGET_CREATE_208037" },
	{ config_id = 1208038, name = "ANY_GADGET_DIE_208038", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_208038", action = "action_EVENT_ANY_GADGET_DIE_208038" },
	{ config_id = 1208039, name = "ANY_GADGET_DIE_208039", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_208039", action = "action_EVENT_ANY_GADGET_DIE_208039" },
	{ config_id = 1208040, name = "ANY_GADGET_DIE_208040", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_208040", action = "action_EVENT_ANY_GADGET_DIE_208040" },
	{ config_id = 1208041, name = "ANY_GADGET_DIE_208041", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_208041", action = "action_EVENT_ANY_GADGET_DIE_208041" },
	{ config_id = 1208042, name = "ANY_GADGET_DIE_208042", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_208042", action = "action_EVENT_ANY_GADGET_DIE_208042" },
	{ config_id = 1208043, name = "ANY_GADGET_DIE_208043", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_208043", action = "action_EVENT_ANY_GADGET_DIE_208043" },
	{ config_id = 1208044, name = "VARIABLE_CHANGE_208044", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_208044", action = "action_EVENT_VARIABLE_CHANGE_208044", trigger_count = 0 },
	{ config_id = 1208045, name = "TIME_AXIS_PASS_208045", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_208045", action = "action_EVENT_TIME_AXIS_PASS_208045", trigger_count = 0 },
	{ config_id = 1208046, name = "TIME_AXIS_PASS_208046", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_208046", action = "action_EVENT_TIME_AXIS_PASS_208046", trigger_count = 0 },
	{ config_id = 1208047, name = "GADGET_CREATE_208047", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_208047", action = "action_EVENT_GADGET_CREATE_208047" }
}

-- 变量
variables = {
	{ config_id = 1, name = "count", value = 0, no_refresh = true }
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
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 208001, 208002, 208003, 208006, 208007, 208008 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_208012", "GROUP_LOAD_208013", "TIME_AXIS_PASS_208046", "GADGET_CREATE_208047" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 208004, 208005, 208009, 208010, 208011, 208018 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_208038", "ANY_GADGET_DIE_208039", "ANY_GADGET_DIE_208040", "ANY_GADGET_DIE_208041", "ANY_GADGET_DIE_208042", "ANY_GADGET_DIE_208043", "VARIABLE_CHANGE_208044" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 208014, 208025 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_208015" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_208012(context, evt)
	-- 调用提示id为 7308603 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7308603) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_208013(context, evt)
	-- 将本组内变量名为 "count" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "count", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133304208, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_208015(context, evt)
	if 208025 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_208015(context, evt)
	-- 将configid为 208014 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 208014, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_208032(context, evt)
	if 208004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_208032(context, evt)
	-- 创建标识为"duration2"，时间节点为{34}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "duration2", {34}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_208033(context, evt)
	if 208005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_208033(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133304208, 208005, {64}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133304208, EntityType.GADGET, 208002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133304208, EntityType.GADGET, 208013 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_208034(context, evt)
	if 208009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_208034(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133304208, 208009, {64}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133304208, EntityType.GADGET, 208003 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133304208, EntityType.GADGET, 208014 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_208035(context, evt)
	if 208010 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_208035(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133304208, 208010, {64}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133304208, EntityType.GADGET, 208015 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133304208, EntityType.GADGET, 208006 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_208036(context, evt)
	if 208011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_208036(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133304208, 208011, {64}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133304208, EntityType.GADGET, 208016 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133304208, EntityType.GADGET, 208007 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_208037(context, evt)
	if 208018 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_208037(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133304208, 208018, {64}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133304208, EntityType.GADGET, 208017 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133304208, EntityType.GADGET, 208008 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_208038(context, evt)
	if 208004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_208038(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 创建id为208001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 208001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_208039(context, evt)
	if 208005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_208039(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 创建id为208002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 208002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_208040(context, evt)
	if 208009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_208040(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 创建id为208003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 208003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_208041(context, evt)
	if 208010 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_208041(context, evt)
	-- 创建id为208006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 208006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7326003_fail") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_208042(context, evt)
	if 208011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_208042(context, evt)
	-- 创建id为208007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 208007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7326003_fail") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_208043(context, evt)
	if 208018 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_208043(context, evt)
	-- 创建id为208008的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 208008 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7326003_fail") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_208044(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为3
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_208044(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7326003_fin") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_208045(context, evt)
	if "duration2" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_208045(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7326003_fail") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_208046(context, evt)
	if "duration" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_208046(context, evt)
	-- 将本组内变量名为 "count" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "count", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133304208, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_208047(context, evt)
	if 208001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_208047(context, evt)
	-- 创建标识为"duration"，时间节点为{16}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "duration", {16}, false)
	
	
	-- 触发镜头注目，注目位置为坐标{x=-1498.591, y=200.4466, z=2735.619}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-1498.591, y=200.4466, z=2735.619}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 4,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end