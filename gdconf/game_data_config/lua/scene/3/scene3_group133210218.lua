-- 基础信息
local base_info = {
	group_id = 133210218
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
	{ config_id = 218001, gadget_id = 70290096, pos = { x = -3835.411, y = 257.189, z = -494.792 }, rot = { x = 345.618, y = 348.188, z = 347.243 }, level = 1, persistent = true, area_id = 17 },
	{ config_id = 218002, gadget_id = 70290096, pos = { x = -3846.450, y = 258.685, z = -477.006 }, rot = { x = 358.204, y = 116.517, z = 355.472 }, level = 1, persistent = true, area_id = 17 },
	{ config_id = 218003, gadget_id = 70290096, pos = { x = -3865.586, y = 260.440, z = -486.837 }, rot = { x = 21.734, y = 256.963, z = 348.146 }, level = 1, persistent = true, area_id = 17 },
	{ config_id = 218004, gadget_id = 70290096, pos = { x = -3862.105, y = 257.682, z = -501.933 }, rot = { x = 5.684, y = 129.562, z = 353.164 }, level = 1, persistent = true, area_id = 17 },
	{ config_id = 218005, gadget_id = 70211101, pos = { x = -3854.334, y = 258.433, z = -503.915 }, rot = { x = 353.006, y = 11.075, z = 358.635 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 17 },
	{ config_id = 218015, gadget_id = 70350292, pos = { x = -3847.473, y = 262.934, z = -522.055 }, rot = { x = 0.000, y = 218.414, z = 0.000 }, level = 30, route_id = 321000104, start_route = false, persistent = true, area_id = 17 },
	{ config_id = 218016, gadget_id = 70350292, pos = { x = -3838.371, y = 262.881, z = -519.688 }, rot = { x = 0.000, y = 166.241, z = 0.000 }, level = 30, route_id = 321000105, start_route = false, persistent = true, area_id = 17 },
	{ config_id = 218017, gadget_id = 70350292, pos = { x = -3842.629, y = 274.310, z = -491.429 }, rot = { x = 0.000, y = 154.884, z = 0.000 }, level = 30, route_id = 321000106, start_route = false, persistent = true, area_id = 17 },
	{ config_id = 218018, gadget_id = 70350292, pos = { x = -3845.597, y = 261.023, z = -494.329 }, rot = { x = 0.000, y = 60.518, z = 0.000 }, level = 30, route_id = 321000107, start_route = false, persistent = true, area_id = 17 }
}

-- 区域
regions = {
	{ config_id = 218010, shape = RegionShape.SPHERE, radius = 30, pos = { x = -3848.692, y = 259.063, z = -500.021 }, area_id = 17 },
	{ config_id = 218012, shape = RegionShape.CUBIC, size = { x = 38.000, y = 10.000, z = 33.000 }, pos = { x = -3850.482, y = 260.440, z = -489.366 }, area_id = 17 },
	{ config_id = 218019, shape = RegionShape.SPHERE, radius = 2, pos = { x = -3847.629, y = 263.363, z = -522.006 }, area_id = 17 },
	{ config_id = 218020, shape = RegionShape.SPHERE, radius = 2, pos = { x = -3838.262, y = 263.363, z = -519.755 }, area_id = 17 },
	{ config_id = 218021, shape = RegionShape.SPHERE, radius = 2, pos = { x = -3842.654, y = 274.521, z = -491.357 }, area_id = 17 },
	{ config_id = 218022, shape = RegionShape.SPHERE, radius = 2, pos = { x = -3845.326, y = 261.456, z = -494.388 }, area_id = 17 }
}

-- 触发器
triggers = {
	{ config_id = 1218006, name = "GADGET_STATE_CHANGE_218006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_218006", trigger_count = 0 },
	{ config_id = 1218007, name = "VARIABLE_CHANGE_218007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_218007", action = "action_EVENT_VARIABLE_CHANGE_218007" },
	{ config_id = 1218009, name = "GADGET_STATE_CHANGE_218009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_218009", action = "action_EVENT_GADGET_STATE_CHANGE_218009" },
	{ config_id = 1218010, name = "ENTER_REGION_218010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_218010", action = "action_EVENT_ENTER_REGION_218010" },
	{ config_id = 1218012, name = "ENTER_REGION_218012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_218012", action = "action_EVENT_ENTER_REGION_218012", trigger_count = 0 },
	{ config_id = 1218014, name = "QUEST_START_218014", event = EventType.EVENT_QUEST_START, source = "7216502", condition = "", action = "action_EVENT_QUEST_START_218014", trigger_count = 0 },
	{ config_id = 1218019, name = "ENTER_REGION_218019", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_218019", action = "action_EVENT_ENTER_REGION_218019", trigger_count = 0 },
	{ config_id = 1218020, name = "ENTER_REGION_218020", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_218020", action = "action_EVENT_ENTER_REGION_218020", trigger_count = 0 },
	{ config_id = 1218021, name = "ENTER_REGION_218021", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_218021", action = "action_EVENT_ENTER_REGION_218021", trigger_count = 0 },
	{ config_id = 1218022, name = "ENTER_REGION_218022", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_218022", action = "action_EVENT_ENTER_REGION_218022", trigger_count = 0 },
	{ config_id = 1218023, name = "PLATFORM_REACH_POINT_218023", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_218023", action = "action_EVENT_PLATFORM_REACH_POINT_218023", trigger_count = 0 },
	{ config_id = 1218024, name = "PLATFORM_REACH_POINT_218024", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_218024", action = "action_EVENT_PLATFORM_REACH_POINT_218024", trigger_count = 0 },
	{ config_id = 1218025, name = "PLATFORM_REACH_POINT_218025", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_218025", action = "action_EVENT_PLATFORM_REACH_POINT_218025", trigger_count = 0 },
	{ config_id = 1218026, name = "PLATFORM_REACH_POINT_218026", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_218026", action = "action_EVENT_PLATFORM_REACH_POINT_218026", trigger_count = 0 },
	-- 保底完成
	{ config_id = 1218027, name = "QUEST_START_218027", event = EventType.EVENT_QUEST_START, source = "7216502", condition = "", action = "action_EVENT_QUEST_START_218027", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "active_count", value = 0, no_refresh = true },
	{ config_id = 2, name = "SeelieMove1", value = 0, no_refresh = true },
	{ config_id = 3, name = "SeelieMove2", value = 0, no_refresh = true },
	{ config_id = 4, name = "SeelieMove3", value = 0, no_refresh = true },
	{ config_id = 5, name = "SeelieMove4", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 218013, gadget_id = 70330064, pos = { x = -3856.136, y = 258.317, z = -477.303 }, rot = { x = 1.783, y = 265.237, z = 359.613 }, level = 1, interact_id = 35, area_id = 17 }
	},
	triggers = {
		{ config_id = 1218008, name = "GROUP_LOAD_218008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_218008", action = "", trigger_count = 0 },
		{ config_id = 1218011, name = "GROUP_LOAD_218011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_218011", trigger_count = 0 }
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
		},
		monsters = {
		},
		regions = { },
		triggers = { "QUEST_START_218014" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "active_count", value = 0, no_refresh = true },
			{ config_id = 2, name = "SeelieMove1", value = 0, no_refresh = true },
			{ config_id = 3, name = "SeelieMove2", value = 0, no_refresh = true },
			{ config_id = 4, name = "SeelieMove3", value = 0, no_refresh = true },
			{ config_id = 5, name = "SeelieMove4", value = 0, no_refresh = true }
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 218001, state = 0 },
			{ config_id = 218002, state = 0 },
			{ config_id = 218003, state = 0 },
			{ config_id = 218004, state = 0 },
			{ config_id = 218015, state = 0, platform_info = { point_id = 0, move_type = 1, route_id = 0, route_index = 0, is_started = false } },
			{ config_id = 218016, state = 0, platform_info = { point_id = 0, move_type = 1, route_id = 0, route_index = 0, is_started = false } },
			{ config_id = 218017, state = 0, platform_info = { point_id = 0, move_type = 1, route_id = 0, route_index = 0, is_started = false } },
			{ config_id = 218018, state = 0, platform_info = { point_id = 0, move_type = 1, route_id = 0, route_index = 0, is_started = false } }
		},
		monsters = {
		},
		regions = { 218010, 218012, 218019, 218020, 218021, 218022 },
		triggers = { "GADGET_STATE_CHANGE_218006", "VARIABLE_CHANGE_218007", "GADGET_STATE_CHANGE_218009", "ENTER_REGION_218010", "ENTER_REGION_218012", "ENTER_REGION_218019", "ENTER_REGION_218020", "ENTER_REGION_218021", "ENTER_REGION_218022", "PLATFORM_REACH_POINT_218023", "PLATFORM_REACH_POINT_218024", "PLATFORM_REACH_POINT_218025", "PLATFORM_REACH_POINT_218026" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "active_count", value = 0, no_refresh = true },
			{ config_id = 2, name = "SeelieMove1", value = 0, no_refresh = true },
			{ config_id = 3, name = "SeelieMove2", value = 0, no_refresh = true },
			{ config_id = 4, name = "SeelieMove3", value = 0, no_refresh = true },
			{ config_id = 5, name = "SeelieMove4", value = 0, no_refresh = true }
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 218005, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_218009", "QUEST_START_218027" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "active_count", value = 0, no_refresh = true },
			{ config_id = 2, name = "SeelieMove1", value = 0, no_refresh = true },
			{ config_id = 3, name = "SeelieMove2", value = 0, no_refresh = true },
			{ config_id = 4, name = "SeelieMove3", value = 0, no_refresh = true },
			{ config_id = 5, name = "SeelieMove4", value = 0, no_refresh = true }
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_218006(context, evt)
	if evt.param1 == GadgetState.GearStart then
	ScriptLib.ChangeGroupVariableValue(context, "active_count", 1)
	else
	return -1
	end
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_218007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"active_count"为4
	if ScriptLib.GetGroupVariableValue(context, "active_count") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_218007(context, evt)
		-- 将指定group的suiteIndex设为指定suite
	  ScriptLib.SetFlowSuite(context, 133210218, 3)
	
		-- 添加某个flowSuite里的要素，如果当前与目标suite属性不一样，会纠正为目标属性，同时触发相应Trigger
	  ScriptLib.AddExtraFlowSuite(context, 133210218, 3, FlowSuiteOperatePolicy.COMPLETE)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_218009(context, evt)
	if 218005 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_218009(context, evt)
	-- 调用提示id为 32100132 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32100132) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7216502") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_218010(context, evt)
	if evt.param1 ~= 218010 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_218010(context, evt)
	-- 调用提示id为 32100183 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32100183) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_218012(context, evt)
	if evt.param1 ~= 218012 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_218012(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7006, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_218014(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210218, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_218019(context, evt)
	if evt.param1 ~= 218019 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"SeelieMove1"为0
	if ScriptLib.GetGroupVariableValue(context, "SeelieMove1") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_218019(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 218015) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 将本组内变量名为 "SeelieMove1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "SeelieMove1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_218020(context, evt)
	if evt.param1 ~= 218020 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"SeelieMove2"为0
	if ScriptLib.GetGroupVariableValue(context, "SeelieMove2") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_218020(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 218016) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 将本组内变量名为 "SeelieMove2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "SeelieMove2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_218021(context, evt)
	if evt.param1 ~= 218021 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"SeelieMove3"为0
	if ScriptLib.GetGroupVariableValue(context, "SeelieMove3") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_218021(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 218017) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 将本组内变量名为 "SeelieMove3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "SeelieMove3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_218022(context, evt)
	if evt.param1 ~= 218022 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"SeelieMove4"为0
	if ScriptLib.GetGroupVariableValue(context, "SeelieMove4") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_218022(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 218018) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 将本组内变量名为 "SeelieMove4" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "SeelieMove4", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_218023(context, evt)
	-- 判断是gadgetid 为 218015的移动平台，是否到达了321000104 的路线中的 6 点
	
	if 218015 ~= evt.param1 then
	  return false
	end
	
	if 321000104 ~= evt.param2 then
	  return false
	end
	
	if 6 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_218023(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 218015 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 218004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 218004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_218024(context, evt)
	-- 判断是gadgetid 为 218016的移动平台，是否到达了321000105 的路线中的 5 点
	
	if 218016 ~= evt.param1 then
	  return false
	end
	
	if 321000105 ~= evt.param2 then
	  return false
	end
	
	if 5 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_218024(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 218016 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 218001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 218001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_218025(context, evt)
	-- 判断是gadgetid 为 218017的移动平台，是否到达了321000106 的路线中的 10 点
	
	if 218017 ~= evt.param1 then
	  return false
	end
	
	if 321000106 ~= evt.param2 then
	  return false
	end
	
	if 10 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_218025(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 218017 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 218003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 218003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_218026(context, evt)
	-- 判断是gadgetid 为 218018的移动平台，是否到达了321000107 的路线中的 8 点
	
	if 218018 ~= evt.param1 then
	  return false
	end
	
	if 321000107 ~= evt.param2 then
	  return false
	end
	
	if 8 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_218026(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 218018 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 218002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 218002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_218027(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7216502") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end