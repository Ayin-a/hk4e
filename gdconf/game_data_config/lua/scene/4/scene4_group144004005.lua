-- 基础信息
local base_info = {
	group_id = 144004005
}

-- Trigger变量
local defs = {
	point_sum = 11,
	route_2 = 400400001,
	gadget_seelie = 5002
}

-- DEFS_MISCS
defs.final_point = defs.point_sum - 1

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 5026, monster_id = 20010301, pos = { x = -720.670, y = 132.903, z = 0.592 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 103, guest_ban_drop = 1000100 },
	{ config_id = 5027, monster_id = 20010301, pos = { x = -717.307, y = 132.903, z = 0.592 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 103, guest_ban_drop = 1000100 },
	{ config_id = 5028, monster_id = 20010401, pos = { x = -718.634, y = 132.903, z = 0.592 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 103, guest_ban_drop = 1000100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 5002, gadget_id = 70710010, pos = { x = -742.236, y = 188.027, z = -9.750 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 400400002, persistent = true, area_id = 103 },
	{ config_id = 5003, gadget_id = 70710007, pos = { x = -754.572, y = 190.023, z = -11.193 }, rot = { x = 0.000, y = 148.000, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 5004, gadget_id = 70360001, pos = { x = -682.139, y = 124.353, z = -6.110 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 5025, gadget_id = 70110003, pos = { x = -718.634, y = 132.903, z = 0.592 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 5030, gadget_id = 70230041, pos = { x = -681.459, y = 125.329, z = -2.685 }, rot = { x = 358.417, y = 180.000, z = 164.343 }, level = 1, area_id = 103 },
	{ config_id = 5031, gadget_id = 70230038, pos = { x = -682.005, y = 127.088, z = -2.615 }, rot = { x = 340.533, y = 165.317, z = 169.772 }, level = 1, area_id = 103 },
	{ config_id = 5032, gadget_id = 70230036, pos = { x = -683.301, y = 133.125, z = 0.115 }, rot = { x = 333.025, y = 180.000, z = 180.000 }, level = 1, area_id = 103 },
	{ config_id = 5033, gadget_id = 70230037, pos = { x = -682.814, y = 130.796, z = -0.645 }, rot = { x = 343.058, y = 180.000, z = 165.603 }, level = 1, area_id = 103 }
}

-- 区域
regions = {
	{ config_id = 5007, shape = RegionShape.SPHERE, radius = 8, pos = { x = -745.008, y = 188.027, z = -9.750 }, area_id = 103 },
	{ config_id = 5037, shape = RegionShape.SPHERE, radius = 4, pos = { x = -718.772, y = 132.209, z = 0.624 }, area_id = 103 }
}

-- 触发器
triggers = {
	{ config_id = 1005001, name = "PLATFORM_REACH_POINT_5001", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_5001", action = "action_EVENT_PLATFORM_REACH_POINT_5001" },
	{ config_id = 1005005, name = "PLATFORM_REACH_POINT_5005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_5005", action = "action_EVENT_PLATFORM_REACH_POINT_5005", trigger_count = 0 },
	{ config_id = 1005006, name = "AVATAR_NEAR_PLATFORM_5006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_5006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_5006", trigger_count = 0 },
	{ config_id = 1005007, name = "ENTER_REGION_5007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5007", action = "action_EVENT_ENTER_REGION_5007" },
	{ config_id = 1005009, name = "SELECT_OPTION_5009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_5009", action = "action_EVENT_SELECT_OPTION_5009" },
	{ config_id = 1005016, name = "VARIABLE_CHANGE_5016", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_5016", action = "action_EVENT_VARIABLE_CHANGE_5016", trigger_count = 0 },
	{ config_id = 1005018, name = "VARIABLE_CHANGE_5018", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_5018", action = "action_EVENT_VARIABLE_CHANGE_5018", trigger_count = 0 },
	{ config_id = 1005019, name = "VARIABLE_CHANGE_5019", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_5019", action = "action_EVENT_VARIABLE_CHANGE_5019", trigger_count = 0 },
	{ config_id = 1005020, name = "VARIABLE_CHANGE_5020", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_5020", action = "action_EVENT_VARIABLE_CHANGE_5020", trigger_count = 0 },
	-- t=4 I=0,重置
	{ config_id = 1005029, name = "VARIABLE_CHANGE_5029", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_5029", action = "action_EVENT_VARIABLE_CHANGE_5029", trigger_count = 0 },
	{ config_id = 1005034, name = "PLATFORM_REACH_POINT_5034", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_5034", action = "action_EVENT_PLATFORM_REACH_POINT_5034" },
	{ config_id = 1005035, name = "PLATFORM_REACH_POINT_5035", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_5035", action = "action_EVENT_PLATFORM_REACH_POINT_5035" },
	{ config_id = 1005036, name = "PLATFORM_REACH_POINT_5036", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_5036", action = "action_EVENT_PLATFORM_REACH_POINT_5036" },
	{ config_id = 1005037, name = "ENTER_REGION_5037", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5037", action = "action_EVENT_ENTER_REGION_5037" },
	{ config_id = 1005038, name = "PLATFORM_REACH_POINT_5038", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_5038", action = "action_EVENT_PLATFORM_REACH_POINT_5038" },
	{ config_id = 1005039, name = "PLATFORM_REACH_POINT_5039", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_5039", action = "action_EVENT_PLATFORM_REACH_POINT_5039" },
	{ config_id = 1005040, name = "GADGET_CREATE_5040", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_5040", action = "action_EVENT_GADGET_CREATE_5040", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "times", value = 0, no_refresh = true },
	{ config_id = 2, name = "correct", value = 0, no_refresh = true },
	{ config_id = 3, name = "interact", value = 0, no_refresh = true },
	{ config_id = 4, name = "complete", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1005008, name = "GROUP_LOAD_5008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "", trigger_count = 0 }
	}
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	io_type = 1,
	suite = 1,
	end_suite = 5,
	rand_suite = false,
	father_quest = 79001,
	quest_config = {
		[7900101] = {
			{
				state = 2,
				suite = 1
			}
		},
		[7900102] = {
			{
				state = 2,
				suite = 2
			}
		},
		[7900103] = {
			{
				state = 2,
				suite = 3
			}
		},
		[7900105] = {
			{
				state = 2,
				suite = 4
			}
		}
	}
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suite_disk = {
	[1] = {
		gadgets = {
			{ config_id = 5002, state = 0, platform_info = { point_id = 0, move_type = 1, route_id = 0, route_index = 0, is_started = false } },
			{ config_id = 5003, state = 0 }
		},
		monsters = {
		},
		regions = { 5007 },
		triggers = { "PLATFORM_REACH_POINT_5005", "AVATAR_NEAR_PLATFORM_5006", "ENTER_REGION_5007", "VARIABLE_CHANGE_5029", "GADGET_CREATE_5040" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "times", value = 0, no_refresh = false },
			{ config_id = 2, name = "correct", value = 0, no_refresh = false },
			{ config_id = 3, name = "interact", value = 0, no_refresh = false },
			{ config_id = 4, name = "complete", value = 0, no_refresh = true }
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 5002, state = 0, platform_info = { point_id = 0, move_type = 1, route_id = 400400001, route_index = 6, is_started = false } },
			{ config_id = 5004, state = 0 },
			{ config_id = 5030, state = 0 },
			{ config_id = 5031, state = 0 },
			{ config_id = 5032, state = 0 },
			{ config_id = 5033, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_5001", "SELECT_OPTION_5009", "VARIABLE_CHANGE_5029", "PLATFORM_REACH_POINT_5034", "PLATFORM_REACH_POINT_5035", "PLATFORM_REACH_POINT_5038", "PLATFORM_REACH_POINT_5039", "GADGET_CREATE_5040" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "times", value = 0, no_refresh = false },
			{ config_id = 2, name = "correct", value = 0, no_refresh = false },
			{ config_id = 3, name = "interact", value = 0, no_refresh = false },
			{ config_id = 4, name = "complete", value = 0, no_refresh = true }
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 5002, state = 0, platform_info = { point_id = 0, move_type = 1, route_id = 400400015, route_index = 4, is_started = false } },
			{ config_id = 5030, state = 201 },
			{ config_id = 5031, state = 201 },
			{ config_id = 5032, state = 201 },
			{ config_id = 5033, state = 201 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "VARIABLE_CHANGE_5016", "VARIABLE_CHANGE_5018", "VARIABLE_CHANGE_5019", "VARIABLE_CHANGE_5020", "VARIABLE_CHANGE_5029" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "times", value = 0, no_refresh = false },
			{ config_id = 2, name = "correct", value = 0, no_refresh = false },
			{ config_id = 3, name = "interact", value = 1, no_refresh = false },
			{ config_id = 4, name = "complete", value = 0, no_refresh = true }
		}
	},
	[4] = {
		gadgets = {
			{ config_id = 5002, state = 0, platform_info = { point_id = 0, move_type = 1, route_id = 400400015, route_index = 5, is_started = true } },
			{ config_id = 5025, state = 0 }
		},
		monsters = {
			{ config_id = 5026 },
			{ config_id = 5027 },
			{ config_id = 5028 }
		},
		regions = { 5037 },
		triggers = { "PLATFORM_REACH_POINT_5036", "ENTER_REGION_5037" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "times", value = 4, no_refresh = false },
			{ config_id = 2, name = "correct", value = 4, no_refresh = false },
			{ config_id = 3, name = "interact", value = 0, no_refresh = false },
			{ config_id = 4, name = "complete", value = 1, no_refresh = false }
		}
	},
	[5] = {
		gadgets = {
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
			{ config_id = 1, name = "times", value = 4, no_refresh = false },
			{ config_id = 2, name = "correct", value = 4, no_refresh = false },
			{ config_id = 3, name = "interact", value = 0, no_refresh = false },
			{ config_id = 4, name = "complete", value = 1, no_refresh = false }
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_5001(context, evt)
	-- 判断是gadgetid 为 5002的移动平台，是否到达了400400015 的路线中的 4 点
	
	if 5002 ~= evt.param1 then
	  return false
	end
	
	if 400400015 ~= evt.param2 then
	  return false
	end
	
	if 4 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_5001(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 5002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_5005(context, evt)
	-- 判断是gadgetid 为 5002的移动平台，是否到达了400400001 的路线中的 6 点
	
	if 5002 ~= evt.param1 then
	  return false
	end
	
	if 400400001 ~= evt.param2 then
	  return false
	end
	
	if 6 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_5005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7900101finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 5002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	-- 调用提示id为 1110223 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110223) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
		-- 添加某个flowSuite里的要素，不会更改当前场上已存在的物件/怪物状态
	  ScriptLib.AddExtraFlowSuite(context, 144004005, 2, FlowSuiteOperatePolicy.DEFAULT)
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_5006(context, evt)
	if defs.gadget_seelie ~= evt.param1 then
	return false
	end
	
	if defs.route_2 ~= evt.param2 then
	return false
	end
	
	if defs.final_point == evt.param3 then
	return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_AVATAR_NEAR_PLATFORM_5006(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 5002) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5007(context, evt)
	if evt.param1 ~= 5007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7900109finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 5002, 400400001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 5003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 调用提示id为 1110220 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110220) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_5009(context, evt)
	-- 判断是gadgetid 5004 option_id 171
	if 5004 ~= evt.param1 then
		return false	
	end
	
	if 171 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_5009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7900102finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 删除指定group： 144004005 ；指定config：5004；物件身上指定option：171；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 144004005, 5004, 171) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将本组内变量名为 "interact" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "interact", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 5002, 400400015) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_5016(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"times"为4
	if ScriptLib.GetGroupVariableValueByGroup(context, "times", 144004005) ~= 4 then
			return false
	end
	
	-- 判断变量"correct"为3
	if ScriptLib.GetGroupVariableValueByGroup(context, "correct", 144004005) ~= 3 then
			return false
	end
	
	-- 判断变量"interact"为1
	if ScriptLib.GetGroupVariableValue(context, "interact") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_5016(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 5002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7900103finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 调用提示id为 1110226 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110226) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-718.6341，133，0.5923817），持续时间为3.5秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-718.6341, y=133, z=0.5923817}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3.5, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
		-- 添加某个flowSuite里的要素，不会更改当前场上已存在的物件/怪物状态
	  ScriptLib.AddExtraFlowSuite(context, 144004005, 4, FlowSuiteOperatePolicy.DEFAULT)
	
	-- 将本组内变量名为 "complete" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "complete", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_5018(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"times"为4
	if ScriptLib.GetGroupVariableValueByGroup(context, "times", 144004005) ~= 4 then
			return false
	end
	
	-- 判断变量"correct"为2
	if ScriptLib.GetGroupVariableValueByGroup(context, "correct", 144004005) ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_5018(context, evt)
	-- 变量"times"赋值为0
	ScriptLib.SetGroupVariableValue(context, "times", 0)
	
	-- 变量"correct"赋值为0
	ScriptLib.SetGroupVariableValue(context, "correct", 0)
	
	-- 改变指定group组144004066中， configid为66001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 144004066, 66001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组144004066中， configid为66002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 144004066, 66002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组144004066中， configid为66003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 144004066, 66003, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组144004066中， configid为66004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 144004066, 66004, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 调用提示id为 1110269 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110269) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_5019(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"times"为4
	if ScriptLib.GetGroupVariableValueByGroup(context, "times", 144004005) ~= 4 then
			return false
	end
	
	-- 判断变量"correct"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "correct", 144004005) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_5019(context, evt)
	-- 变量"times"赋值为0
	ScriptLib.SetGroupVariableValue(context, "times", 0)
	
	-- 变量"correct"赋值为0
	ScriptLib.SetGroupVariableValue(context, "correct", 0)
	
	-- 改变指定group组144004066中， configid为66001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 144004066, 66001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组144004066中， configid为66002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 144004066, 66002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组144004066中， configid为66003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 144004066, 66003, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组144004066中， configid为66004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 144004066, 66004, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 调用提示id为 1110269 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110269) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_5020(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"times"为4
	if ScriptLib.GetGroupVariableValueByGroup(context, "times", 144004005) ~= 4 then
			return false
	end
	
	-- 判断变量"correct"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "correct", 144004005) ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_5020(context, evt)
	-- 变量"times"赋值为0
	ScriptLib.SetGroupVariableValue(context, "times", 0)
	
	-- 变量"correct"赋值为0
	ScriptLib.SetGroupVariableValue(context, "correct", 0)
	
	-- 改变指定group组144004066中， configid为66001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 144004066, 66001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组144004066中， configid为66002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 144004066, 66002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组144004066中， configid为66003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 144004066, 66003, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组144004066中， configid为66004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 144004066, 66004, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 调用提示id为 1110269 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110269) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_5029(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"times"为4
	if ScriptLib.GetGroupVariableValueByGroup(context, "times", 144004005) ~= 4 then
			return false
	end
	
	-- 判断变量"interact"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "interact", 144004005) ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_5029(context, evt)
	-- 变量"times"赋值为0
	ScriptLib.SetGroupVariableValue(context, "times", 0)
	
	-- 变量"correct"赋值为0
	ScriptLib.SetGroupVariableValue(context, "correct", 0)
	
	-- 改变指定group组144004066中， configid为66001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 144004066, 66001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组144004066中， configid为66002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 144004066, 66002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组144004066中， configid为66003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 144004066, 66003, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组144004066中， configid为66004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 144004066, 66004, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 调用提示id为 1110314 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110314) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_5034(context, evt)
	-- 判断是gadgetid 为 5002的移动平台，是否到达了400400015 的路线中的 1 点
	
	if 5002 ~= evt.param1 then
	  return false
	end
	
	if 400400015 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_5034(context, evt)
	-- 将configid为 5030 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5030, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_5035(context, evt)
	-- 判断是gadgetid 为 5002的移动平台，是否到达了400400015 的路线中的 2 点
	
	if 5002 ~= evt.param1 then
	  return false
	end
	
	if 400400015 ~= evt.param2 then
	  return false
	end
	
	if 2 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_5035(context, evt)
	-- 将configid为 5031 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5031, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_5036(context, evt)
	-- 判断是gadgetid 为 5002的移动平台，是否到达了400400015 的路线中的 7 点
	
	if 5002 ~= evt.param1 then
	  return false
	end
	
	if 400400015 ~= evt.param2 then
	  return false
	end
	
	if 7 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_5036(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 5002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5037(context, evt)
	if evt.param1 ~= 5037 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5037(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7900105finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 144004005, EntityType.GADGET, 5025 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 将指定group的suiteIndex设为指定suite
	  ScriptLib.SetFlowSuite(context, 144004005, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_5038(context, evt)
	-- 判断是gadgetid 为 5002的移动平台，是否到达了400400015 的路线中的 3 点
	
	if 5002 ~= evt.param1 then
	  return false
	end
	
	if 400400015 ~= evt.param2 then
	  return false
	end
	
	if 3 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_5038(context, evt)
	-- 将configid为 5033 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5033, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_5039(context, evt)
	-- 判断是gadgetid 为 5002的移动平台，是否到达了400400015 的路线中的 4 点
	
	if 5002 ~= evt.param1 then
	  return false
	end
	
	if 400400015 ~= evt.param2 then
	  return false
	end
	
	if 4 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_5039(context, evt)
	-- 将configid为 5032 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5032, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 调用提示id为 1110267 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110267) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
		-- 添加某个flowSuite里的要素，不会更改当前场上已存在的物件/怪物状态
	  ScriptLib.AddExtraFlowSuite(context, 144004005, 3, FlowSuiteOperatePolicy.DEFAULT)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_5040(context, evt)
	if 5004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_5040(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 144004005, 5004, {171}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end