-- 基础信息
local base_info = {
	group_id = 133302029
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
	{ config_id = 29001, gadget_id = 71700412, pos = { x = -474.838, y = 145.080, z = 2472.428 }, rot = { x = 0.360, y = 23.478, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 29002, gadget_id = 71700411, pos = { x = -475.130, y = 144.860, z = 2471.530 }, rot = { x = 0.000, y = 22.722, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 29003, gadget_id = 70310006, pos = { x = -475.633, y = 144.274, z = 2476.960 }, rot = { x = 0.000, y = 254.376, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 24 },
	{ config_id = 29004, gadget_id = 71700445, pos = { x = -471.853, y = 145.007, z = 2472.524 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 29005, gadget_id = 71700445, pos = { x = -477.340, y = 145.266, z = 2475.565 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 29006, gadget_id = 70360001, pos = { x = -493.856, y = 153.772, z = 2464.845 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 29007, gadget_id = 70360001, pos = { x = -472.118, y = 143.839, z = 2472.988 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 29008, gadget_id = 70360001, pos = { x = -471.853, y = 145.007, z = 2472.524 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 29009, gadget_id = 70360001, pos = { x = -477.340, y = 145.125, z = 2475.565 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 29018, gadget_id = 71700484, pos = { x = -477.357, y = 144.522, z = 2477.899 }, rot = { x = 0.000, y = 119.600, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 29019, gadget_id = 71700485, pos = { x = -477.357, y = 144.522, z = 2477.899 }, rot = { x = 0.000, y = 119.600, z = 0.000 }, level = 1, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1029010, name = "GADGET_CREATE_29010", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_29010", action = "action_EVENT_GADGET_CREATE_29010" },
	{ config_id = 1029011, name = "SELECT_OPTION_29011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_29011", action = "action_EVENT_SELECT_OPTION_29011" },
	{ config_id = 1029012, name = "GADGET_CREATE_29012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_29012", action = "action_EVENT_GADGET_CREATE_29012" },
	{ config_id = 1029013, name = "SELECT_OPTION_29013", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_29013", action = "action_EVENT_SELECT_OPTION_29013" },
	{ config_id = 1029014, name = "GADGET_CREATE_29014", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_29014", action = "action_EVENT_GADGET_CREATE_29014", trigger_count = 0 },
	{ config_id = 1029015, name = "SELECT_OPTION_29015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_29015", action = "action_EVENT_SELECT_OPTION_29015", trigger_count = 0 },
	{ config_id = 1029016, name = "GADGET_CREATE_29016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_29016", action = "action_EVENT_GADGET_CREATE_29016", trigger_count = 0 },
	{ config_id = 1029017, name = "SELECT_OPTION_29017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_29017", action = "action_EVENT_SELECT_OPTION_29017", trigger_count = 0 },
	{ config_id = 1029020, name = "GADGET_STATE_CHANGE_29020", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_29020", action = "action_EVENT_GADGET_STATE_CHANGE_29020", trigger_count = 0 },
	{ config_id = 1029021, name = "GADGET_STATE_CHANGE_29021", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_29021", action = "action_EVENT_GADGET_STATE_CHANGE_29021", trigger_count = 0 },
	{ config_id = 1029022, name = "GROUP_REFRESH_29022", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_29022", trigger_count = 0 }
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
	suite = 2,
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
		gadgets = { 29001, 29002, 29003, 29004, 29005, 29006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 无蚊香suite,
		monsters = { },
		gadgets = { 29001, 29002, 29003 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 完成等到第二天任务,
		monsters = { },
		gadgets = { 29001, 29002, 29003, 29004, 29005, 29006, 29007 },
		regions = { },
		triggers = { "GADGET_CREATE_29012", "SELECT_OPTION_29013" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 收集香炉,
		monsters = { },
		gadgets = { 29001, 29002, 29003, 29004, 29005, 29006, 29008, 29009 },
		regions = { },
		triggers = { "GADGET_CREATE_29014", "SELECT_OPTION_29015", "GADGET_CREATE_29016", "SELECT_OPTION_29017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_29010(context, evt)
	if 29006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_29010(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133302029, 29006, {64}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_29011(context, evt)
	-- 判断是gadgetid 29006 option_id 64
	if 29006 ~= evt.param1 then
		return false	
	end
	
	if 64 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_29011(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 29006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1333020291") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_29012(context, evt)
	if 29007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_29012(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133302029, 29007, {64}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_29013(context, evt)
	-- 判断是gadgetid 29007 option_id 64
	if 29007 ~= evt.param1 then
		return false	
	end
	
	if 64 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_29013(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 29007 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1333020292") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_29014(context, evt)
	if 29008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_29014(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133302029, 29008, {786}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_29015(context, evt)
	-- 判断是gadgetid 29008 option_id 786
	if 29008 ~= evt.param1 then
		return false	
	end
	
	if 786 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_29015(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 29008 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1333020293") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 29004 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133302029, EntityType.GADGET, 29004 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_29016(context, evt)
	if 29009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_29016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133302029, 29009, {786}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_29017(context, evt)
	-- 判断是gadgetid 29009 option_id 786
	if 29009 ~= evt.param1 then
		return false	
	end
	
	if 786 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_29017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 29009 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1333020293") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 29005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133302029, EntityType.GADGET, 29005 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_29020(context, evt)
	if 29003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_29020(context, evt)
	-- 创建id为29018的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 29018 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133302029, EntityType.GADGET, 29019 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_29021(context, evt)
	if 29003 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_29021(context, evt)
	-- 创建id为29019的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 29019 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133302029, EntityType.GADGET, 29018 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_29022(context, evt)
	-- 创建id为29018的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 29018 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133302029, EntityType.GADGET, 29019 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end