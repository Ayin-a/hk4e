-- 基础信息
local base_info = {
	group_id = 133213123
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
	{ config_id = 123002, gadget_id = 71700288, pos = { x = -3752.773, y = 253.755, z = -3036.455 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, isOneoff = true, persistent = true, area_id = 12, is_enable_interact = false },
	{ config_id = 123003, gadget_id = 71700288, pos = { x = -3736.578, y = 243.816, z = -3029.934 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, isOneoff = true, persistent = true, area_id = 12, is_enable_interact = false },
	{ config_id = 123004, gadget_id = 71700288, pos = { x = -3714.606, y = 233.989, z = -3016.214 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, isOneoff = true, persistent = true, area_id = 12, is_enable_interact = false },
	{ config_id = 123008, gadget_id = 70900389, pos = { x = -3756.560, y = 257.347, z = -3079.188 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, isOneoff = true, persistent = true, area_id = 12 },
	{ config_id = 123009, gadget_id = 70360001, pos = { x = -3752.773, y = 253.755, z = -3036.455 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, area_id = 12 },
	{ config_id = 123010, gadget_id = 70360001, pos = { x = -3736.578, y = 243.816, z = -3029.934 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, isOneoff = true, persistent = true, area_id = 12 },
	{ config_id = 123011, gadget_id = 70360001, pos = { x = -3714.606, y = 233.989, z = -3016.214 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, area_id = 12 },
	{ config_id = 123015, gadget_id = 70310081, pos = { x = -3756.560, y = 257.347, z = -3079.188 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, isOneoff = true, persistent = true, area_id = 12 }
}

-- 区域
regions = {
	{ config_id = 123001, shape = RegionShape.SPHERE, radius = 3, pos = { x = -3754.445, y = 257.353, z = -3078.256 }, area_id = 12 }
}

-- 触发器
triggers = {
	{ config_id = 1123001, name = "ENTER_REGION_123001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_123001", action = "action_EVENT_ENTER_REGION_123001" },
	{ config_id = 1123005, name = "SELECT_OPTION_123005", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_123005", action = "action_EVENT_SELECT_OPTION_123005" },
	{ config_id = 1123006, name = "SELECT_OPTION_123006", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_123006", action = "action_EVENT_SELECT_OPTION_123006" },
	{ config_id = 1123007, name = "SELECT_OPTION_123007", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_123007", action = "action_EVENT_SELECT_OPTION_123007" },
	{ config_id = 1123012, name = "GADGET_CREATE_123012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_123012", action = "action_EVENT_GADGET_CREATE_123012", trigger_count = 0 },
	{ config_id = 1123013, name = "GADGET_CREATE_123013", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_123013", action = "action_EVENT_GADGET_CREATE_123013", trigger_count = 0 },
	{ config_id = 1123014, name = "GADGET_CREATE_123014", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_123014", action = "action_EVENT_GADGET_CREATE_123014", trigger_count = 0 }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 123001 },
		triggers = { "ENTER_REGION_123001" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 123002, 123003, 123004, 123008, 123009, 123010, 123011, 123015 },
		regions = { },
		triggers = { "SELECT_OPTION_123005", "SELECT_OPTION_123006", "SELECT_OPTION_123007", "GADGET_CREATE_123012", "GADGET_CREATE_123013", "GADGET_CREATE_123014" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_123001(context, evt)
	if evt.param1 ~= 123001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_123001(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7212203_end") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 创建id为123008的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 123008 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为123015的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 123015 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_123005(context, evt)
	-- 判断是gadgetid 123009 option_id 68
	if 123009 ~= evt.param1 then
		return false	
	end
	
	if 68 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_123005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7212218_end") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 123009 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133213123, EntityType.GADGET, 123002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_123006(context, evt)
	-- 判断是gadgetid 123010 option_id 68
	if 123010 ~= evt.param1 then
		return false	
	end
	
	if 68 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_123006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7212219_end") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 123010 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133213123, EntityType.GADGET, 123003 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_123007(context, evt)
	-- 判断是gadgetid 123011 option_id 68
	if 123011 ~= evt.param1 then
		return false	
	end
	
	if 68 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_123007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7212221_end") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 123011 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133213123, EntityType.GADGET, 123004 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_123012(context, evt)
	if 123009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_123012(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133213123, 123009, {68}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_123013(context, evt)
	if 123010 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_123013(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133213123, 123010, {68}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_123014(context, evt)
	if 123011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_123014(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133213123, 123011, {68}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end