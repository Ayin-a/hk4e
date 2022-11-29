-- 基础信息
local base_info = {
	group_id = 133103643
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 643002, monster_id = 21010301, pos = { x = 897.758, y = 236.748, z = 844.198 }, rot = { x = 0.000, y = 340.872, z = 0.000 }, level = 19, drop_id = 1000100, pose_id = 9016, area_id = 6 },
	{ config_id = 643003, monster_id = 21010201, pos = { x = 899.269, y = 236.587, z = 831.676 }, rot = { x = 0.000, y = 278.939, z = 0.000 }, level = 19, drop_id = 1000100, pose_id = 9012, area_id = 6 },
	{ config_id = 643006, monster_id = 21020301, pos = { x = 895.355, y = 236.660, z = 828.425 }, rot = { x = 0.000, y = 56.792, z = 0.000 }, level = 19, drop_id = 1000100, pose_id = 401, area_id = 6 },
	{ config_id = 643011, monster_id = 21010901, pos = { x = 883.198, y = 238.289, z = 842.086 }, rot = { x = 0.000, y = 56.792, z = 0.000 }, level = 19, drop_id = 1000100, pose_id = 9003, area_id = 6 },
	{ config_id = 643014, monster_id = 21010101, pos = { x = 923.933, y = 226.692, z = 899.985 }, rot = { x = 0.000, y = 21.949, z = 0.000 }, level = 19, drop_id = 1000100, pose_id = 9016, area_id = 6 },
	{ config_id = 643015, monster_id = 21010101, pos = { x = 918.313, y = 228.618, z = 876.107 }, rot = { x = 0.000, y = 131.101, z = 0.000 }, level = 19, drop_id = 1000100, pose_id = 9016, area_id = 6 },
	{ config_id = 643016, monster_id = 21010701, pos = { x = 925.663, y = 226.936, z = 878.722 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_id = 1000100, area_id = 6 },
	{ config_id = 643018, monster_id = 21010401, pos = { x = 894.946, y = 236.448, z = 832.797 }, rot = { x = 0.000, y = 93.487, z = 0.000 }, level = 19, drop_id = 1000100, pose_id = 9012, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 643001, gadget_id = 70710038, pos = { x = 897.661, y = 236.434, z = 844.803 }, rot = { x = 359.756, y = 18.511, z = 353.757 }, level = 1, area_id = 6 },
	{ config_id = 643004, gadget_id = 70360040, pos = { x = 897.632, y = 236.764, z = 844.756 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 643007, gadget_id = 70310004, pos = { x = 897.123, y = 236.713, z = 832.212 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, state = GadgetState.GearStart, area_id = 6 },
	{ config_id = 643020, gadget_id = 70211121, pos = { x = 897.640, y = 236.511, z = 844.808 }, rot = { x = 0.000, y = 254.605, z = 0.000 }, level = 16, drop_tag = "解谜高级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 643022, gadget_id = 70360001, pos = { x = 897.355, y = 237.334, z = 844.439 }, rot = { x = 0.000, y = 160.233, z = 0.000 }, level = 19, area_id = 6 }
}

-- 区域
regions = {
	{ config_id = 643009, shape = RegionShape.SPHERE, radius = 25, pos = { x = 893.111, y = 238.162, z = 850.801 }, area_id = 6 },
	{ config_id = 643025, shape = RegionShape.SPHERE, radius = 25, pos = { x = 893.111, y = 238.162, z = 850.801 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1643005, name = "GROUP_LOAD_643005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_643005", action = "action_EVENT_GROUP_LOAD_643005", trigger_count = 0 },
	{ config_id = 1643008, name = "GROUP_LOAD_643008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_643008", action = "action_EVENT_GROUP_LOAD_643008", trigger_count = 0 },
	{ config_id = 1643009, name = "ENTER_REGION_643009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_643009", action = "action_EVENT_ENTER_REGION_643009" },
	{ config_id = 1643021, name = "GADGET_CREATE_643021", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_643021", action = "action_EVENT_GADGET_CREATE_643021", trigger_count = 0 },
	{ config_id = 1643023, name = "SELECT_OPTION_643023", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_643023", action = "action_EVENT_SELECT_OPTION_643023", trigger_count = 0 },
	{ config_id = 1643024, name = "GADGET_STATE_CHANGE_643024", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_643024", action = "action_EVENT_GADGET_STATE_CHANGE_643024" },
	{ config_id = 1643025, name = "ENTER_REGION_643025", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_643025", action = "action_EVENT_ENTER_REGION_643025", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "fin", value = 0, no_refresh = true },
	{ config_id = 2, name = "dig", value = 0, no_refresh = true }
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
		monsters = { 643002, 643003, 643006, 643011, 643014, 643015, 643016, 643018 },
		gadgets = { 643001, 643004, 643007, 643022 },
		regions = { 643009, 643025 },
		triggers = { "GROUP_LOAD_643005", "GROUP_LOAD_643008", "ENTER_REGION_643009", "GADGET_CREATE_643021", "SELECT_OPTION_643023", "GADGET_STATE_CHANGE_643024", "ENTER_REGION_643025" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GROUP_LOAD_643005(context, evt)
	-- 判断变量"fin"为1
	if ScriptLib.GetGroupVariableValue(context, "fin") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_643005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "finish_133103643") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_643008(context, evt)
	-- 判断变量"dig"为1
	if ScriptLib.GetGroupVariableValue(context, "dig") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_643008(context, evt)
	-- 创建id为643020的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 643020 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_643009(context, evt)
	if evt.param1 ~= 643009 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_643009(context, evt)
	-- 调用提示id为 1110188 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110188) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_643021(context, evt)
	if 643022 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"dig"为0
	if ScriptLib.GetGroupVariableValue(context, "dig") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_643021(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {169}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_643023(context, evt)
	-- 判断是gadgetid 643022 option_id 169
	if 643022 ~= evt.param1 then
		return false	
	end
	
	if 169 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_643023(context, evt)
	-- 创建id为643020的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 643020 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除指定group： 133103643 ；指定config：643022；物件身上指定option：169；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133103643, 643022, 169) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 643004 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将本组内变量名为 "dig" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "dig", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_643024(context, evt)
	if 643020 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_643024(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "finish_133103643") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "fin" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "fin", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_643025(context, evt)
	if evt.param1 ~= 643025 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_643025(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "finish_133103643_zhiyin") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end