-- 基础信息
local base_info = {
	group_id = 133220115
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
	{ config_id = 115001, gadget_id = 70211131, pos = { x = -2806.222, y = 189.534, z = -4059.750 }, rot = { x = 0.000, y = 209.693, z = 0.000 }, level = 26, drop_tag = "解谜超级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 115002, gadget_id = 70210101, pos = { x = -2805.642, y = 189.406, z = -4064.733 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物稻妻", isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 115003, gadget_id = 70210101, pos = { x = -2804.129, y = 189.894, z = -4071.099 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物稻妻", isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 115004, gadget_id = 70210101, pos = { x = -2805.010, y = 189.469, z = -4070.400 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物稻妻", isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 115005, gadget_id = 70210101, pos = { x = -2805.277, y = 189.894, z = -4071.915 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物稻妻", isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 115009, gadget_id = 70290095, pos = { x = -2836.817, y = 182.481, z = -4087.451 }, rot = { x = 356.940, y = 20.022, z = 0.059 }, level = 27, area_id = 11 },
	{ config_id = 115011, gadget_id = 70500000, pos = { x = -2806.861, y = 189.842, z = -4068.047 }, rot = { x = 0.000, y = 223.384, z = 0.000 }, level = 27, point_type = 9175, isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 115012, gadget_id = 70220050, pos = { x = -2821.196, y = 189.479, z = -4065.588 }, rot = { x = 0.000, y = 148.913, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 115013, gadget_id = 70220051, pos = { x = -2806.129, y = 189.024, z = -4070.213 }, rot = { x = 0.000, y = 283.468, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 115014, gadget_id = 70220052, pos = { x = -2818.200, y = 193.919, z = -4063.065 }, rot = { x = 0.000, y = 98.294, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 115015, gadget_id = 70220051, pos = { x = -2805.523, y = 189.188, z = -4070.813 }, rot = { x = 347.018, y = 352.958, z = 77.905 }, level = 27, area_id = 11 },
	{ config_id = 115016, gadget_id = 70220052, pos = { x = -2817.614, y = 193.918, z = -4062.603 }, rot = { x = 0.000, y = 195.491, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 115017, gadget_id = 70310001, pos = { x = -2823.066, y = 190.037, z = -4086.399 }, rot = { x = 0.000, y = 18.192, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 11 },
	{ config_id = 115018, gadget_id = 70310001, pos = { x = -2814.809, y = 188.489, z = -4076.701 }, rot = { x = 0.000, y = 308.700, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 11 }
}

-- 区域
regions = {
	{ config_id = 115010, shape = RegionShape.SPHERE, radius = 5, pos = { x = -2809.824, y = 189.059, z = -4068.761 }, area_id = 11 },
	{ config_id = 115022, shape = RegionShape.SPHERE, radius = 5, pos = { x = -2789.437, y = 194.251, z = -4093.334 }, area_id = 11 },
	{ config_id = 115025, shape = RegionShape.SPHERE, radius = 5, pos = { x = -2811.349, y = 189.059, z = -4069.893 }, area_id = 11 }
}

-- 触发器
triggers = {
	{ config_id = 1115006, name = "GATHER_115006", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_115006", action = "action_EVENT_GATHER_115006", trigger_count = 0 },
	-- 刷钥匙1
	{ config_id = 1115007, name = "QUEST_FINISH_115007", event = EventType.EVENT_QUEST_FINISH, source = "7210631", condition = "", action = "action_EVENT_QUEST_FINISH_115007", trigger_count = 0 },
	{ config_id = 1115010, name = "ENTER_REGION_115010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_115010", action = "action_EVENT_ENTER_REGION_115010", trigger_count = 0 },
	-- 刷钥匙2
	{ config_id = 1115019, name = "QUEST_FINISH_115019", event = EventType.EVENT_QUEST_FINISH, source = "7210630", condition = "", action = "action_EVENT_QUEST_FINISH_115019", trigger_count = 0 },
	{ config_id = 1115020, name = "GADGET_CREATE_115020", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_115020", action = "action_EVENT_GADGET_CREATE_115020", trigger_count = 0 },
	{ config_id = 1115021, name = "SELECT_OPTION_115021", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_115021", action = "action_EVENT_SELECT_OPTION_115021", trigger_count = 0 },
	{ config_id = 1115022, name = "ENTER_REGION_115022", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_115022", action = "action_EVENT_ENTER_REGION_115022", trigger_count = 0 },
	{ config_id = 1115025, name = "ENTER_REGION_115025", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_115025", action = "action_EVENT_ENTER_REGION_115025" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 115008, gadget_id = 70211111, pos = { x = -2810.627, y = 189.026, z = -4074.370 }, rot = { x = 4.249, y = 2.066, z = 355.979 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 }
	}
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
		gadgets = { 115001, 115002, 115003, 115004, 115005, 115009, 115011, 115012, 115013, 115014, 115015, 115016, 115017, 115018 },
		regions = { 115010, 115022, 115025 },
		triggers = { "GATHER_115006", "QUEST_FINISH_115007", "ENTER_REGION_115010", "QUEST_FINISH_115019", "GADGET_CREATE_115020", "SELECT_OPTION_115021", "ENTER_REGION_115022", "ENTER_REGION_115025" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GATHER_115006(context, evt)
	if 115011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_115006(context, evt)
	-- 调用提示id为 -1074246881 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, -1074246881) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_115007(context, evt)
	-- 创建id为115011的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 115011 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_115010(context, evt)
	if evt.param1 ~= 115010 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_115010(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7210627") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 创建id为115011的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 115011 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_115019(context, evt)
	-- 创建id为115011的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 115011 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_115020(context, evt)
	if 115019 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_115020(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220115, 115019, {1}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_115021(context, evt)
	-- 判断是gadgetid 115019 option_id 1
	if 115019 ~= evt.param1 then
		return false	
	end
	
	if 1 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_115021(context, evt)
	-- 将configid为 115010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 115010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133220115 ；指定config：115019；物件身上指定option：1；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133220115, 115019, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_115022(context, evt)
	if evt.param1 ~= 115022 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_115022(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7210615") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_115025(context, evt)
	if evt.param1 ~= 115025 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_115025(context, evt)
	-- 调用提示id为 -1074246877 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, -1074246877) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end