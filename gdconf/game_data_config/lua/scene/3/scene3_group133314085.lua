-- 基础信息
local base_info = {
	group_id = 133314085
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
	{ config_id = 85001, gadget_id = 70300118, pos = { x = -198.126, y = -0.871, z = 4853.465 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1, area_id = 32 },
	{ config_id = 85002, gadget_id = 70950145, pos = { x = -198.126, y = -0.871, z = 4853.465 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 32 },
	{ config_id = 85005, gadget_id = 70300118, pos = { x = -208.593, y = 0.234, z = 4865.759 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, area_id = 32 },
	{ config_id = 85006, gadget_id = 70950145, pos = { x = -208.593, y = 0.234, z = 4865.759 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 32 },
	{ config_id = 85009, gadget_id = 70300118, pos = { x = -194.899, y = 0.418, z = 4881.722 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, area_id = 32 },
	{ config_id = 85010, gadget_id = 70950145, pos = { x = -194.899, y = 0.418, z = 4881.722 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 32 },
	{ config_id = 85013, gadget_id = 70300118, pos = { x = -179.348, y = 0.510, z = 4872.291 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, area_id = 32 },
	{ config_id = 85015, gadget_id = 70950145, pos = { x = -179.348, y = 0.510, z = 4872.291 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 32 }
}

-- 区域
regions = {
	{ config_id = 85017, shape = RegionShape.SPHERE, radius = 17, pos = { x = -193.507, y = 0.073, z = 4871.835 }, area_id = 32 }
}

-- 触发器
triggers = {
	{ config_id = 1085003, name = "GADGET_CREATE_85003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_85003", action = "action_EVENT_GADGET_CREATE_85003" },
	{ config_id = 1085004, name = "SELECT_OPTION_85004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_85004", action = "action_EVENT_SELECT_OPTION_85004" },
	{ config_id = 1085007, name = "GADGET_CREATE_85007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_85007", action = "action_EVENT_GADGET_CREATE_85007" },
	{ config_id = 1085008, name = "SELECT_OPTION_85008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_85008", action = "action_EVENT_SELECT_OPTION_85008" },
	{ config_id = 1085011, name = "SELECT_OPTION_85011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_85011", action = "action_EVENT_SELECT_OPTION_85011" },
	{ config_id = 1085012, name = "GADGET_CREATE_85012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_85012", action = "action_EVENT_GADGET_CREATE_85012" },
	{ config_id = 1085014, name = "GADGET_CREATE_85014", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_85014", action = "action_EVENT_GADGET_CREATE_85014" },
	{ config_id = 1085016, name = "SELECT_OPTION_85016", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_85016", action = "action_EVENT_SELECT_OPTION_85016" },
	{ config_id = 1085017, name = "ENTER_REGION_85017", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_85017", action = "action_EVENT_ENTER_REGION_85017" }
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
		gadgets = { 85001, 85002, 85005, 85006, 85009, 85010, 85013, 85015 },
		regions = { 85017 },
		triggers = { "GADGET_CREATE_85003", "SELECT_OPTION_85004", "GADGET_CREATE_85007", "SELECT_OPTION_85008", "SELECT_OPTION_85011", "GADGET_CREATE_85012", "GADGET_CREATE_85014", "SELECT_OPTION_85016", "ENTER_REGION_85017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_85003(context, evt)
	if 85002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_85003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133314085, 85002, {68}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_85004(context, evt)
	-- 判断是gadgetid 85002 option_id 68
	if 85002 ~= evt.param1 then
		return false	
	end
	
	if 68 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_85004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7328106") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 删除指定group： 133314085 ；指定config：85002；物件身上指定option：64；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133314085, 85002, 64) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_85007(context, evt)
	if 85006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_85007(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133314085, 85006, {68}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_85008(context, evt)
	-- 判断是gadgetid 85006 option_id 68
	if 85006 ~= evt.param1 then
		return false	
	end
	
	if 68 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_85008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7328106") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 删除指定group： 133314085 ；指定config：85006；物件身上指定option：64；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133314085, 85006, 64) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_85011(context, evt)
	-- 判断是gadgetid 85010 option_id 68
	if 85010 ~= evt.param1 then
		return false	
	end
	
	if 68 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_85011(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7328106") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 删除指定group： 133314085 ；指定config：85010；物件身上指定option：64；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133314085, 85010, 64) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_85012(context, evt)
	if 85010 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_85012(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133314085, 85010, {68}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_85014(context, evt)
	if 85015 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_85014(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133314085, 85015, {68}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_85016(context, evt)
	-- 判断是gadgetid 85015 option_id 68
	if 85015 ~= evt.param1 then
		return false	
	end
	
	if 68 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_85016(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7328106") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 删除指定group： 133314085 ；指定config：85015；物件身上指定option：64；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133314085, 85015, 64) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_85017(context, evt)
	if evt.param1 ~= 85017 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_85017(context, evt)
	-- 调用提示id为 1000190015 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000190015) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end