-- 基础信息
local base_info = {
	group_id = 133308061
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
	{ config_id = 61001, gadget_id = 70300094, pos = { x = -2016.985, y = 302.421, z = 4176.705 }, rot = { x = 0.000, y = 43.076, z = 0.000 }, level = 1, area_id = 26 },
	{ config_id = 61002, gadget_id = 70950145, pos = { x = -2016.531, y = 303.047, z = 4176.795 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 26 },
	{ config_id = 61005, gadget_id = 70300094, pos = { x = -2006.721, y = 302.670, z = 4170.071 }, rot = { x = 5.825, y = 5.464, z = 3.259 }, level = 1, area_id = 26 },
	{ config_id = 61006, gadget_id = 70950145, pos = { x = -2006.510, y = 302.651, z = 4170.341 }, rot = { x = 359.311, y = 323.051, z = 12.840 }, level = 1, area_id = 26 },
	{ config_id = 61007, gadget_id = 70300094, pos = { x = -2005.733, y = 302.541, z = 4180.587 }, rot = { x = 1.597, y = 70.951, z = 356.700 }, level = 1, area_id = 26 },
	{ config_id = 61008, gadget_id = 70950145, pos = { x = -2005.710, y = 302.539, z = 4180.566 }, rot = { x = 358.930, y = 28.210, z = 356.494 }, level = 1, area_id = 26 },
	{ config_id = 61013, gadget_id = 70300118, pos = { x = -2016.985, y = 302.421, z = 4176.705 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 26 },
	{ config_id = 61014, gadget_id = 70300118, pos = { x = -2006.722, y = 302.670, z = 4170.071 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 26 },
	{ config_id = 61015, gadget_id = 70300118, pos = { x = -2005.741, y = 302.542, z = 4180.595 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1061003, name = "GADGET_CREATE_61003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "", action = "action_EVENT_GADGET_CREATE_61003", trigger_count = 0 },
	{ config_id = 1061004, name = "SELECT_OPTION_61004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_61004", action = "action_EVENT_SELECT_OPTION_61004", trigger_count = 0 },
	{ config_id = 1061009, name = "GADGET_CREATE_61009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "", action = "action_EVENT_GADGET_CREATE_61009", trigger_count = 0 },
	{ config_id = 1061010, name = "SELECT_OPTION_61010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_61010", action = "action_EVENT_SELECT_OPTION_61010", trigger_count = 0 },
	{ config_id = 1061011, name = "GADGET_CREATE_61011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "", action = "action_EVENT_GADGET_CREATE_61011", trigger_count = 0 },
	{ config_id = 1061012, name = "SELECT_OPTION_61012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_61012", action = "action_EVENT_SELECT_OPTION_61012", trigger_count = 0 }
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
	rand_suite = true
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
		gadgets = { 61001, 61002, 61013 },
		regions = { },
		triggers = { "GADGET_CREATE_61003", "SELECT_OPTION_61004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 61005, 61006, 61014 },
		regions = { },
		triggers = { "GADGET_CREATE_61009", "SELECT_OPTION_61010" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 61007, 61008, 61015 },
		regions = { },
		triggers = { "GADGET_CREATE_61011", "SELECT_OPTION_61012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GADGET_CREATE_61003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133308061, 61002, {779}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_61004(context, evt)
	-- 判断是gadgetid 61002 option_id 779
	if 61002 ~= evt.param1 then
		return false	
	end
	
	if 779 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_61004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q2304006") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133308061, EntityType.GADGET, 61001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 删除指定group： 133308061 ；指定config：61002；物件身上指定option：779；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133308061, 61002, 779) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133308061, EntityType.GADGET, 61013 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_GADGET_CREATE_61009(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133308061, 61006, {779}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_61010(context, evt)
	-- 判断是gadgetid 61006 option_id 779
	if 61006 ~= evt.param1 then
		return false	
	end
	
	if 779 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_61010(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q2304006") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133308061, EntityType.GADGET, 61005 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 删除指定group： 133308061 ；指定config：61006；物件身上指定option：779；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133308061, 61006, 779) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133308061, EntityType.GADGET, 61014 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_GADGET_CREATE_61011(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133308061, 61008, {779}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_61012(context, evt)
	-- 判断是gadgetid 61008 option_id 779
	if 61008 ~= evt.param1 then
		return false	
	end
	
	if 779 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_61012(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q2304006") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133308061, EntityType.GADGET, 61007 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 删除指定group： 133308061 ；指定config：61008；物件身上指定option：779；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133308061, 61008, 779) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133308061, EntityType.GADGET, 61015 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end