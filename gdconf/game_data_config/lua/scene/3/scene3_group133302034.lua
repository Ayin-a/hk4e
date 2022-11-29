-- 基础信息
local base_info = {
	group_id = 133302034
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
	-- 代替修复降水位机关
	{ config_id = 34001, gadget_id = 70900050, pos = { x = -382.863, y = 135.789, z = 2231.884 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	{ config_id = 34002, gadget_id = 70310214, pos = { x = -382.863, y = 135.789, z = 2231.884 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	{ config_id = 34003, gadget_id = 70290541, pos = { x = -342.049, y = 120.000, z = 2273.093 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, route_id = 330200003, persistent = true, area_id = 24 },
	-- 代替修复降水位机关
	{ config_id = 34004, gadget_id = 70900050, pos = { x = -288.640, y = 118.151, z = 2203.542 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	{ config_id = 34014, gadget_id = 70310214, pos = { x = -288.640, y = 118.151, z = 2203.542 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	{ config_id = 34015, gadget_id = 70290541, pos = { x = -342.049, y = 102.980, z = 2273.093 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, route_id = 330200136, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 机关修复 水面下降
	{ config_id = 1034005, name = "GADGET_STATE_CHANGE_34005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_34005", action = "action_EVENT_GADGET_STATE_CHANGE_34005", trigger_count = 0 },
	-- 机关修复 水面下降
	{ config_id = 1034006, name = "GADGET_STATE_CHANGE_34006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_34006", action = "action_EVENT_GADGET_STATE_CHANGE_34006", trigger_count = 0 },
	-- 保底
	{ config_id = 1034007, name = "PLATFORM_REACH_POINT_34007", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_34007", action = "action_EVENT_PLATFORM_REACH_POINT_34007", trigger_count = 0 },
	-- rmd触发
	{ config_id = 1034008, name = "TIME_AXIS_PASS_34008", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_34008", action = "action_EVENT_TIME_AXIS_PASS_34008" },
	-- rmd触发
	{ config_id = 1034009, name = "TIME_AXIS_PASS_34009", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_34009", action = "action_EVENT_TIME_AXIS_PASS_34009" },
	-- 监听破碎机关一是否修复
	{ config_id = 1034010, name = "GADGET_STATE_CHANGE_34010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_34010", action = "action_EVENT_GADGET_STATE_CHANGE_34010" },
	-- 保证水面下降后方碑常亮
	{ config_id = 1034011, name = "GROUP_LOAD_34011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_34011", action = "action_EVENT_GROUP_LOAD_34011", trigger_count = 0 },
	-- 监听破碎机关二是否修复
	{ config_id = 1034012, name = "GADGET_STATE_CHANGE_34012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_34012", action = "action_EVENT_GADGET_STATE_CHANGE_34012" },
	-- 保证方碑亮了  幹掉自己切新的
	{ config_id = 1034013, name = "GROUP_LOAD_34013", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_34013", action = "action_EVENT_GROUP_LOAD_34013", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "waterdown", value = 0, no_refresh = true }
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
		gadgets = { 34002, 34003, 34014 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_34005", "GADGET_STATE_CHANGE_34006", "PLATFORM_REACH_POINT_34007", "TIME_AXIS_PASS_34008", "TIME_AXIS_PASS_34009", "GADGET_STATE_CHANGE_34010", "GROUP_LOAD_34011", "GADGET_STATE_CHANGE_34012", "GROUP_LOAD_34013" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 34015 },
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
function condition_EVENT_GADGET_STATE_CHANGE_34005(context, evt)
	-- 检测config_id为34004的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 34004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_34005(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 34003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 通知场景上的所有玩家播放名字为68 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 68, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	-- 创建标识为"rmd2"，时间节点为{4}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "rmd2", {4}, false)
	
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7306115") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_34006(context, evt)
	-- 检测config_id为34001的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 34001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_34006(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 34003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 通知场景上的所有玩家播放名字为68 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 68, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	-- 创建标识为"rmd1"，时间节点为{4}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "rmd1", {4}, false)
	
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7306116") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_34007(context, evt)
	-- 判断是gadgetid 为 34003的移动平台，是否到达了330200003 的路线中的 2 点
	
	if 34003 ~= evt.param1 then
	  return false
	end
	
	if 330200003 ~= evt.param2 then
	  return false
	end
	
	if 2 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_34007(context, evt)
	-- 将本组内变量名为 "waterdown" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "waterdown", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 34001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 34001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 34004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 34004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_34008(context, evt)
	if "rmd1" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_34008(context, evt)
	-- 调用提示id为 60010401 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010401) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标{x=-346.7326, y=120.4639, z=2254.924}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-346.7326, y=120.4639, z=2254.924}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_34009(context, evt)
	if "rmd2" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_34009(context, evt)
	-- 调用提示id为 60010402 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010402) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_34010(context, evt)
	if 34002 ~= evt.param2 or GadgetState.GatherDrop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_34010(context, evt)
	-- 创建id为34001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 34001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_34011(context, evt)
	-- 判断变量"waterdown"为1
	if ScriptLib.GetGroupVariableValue(context, "waterdown") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_34011(context, evt)
	-- 将configid为 34001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 34001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 34004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 34004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 34003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_34012(context, evt)
	if 34014 ~= evt.param2 or GadgetState.GatherDrop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_34012(context, evt)
	-- 创建id为34004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 34004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_34013(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133302034, 34001) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133302034, 34004) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_34013(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133302034, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 34003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end