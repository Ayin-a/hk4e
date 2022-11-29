-- 基础信息
local base_info = {
	group_id = 133220078
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
	{ config_id = 78005, npc_id = 20318, pos = { x = -3260.629, y = 211.868, z = -4553.073 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 11 },
	{ config_id = 78006, npc_id = 20319, pos = { x = -3378.505, y = 231.087, z = -4538.189 }, rot = { x = 0.000, y = 125.894, z = 0.000 }, area_id = 11 },
	{ config_id = 78013, npc_id = 20302, pos = { x = -3368.815, y = 229.141, z = -4595.990 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 11 },
	{ config_id = 78020, npc_id = 20419, pos = { x = -3378.505, y = 231.087, z = -4538.189 }, rot = { x = 0.000, y = 125.894, z = 0.000 }, area_id = 11 },
	{ config_id = 78021, npc_id = 20420, pos = { x = -3368.815, y = 229.141, z = -4595.990 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 11 },
	{ config_id = 78023, npc_id = 20421, pos = { x = -3260.629, y = 211.868, z = -4553.073 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 11 }
}

-- 装置
gadgets = {
	{ config_id = 78001, gadget_id = 70710439, pos = { x = -3369.653, y = 227.728, z = -4597.222 }, rot = { x = 0.000, y = 25.954, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 78002, gadget_id = 70710439, pos = { x = -3259.693, y = 210.806, z = -4552.528 }, rot = { x = 0.000, y = 295.703, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 78003, gadget_id = 70710439, pos = { x = -3379.333, y = 230.113, z = -4537.750 }, rot = { x = 17.525, y = 124.940, z = 359.723 }, level = 1, isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 78007, gadget_id = 70360001, pos = { x = -3372.109, y = 228.767, z = -4601.403 }, rot = { x = 0.000, y = 2.256, z = 0.000 }, level = 27, persistent = true, area_id = 11 },
	{ config_id = 78009, gadget_id = 70710433, pos = { x = -3372.003, y = 229.236, z = -4601.888 }, rot = { x = 2.540, y = 21.027, z = 1.413 }, level = 27, area_id = 11 },
	{ config_id = 78010, gadget_id = 70710434, pos = { x = -3372.007, y = 229.213, z = -4601.907 }, rot = { x = 359.867, y = 22.539, z = 0.252 }, level = 27, persistent = true, area_id = 11 }
}

-- 区域
regions = {
	{ config_id = 78008, shape = RegionShape.SPHERE, radius = 20, pos = { x = -3270.532, y = 210.375, z = -4552.087 }, area_id = 11 },
	{ config_id = 78011, shape = RegionShape.SPHERE, radius = 24, pos = { x = -3366.837, y = 223.585, z = -4582.023 }, area_id = 11 },
	{ config_id = 78012, shape = RegionShape.SPHERE, radius = 23, pos = { x = -3375.413, y = 226.825, z = -4539.068 }, area_id = 11 }
}

-- 触发器
triggers = {
	-- 第一个门正确门开对了handle
	{ config_id = 1078004, name = "QUEST_FINISH_78004", event = EventType.EVENT_QUEST_FINISH, source = "1200708", condition = "", action = "action_EVENT_QUEST_FINISH_78004" },
	{ config_id = 1078008, name = "ENTER_REGION_78008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_78008", action = "action_EVENT_ENTER_REGION_78008" },
	{ config_id = 1078011, name = "ENTER_REGION_78011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_78011", action = "action_EVENT_ENTER_REGION_78011" },
	{ config_id = 1078012, name = "ENTER_REGION_78012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_78012", action = "action_EVENT_ENTER_REGION_78012" },
	-- 第二个门开对了handle
	{ config_id = 1078014, name = "QUEST_FINISH_78014", event = EventType.EVENT_QUEST_FINISH, source = "1200710", condition = "", action = "action_EVENT_QUEST_FINISH_78014" },
	-- 第三个门开对了handle
	{ config_id = 1078015, name = "QUEST_FINISH_78015", event = EventType.EVENT_QUEST_FINISH, source = "1200711", condition = "", action = "action_EVENT_QUEST_FINISH_78015" },
	-- 隐形操作台用
	{ config_id = 1078016, name = "GADGET_CREATE_78016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_78016", action = "action_EVENT_GADGET_CREATE_78016", trigger_count = 0 },
	-- 隐形操作台用
	{ config_id = 1078017, name = "SELECT_OPTION_78017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_78017", action = "action_EVENT_SELECT_OPTION_78017", trigger_count = 0 },
	-- 对话中加载gadget遮挡穿帮
	{ config_id = 1078018, name = "QUEST_FINISH_78018", event = EventType.EVENT_QUEST_FINISH, source = "1200712", condition = "", action = "action_EVENT_QUEST_FINISH_78018", trigger_count = 0 },
	-- 箱子对话结束后刷到suite4
	{ config_id = 1078019, name = "QUEST_FINISH_78019", event = EventType.EVENT_QUEST_FINISH, source = "1200705", condition = "", action = "action_EVENT_QUEST_FINISH_78019" },
	-- 控制第1个门是否开过
	{ config_id = 1078022, name = "GADGET_CREATE_78022", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_78022", action = "action_EVENT_GADGET_CREATE_78022" },
	-- 控制第2个门是否开过
	{ config_id = 1078024, name = "GADGET_CREATE_78024", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_78024", action = "action_EVENT_GADGET_CREATE_78024" },
	-- 控制第3个门是否开过
	{ config_id = 1078025, name = "GADGET_CREATE_78025", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_78025", action = "action_EVENT_GADGET_CREATE_78025" }
}

-- 变量
variables = {
	{ config_id = 1, name = "regionCount", value = 0, no_refresh = false },
	{ config_id = 2, name = "RockDoor1", value = 0, no_refresh = true },
	{ config_id = 3, name = "RockDoor2", value = 0, no_refresh = true },
	{ config_id = 4, name = "RockDoor3", value = 0, no_refresh = true }
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
		gadgets = { 78001, 78002, 78003 },
		regions = { },
		triggers = { },
		npcs = { 78020, 78021, 78023 },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 78001, 78002, 78003, 78009 },
		regions = { 78008, 78011, 78012 },
		triggers = { "QUEST_FINISH_78004", "ENTER_REGION_78008", "ENTER_REGION_78011", "ENTER_REGION_78012", "QUEST_FINISH_78014", "QUEST_FINISH_78015", "GADGET_CREATE_78016", "SELECT_OPTION_78017", "QUEST_FINISH_78018", "QUEST_FINISH_78019", "GADGET_CREATE_78022", "GADGET_CREATE_78024", "GADGET_CREATE_78025" },
		npcs = { 78005, 78006, 78013 },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 78007 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 结束神里绫华线时用,
		monsters = { },
		gadgets = { },
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

-- 触发操作
function action_EVENT_QUEST_FINISH_78004(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 78001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-3366,y=227,z=-4591}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 31021174, pos, 80) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220078, 3)
	
	-- 将本组内变量名为 "RockDoor1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "RockDoor1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_78008(context, evt)
	if evt.param1 ~= 78008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"regionCount"为0
	if ScriptLib.GetGroupVariableValue(context, "regionCount") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_78008(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-3308,y=200,z=-4535}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 31021176, pos, 100) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 将本组内变量名为 "regionCount" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "regionCount", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1332200783") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_78011(context, evt)
	if evt.param1 ~= 78011 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"regionCount"为0
	if ScriptLib.GetGroupVariableValue(context, "regionCount") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_78011(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-3308,y=200,z=-4535}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 31021176, pos, 100) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 将本组内变量名为 "regionCount" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "regionCount", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1332200783") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_78012(context, evt)
	if evt.param1 ~= 78012 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"regionCount"为0
	if ScriptLib.GetGroupVariableValue(context, "regionCount") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_78012(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-3308,y=200,z=-4535}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 31021176, pos, 100) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 将本组内变量名为 "regionCount" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "regionCount", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1332200783") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_78014(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 78002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-3263,y=210,z=-4554}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 31021175, pos, 80) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 将本组内变量名为 "RockDoor2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "RockDoor2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_78015(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 78003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-3374,y=229,z=-4540}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 31021175, pos, 80) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 将本组内变量名为 "RockDoor3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "RockDoor3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_78016(context, evt)
	if 78007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_78016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220078, 78007, {171}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_78017(context, evt)
	-- 判断是gadgetid 78007 option_id 171
	if 78007 ~= evt.param1 then
		return false	
	end
	
	if 171 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_78017(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1332200781") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 删除指定group： 133220078 ；指定config：78007；物件身上指定option：171；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133220078, 78007, 171) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_78018(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133220078, EntityType.GADGET, 78009 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 创建id为78010的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 78010 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_78019(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133220078, suite = 4 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133220078, EntityType.GADGET, 78010 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133220078, EntityType.GADGET, 78007 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133220078, EntityType.GADGET, 78009 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_78022(context, evt)
	if 78001 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"RockDoor1"为1
	if ScriptLib.GetGroupVariableValue(context, "RockDoor1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_78022(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 78001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_78024(context, evt)
	if 78002 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"RockDoor2"为1
	if ScriptLib.GetGroupVariableValue(context, "RockDoor2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_78024(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 78002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_78025(context, evt)
	if 78003 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"RockDoor3"为1
	if ScriptLib.GetGroupVariableValue(context, "RockDoor3") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_78025(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 78003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end