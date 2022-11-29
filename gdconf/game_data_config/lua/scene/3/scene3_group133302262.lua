-- 基础信息
local base_info = {
	group_id = 133302262
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
	{ config_id = 262001, gadget_id = 70290539, pos = { x = -604.751, y = 120.000, z = 2295.853 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, route_id = 330200002, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 24 },
	-- 破碎降水机关一
	{ config_id = 262002, gadget_id = 70310214, pos = { x = -644.058, y = 149.074, z = 2300.510 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	-- 破碎降水机关二
	{ config_id = 262003, gadget_id = 70310214, pos = { x = -566.823, y = 131.281, z = 2275.525 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	-- 代替修复降水位机关一
	{ config_id = 262004, gadget_id = 70900050, pos = { x = -644.058, y = 149.074, z = 2300.510 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	-- 代替修复降水位机关二
	{ config_id = 262005, gadget_id = 70900050, pos = { x = -566.823, y = 131.281, z = 2275.525 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	-- 新增 一個單獨的水片
	{ config_id = 262016, gadget_id = 70290539, pos = { x = -604.751, y = 102.800, z = 2295.853 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, route_id = 330200135, area_id = 24 }
}

-- 区域
regions = {
	-- 水面下降第二个reminder
	{ config_id = 262009, shape = RegionShape.SPHERE, radius = 10, pos = { x = -566.823, y = 131.281, z = 2275.525 }, area_id = 24 }
}

-- 触发器
triggers = {
	-- 保底
	{ config_id = 1262006, name = "GROUP_LOAD_262006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_262006", action = "action_EVENT_GROUP_LOAD_262006", trigger_count = 0 },
	-- 延时播放reminder 仙灵走
	{ config_id = 1262007, name = "TIME_AXIS_PASS_262007", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_262007", action = "action_EVENT_TIME_AXIS_PASS_262007", trigger_count = 0 },
	-- 水面下降的断线保护
	{ config_id = 1262008, name = "PLATFORM_ARRIVAL_262008", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_262008", action = "action_EVENT_PLATFORM_ARRIVAL_262008", trigger_count = 0 },
	-- 水面下降第二个reminder
	{ config_id = 1262009, name = "ENTER_REGION_262009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_262009", action = "action_EVENT_ENTER_REGION_262009" },
	-- 解开降水位机关，水面下降
	{ config_id = 1262010, name = "GADGET_STATE_CHANGE_262010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_262010", action = "action_EVENT_GADGET_STATE_CHANGE_262010" },
	-- 解开降水位机关，水面下降
	{ config_id = 1262011, name = "GADGET_STATE_CHANGE_262011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_262011", action = "action_EVENT_GADGET_STATE_CHANGE_262011" },
	-- 监听破碎降水一机关
	{ config_id = 1262012, name = "GADGET_STATE_CHANGE_262012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_262012", action = "action_EVENT_GADGET_STATE_CHANGE_262012", trigger_count = 0 },
	-- 监听破碎降水二机关
	{ config_id = 1262013, name = "GADGET_STATE_CHANGE_262013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_262013", action = "action_EVENT_GADGET_STATE_CHANGE_262013", trigger_count = 0 },
	-- 延时仙灵走
	{ config_id = 1262014, name = "TIME_AXIS_PASS_262014", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_262014", action = "action_EVENT_TIME_AXIS_PASS_262014", trigger_count = 0 },
	-- 新增 完成后重新加載時gotosuite4
	{ config_id = 1262015, name = "GROUP_LOAD_262015", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_262015", action = "action_EVENT_GROUP_LOAD_262015", trigger_count = 0 },
	{ config_id = 1262017, name = "GADGET_STATE_CHANGE_262017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_262017", action = "action_EVENT_GADGET_STATE_CHANGE_262017" }
}

-- 变量
variables = {
	{ config_id = 1, name = "isdone", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 4,
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
		gadgets = { 262001, 262002, 262003 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 262001, 262002, 262003 },
		regions = { 262009 },
		triggers = { "GROUP_LOAD_262006", "TIME_AXIS_PASS_262007", "PLATFORM_ARRIVAL_262008", "ENTER_REGION_262009", "GADGET_STATE_CHANGE_262010", "GADGET_STATE_CHANGE_262011", "GADGET_STATE_CHANGE_262012", "GADGET_STATE_CHANGE_262013", "TIME_AXIS_PASS_262014", "GROUP_LOAD_262015", "GADGET_STATE_CHANGE_262017" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 262016 },
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
function condition_EVENT_GROUP_LOAD_262006(context, evt)
	-- 判断变量"isdone"为0
	if ScriptLib.GetGroupVariableValue(context, "isdone") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_262006(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133302262, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133302086, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_262007(context, evt)
	if "reminder" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_262007(context, evt)
	-- 调用提示id为 60010417 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010417) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 针对当前group内变量名为 "go" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "go", 1, 133302086) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_262008(context, evt)
	-- 判断是gadgetid 为 262001的移动平台，是否到达了330200002 的路线中的 2 点
	
	if 262001 ~= evt.param1 then
	  return false
	end
	
	if 330200002 ~= evt.param2 then
	  return false
	end
	
	if 2 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_262008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7306109") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_262009(context, evt)
	if evt.param1 ~= 262009 then return false end
	
	-- 判断是区域262009
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 262009 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_262009(context, evt)
	-- 调用提示id为 60010419 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010419) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_262010(context, evt)
	-- 检测config_id为262004的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 262004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_262010(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 262001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 通知场景上的所有玩家播放名字为67 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 67, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	-- 创建标识为"reminder"，时间节点为{4,5}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "reminder", {4,5}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_262011(context, evt)
	-- 检测config_id为262005的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 262005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_262011(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 262001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 通知场景上的所有玩家播放名字为67 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 67, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	-- 创建标识为"reminder2"，时间节点为{4,5}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "reminder2", {4,5}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_262012(context, evt)
	if 262002 ~= evt.param2 or GadgetState.GatherDrop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_262012(context, evt)
	-- 创建id为262004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 262004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_262013(context, evt)
	if 262003 ~= evt.param2 or GadgetState.GatherDrop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_262013(context, evt)
	-- 创建id为262005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 262005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_262014(context, evt)
	if "reminder2" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_262014(context, evt)
	-- 针对当前group内变量名为 "go" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "go", 1, 133302086) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_262015(context, evt)
	-- 判断变量"isdone"为1
	if ScriptLib.GetGroupVariableValue(context, "isdone") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_262015(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133302262, 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 262001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_262017(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133302262, 262004) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133302262, 262005) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_262017(context, evt)
	-- 将本组内变量名为 "isdone" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isdone", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end