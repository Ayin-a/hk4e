-- 基础信息
local base_info = {
	group_id = 133213113
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
	{ config_id = 113001, gadget_id = 70900382, pos = { x = -3726.807, y = 238.867, z = -3056.969 }, rot = { x = 350.042, y = 341.479, z = 0.000 }, level = 27, persistent = true, area_id = 12 },
	{ config_id = 113002, gadget_id = 70900382, pos = { x = -3719.553, y = 236.184, z = -3079.344 }, rot = { x = 355.746, y = 339.690, z = 1.097 }, level = 27, persistent = true, area_id = 12 },
	{ config_id = 113003, gadget_id = 70900382, pos = { x = -3620.560, y = 214.746, z = -3150.367 }, rot = { x = 10.991, y = 359.899, z = 359.981 }, level = 27, persistent = true, area_id = 12 },
	{ config_id = 113005, gadget_id = 71700288, pos = { x = -3661.292, y = 230.956, z = -3091.232 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 12, is_enable_interact = false },
	{ config_id = 113006, gadget_id = 70360001, pos = { x = -3726.964, y = 239.947, z = -3052.805 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, drop_count = 1, persistent = true, area_id = 12, is_enable_interact = false },
	{ config_id = 113007, gadget_id = 70360001, pos = { x = -3719.597, y = 236.877, z = -3074.276 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, drop_count = 1, persistent = true, area_id = 12, is_enable_interact = false },
	{ config_id = 113008, gadget_id = 70360001, pos = { x = -3619.802, y = 214.418, z = -3145.229 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, drop_count = 1, persistent = true, area_id = 12, is_enable_interact = false },
	{ config_id = 113010, gadget_id = 71700288, pos = { x = -3726.964, y = 239.947, z = -3052.805 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 12, is_enable_interact = false },
	{ config_id = 113011, gadget_id = 71700288, pos = { x = -3719.597, y = 236.877, z = -3074.276 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 12, is_enable_interact = false },
	{ config_id = 113012, gadget_id = 71700288, pos = { x = -3619.802, y = 214.418, z = -3145.229 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 12, is_enable_interact = false },
	{ config_id = 113017, gadget_id = 70360001, pos = { x = -3661.292, y = 230.956, z = -3091.232 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 12, is_enable_interact = false }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1113004, name = "SELECT_OPTION_113004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_113004", action = "action_EVENT_SELECT_OPTION_113004" },
	{ config_id = 1113009, name = "GADGET_CREATE_113009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_113009", action = "action_EVENT_GADGET_CREATE_113009", trigger_count = 0 },
	{ config_id = 1113013, name = "SELECT_OPTION_113013", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_113013", action = "action_EVENT_SELECT_OPTION_113013" },
	{ config_id = 1113014, name = "SELECT_OPTION_113014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_113014", action = "action_EVENT_SELECT_OPTION_113014" },
	{ config_id = 1113015, name = "SELECT_OPTION_113015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_113015", action = "action_EVENT_SELECT_OPTION_113015" },
	{ config_id = 1113018, name = "GADGET_CREATE_113018", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_113018", action = "action_EVENT_GADGET_CREATE_113018", trigger_count = 0 },
	{ config_id = 1113019, name = "GADGET_CREATE_113019", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_113019", action = "action_EVENT_GADGET_CREATE_113019", trigger_count = 0 },
	{ config_id = 1113020, name = "GADGET_CREATE_113020", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_113020", action = "action_EVENT_GADGET_CREATE_113020", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 113016, gadget_id = 70220017, pos = { x = -3663.569, y = 229.837, z = -3089.058 }, rot = { x = 0.000, y = 85.828, z = 0.000 }, level = 27, persistent = true, area_id = 12 }
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
	end_suite = 2,
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
		gadgets = { 113005, 113017 },
		regions = { },
		triggers = { "SELECT_OPTION_113004", "GADGET_CREATE_113019" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 113006, 113007, 113008, 113010, 113011, 113012 },
		regions = { },
		triggers = { "GADGET_CREATE_113009", "SELECT_OPTION_113013", "SELECT_OPTION_113014", "SELECT_OPTION_113015", "GADGET_CREATE_113018", "GADGET_CREATE_113020" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_113004(context, evt)
	-- 判断是gadgetid 113017 option_id 68
	if 113017 ~= evt.param1 then
		return false	
	end
	
	if 68 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_113004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7212003_end") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 113017 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133213113, EntityType.GADGET, 113005 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_113009(context, evt)
	if 113006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_113009(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133213113, 113006, {86}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_113013(context, evt)
	-- 判断是gadgetid 113006 option_id 86
	if 113006 ~= evt.param1 then
		return false	
	end
	
	if 86 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_113013(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7212004_end") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 创建id为113001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 113001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 113006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133213113, EntityType.GADGET, 113010 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=-3726, y=238, z=-3056}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "Sfx_Quest_underConstruction", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_113014(context, evt)
	-- 判断是gadgetid 113007 option_id 86
	if 113007 ~= evt.param1 then
		return false	
	end
	
	if 86 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_113014(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7212005_end") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 创建id为113002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 113002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 113007 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133213113, EntityType.GADGET, 113011 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=-3719, y=236, z=-3079}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "Sfx_Quest_underConstruction", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_113015(context, evt)
	-- 判断是gadgetid 113008 option_id 86
	if 113008 ~= evt.param1 then
		return false	
	end
	
	if 86 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_113015(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7212006_end") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 创建id为113003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 113003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 113008 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133213113, EntityType.GADGET, 113012 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=-3620, y=214, z=-3150}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "Sfx_Quest_underConstruction", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_113018(context, evt)
	if 113007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_113018(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133213113, 113007, {86}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_113019(context, evt)
	if 113017 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_113019(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133213113, 113017, {68}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_113020(context, evt)
	if 113008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_113020(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133213113, 113008, {86}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end