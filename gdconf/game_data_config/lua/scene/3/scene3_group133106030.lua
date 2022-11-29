-- 基础信息
local base_info = {
	group_id = 133106030
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
	{ config_id = 30001, gadget_id = 70290209, pos = { x = -582.845, y = 178.275, z = 1805.100 }, rot = { x = 11.153, y = 329.502, z = 51.560 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 30002, gadget_id = 70290210, pos = { x = -561.380, y = 177.445, z = 1828.039 }, rot = { x = 322.550, y = 300.600, z = 31.487 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 30003, gadget_id = 70290368, pos = { x = -550.284, y = 179.461, z = 1849.181 }, rot = { x = 301.784, y = 334.417, z = 51.123 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 30004, gadget_id = 70290369, pos = { x = -589.600, y = 177.240, z = 1871.420 }, rot = { x = 305.956, y = 96.117, z = 6.052 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 30005, gadget_id = 70290370, pos = { x = -582.060, y = 182.670, z = 1901.290 }, rot = { x = 0.560, y = 161.025, z = 331.763 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 30006, gadget_id = 70290371, pos = { x = -576.622, y = 183.957, z = 1928.393 }, rot = { x = 18.561, y = 359.114, z = 31.071 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 30007, gadget_id = 70290404, pos = { x = -519.912, y = 181.097, z = 1897.477 }, rot = { x = 0.000, y = 230.597, z = 0.000 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 30008, gadget_id = 70290372, pos = { x = -535.029, y = 176.553, z = 1798.564 }, rot = { x = 40.145, y = 169.532, z = 348.726 }, level = 36, persistent = true, area_id = 19 }
}

-- 区域
regions = {
	-- 加了个判断，只有没打过大岩髓才能看到这个reminder
	{ config_id = 30011, shape = RegionShape.SPHERE, radius = 10, pos = { x = -573.888, y = 171.699, z = 1796.544 }, area_id = 19 }
}

-- 触发器
triggers = {
	{ config_id = 1030009, name = "GADGET_STATE_CHANGE_30009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_30009", action = "action_EVENT_GADGET_STATE_CHANGE_30009" },
	{ config_id = 1030010, name = "TIME_AXIS_PASS_30010", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_30010", action = "action_EVENT_TIME_AXIS_PASS_30010" },
	-- 加了个判断，只有没打过大岩髓才能看到这个reminder
	{ config_id = 1030011, name = "ENTER_REGION_30011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_30011", action = "action_EVENT_ENTER_REGION_30011" },
	-- 岩屏障破碎后，播放CS，同时开一个时间轴用来发成就和reminder
	{ config_id = 1030012, name = "ANY_GADGET_DIE_30012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_30012", action = "action_EVENT_ANY_GADGET_DIE_30012" },
	-- 播完CS后，播reminder和发成就
	{ config_id = 1030013, name = "TIME_AXIS_PASS_30013", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_30013", action = "action_EVENT_TIME_AXIS_PASS_30013" },
	-- 保底，确保成就一定要发
	{ config_id = 1030014, name = "GROUP_LOAD_30014", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_30014", action = "action_EVENT_GROUP_LOAD_30014", trigger_count = 0 },
	-- 运营数据打点用
	{ config_id = 1030015, name = "GADGET_STATE_CHANGE_30015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_30015", action = "action_EVENT_GADGET_STATE_CHANGE_30015", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "hasTriggered", value = 0, no_refresh = true },
	{ config_id = 2, name = "achieved", value = 0, no_refresh = true }
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
		gadgets = { 30001, 30002, 30003, 30004, 30005, 30006, 30007, 30008 },
		regions = { 30011 },
		triggers = { "GADGET_STATE_CHANGE_30009", "TIME_AXIS_PASS_30010", "ENTER_REGION_30011", "ANY_GADGET_DIE_30012", "TIME_AXIS_PASS_30013", "GROUP_LOAD_30014", "GADGET_STATE_CHANGE_30015" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_30009(context, evt)
	if 30001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_30009(context, evt)
	-- 将本组内变量名为 "hasTriggered" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasTriggered", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 调用提示id为 310603003 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 310603003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 创建标识为"lookatshockwave"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "lookatshockwave", {3}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_30010(context, evt)
	if "lookatshockwave" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_30010(context, evt)
	-- 触发镜头注目，注目位置为坐标（-561.3795，177.4451，1828.039），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-561.3795, y=177.4451, z=1828.039}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 调用提示id为 310603004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 310603004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_30011(context, evt)
	if evt.param1 ~= 30011 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"hasTriggered"为0
	if ScriptLib.GetGroupVariableValue(context, "hasTriggered") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_30011(context, evt)
	-- 调用提示id为 310603002 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 310603002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标{x=-575.8529, y=173.5302, z=1798.937}，持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-575.8529, y=173.5302, z=1798.937}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = true, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_30012(context, evt)
	if 30007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_30012(context, evt)
	-- 将本组内变量名为 "achieved" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "achieved", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建标识为"achieved"，时间节点为{7}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "achieved", {7}, false)
	
	
	-- 通知场景上的所有玩家播放名字为310603001 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 310603001, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_30013(context, evt)
	if "achieved" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_30013(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 6074, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 调用提示id为 310603005 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 310603005) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_30014(context, evt)
	-- 判断变量"achieved"为1
	if ScriptLib.GetGroupVariableValue(context, "achieved") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_30014(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 6074, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_30015(context, evt)
	if 30001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_30015(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 6074, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end