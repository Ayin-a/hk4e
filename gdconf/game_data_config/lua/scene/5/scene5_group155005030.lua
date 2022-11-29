-- 基础信息
local base_info = {
	group_id = 155005030
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
	{ config_id = 30001, gadget_id = 70290234, pos = { x = 269.504, y = 347.500, z = 212.450 }, rot = { x = 0.000, y = 66.529, z = 0.000 }, level = 36, route_id = 500500013, start_route = false, area_id = 200 },
	{ config_id = 30006, gadget_id = 70360001, pos = { x = 269.482, y = 348.540, z = 212.401 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 30008, gadget_id = 70290302, pos = { x = 269.504, y = 224.271, z = 212.450 }, rot = { x = 0.000, y = 66.529, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 30012, gadget_id = 70360340, pos = { x = 269.490, y = 226.960, z = 212.460 }, rot = { x = 0.000, y = 6.419, z = 0.000 }, level = 36, area_id = 200 }
}

-- 区域
regions = {
	-- 到达Boss平台底部
	{ config_id = 30003, shape = RegionShape.CUBIC, size = { x = 65.000, y = 5.000, z = 65.000 }, pos = { x = 268.099, y = 225.443, z = 212.462 }, area_id = 200 }
}

-- 触发器
triggers = {
	-- 7217732[48] Start 跳转
	{ config_id = 1030002, name = "QUEST_START_30002", event = EventType.EVENT_QUEST_START, source = "7217732", condition = "", action = "action_EVENT_QUEST_START_30002", trigger_count = 0 },
	-- 到达Boss平台底部
	{ config_id = 1030003, name = "ENTER_REGION_30003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_30003", trigger_count = 0 },
	-- 7217741[39] Start 跳转
	{ config_id = 1030004, name = "QUEST_FINISH_30004", event = EventType.EVENT_QUEST_FINISH, source = "7217741", condition = "", action = "action_EVENT_QUEST_FINISH_30004", trigger_count = 0 },
	-- 开启大门
	{ config_id = 1030005, name = "SELECT_OPTION_30005", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_30005", action = "action_EVENT_SELECT_OPTION_30005", trigger_count = 0 },
	-- 7217747[40] Start 跳转
	{ config_id = 1030007, name = "QUEST_START_30007", event = EventType.EVENT_QUEST_START, source = "7217747", condition = "", action = "action_EVENT_QUEST_START_30007", trigger_count = 0 },
	-- 到达底部等3秒,完成7217732
	{ config_id = 1030009, name = "TIME_AXIS_PASS_30009", event = EventType.EVENT_TIME_AXIS_PASS, source = "wait", condition = "", action = "action_EVENT_TIME_AXIS_PASS_30009", trigger_count = 0 },
	-- 上Option
	{ config_id = 1030010, name = "GADGET_CREATE_30010", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_30010", action = "action_EVENT_GADGET_CREATE_30010", trigger_count = 0 },
	{ config_id = 1030011, name = "QUEST_START_30011", event = EventType.EVENT_QUEST_START, source = "7217734", condition = "", action = "action_EVENT_QUEST_START_30011", trigger_count = 0 },
	-- 回滚Suite1
	{ config_id = 1030013, name = "QUEST_START_30013", event = EventType.EVENT_QUEST_START, source = "7217740", condition = "", action = "action_EVENT_QUEST_START_30013", trigger_count = 0 }
}

-- 变量
variables = {
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
	end_suite = 0,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suite_disk = {
	[1] = {
		gadgets = {
			{ config_id = 30001, state = 0, platform_info = { point_id = 0, move_type = 1, route_id = 500500013, route_index = 0, is_started = false } }
		},
		monsters = {
		},
		regions = { },
		triggers = { "QUEST_FINISH_30004", "QUEST_START_30007", "QUEST_START_30013" },
		npcs = { },
		variables = {
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 30001, state = 201, platform_info = { point_id = 0, move_type = 1, route_id = 500500013, route_index = 0, is_started = false } },
			{ config_id = 30006, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "QUEST_START_30002", "SELECT_OPTION_30005", "GADGET_CREATE_30010", "QUEST_START_30013" },
		npcs = { },
		variables = {
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 30001, state = 101, platform_info = { point_id = 0, move_type = 1, route_id = 500500013, route_index = 0, is_started = true } },
			{ config_id = 30012, state = 0 }
		},
		monsters = {
		},
		regions = { 30003 },
		triggers = { "ENTER_REGION_30003", "TIME_AXIS_PASS_30009", "QUEST_START_30011" },
		npcs = { },
		variables = {
		}
	},
	[4] = {
		gadgets = {
			{ config_id = 30008, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "TIME_AXIS_PASS_30009" },
		npcs = { },
		variables = {
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_START_30002(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 155005030, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_30003(context, evt)
	-- 将configid为 30012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 30012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建标识为"wait"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "wait", {1}, false)
	
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_30004(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 155005030, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_30005(context, evt)
	-- 判断是gadgetid 30006 option_id 7
	if 30006 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_30005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "72177_OpenHell") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 删除指定group： 155005030 ；指定config：30006；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 155005030, 30006, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 30001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_30007(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 155005030, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_30009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "72177_SearchHell") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_30010(context, evt)
	if 30006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_30010(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 155005030, 30006, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_30011(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 155005030, 4)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_30013(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 155005030, 1)
	
	-- 删除指定group： 155005030 ；指定config：30006；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 155005030, 30006, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end