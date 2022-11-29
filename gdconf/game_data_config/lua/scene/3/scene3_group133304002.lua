-- 基础信息
local base_info = {
	group_id = 133304002
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
	{ config_id = 2001, gadget_id = 70360104, pos = { x = -1228.068, y = 344.577, z = 2448.358 }, rot = { x = 5.046, y = 2.192, z = 15.128 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 21 },
	{ config_id = 2002, gadget_id = 70360104, pos = { x = -1220.401, y = 341.455, z = 2466.354 }, rot = { x = 16.826, y = 5.864, z = 351.647 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 21 },
	{ config_id = 2003, gadget_id = 70360104, pos = { x = -1204.295, y = 341.846, z = 2448.963 }, rot = { x = 0.494, y = 357.878, z = 344.529 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 21 },
	{ config_id = 2004, gadget_id = 70300203, pos = { x = -1228.068, y = 344.577, z = 2448.358 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 21 },
	{ config_id = 2005, gadget_id = 70300203, pos = { x = -1220.402, y = 341.385, z = 2466.354 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 21 },
	{ config_id = 2006, gadget_id = 70300203, pos = { x = -1204.296, y = 341.846, z = 2448.962 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 21 },
	{ config_id = 2007, gadget_id = 70360001, pos = { x = -1228.125, y = 344.749, z = 2448.341 }, rot = { x = 354.633, y = 359.144, z = 18.119 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 2008, gadget_id = 70360001, pos = { x = -1220.355, y = 341.743, z = 2466.407 }, rot = { x = 16.143, y = 1.366, z = 350.370 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 2009, gadget_id = 70360001, pos = { x = -1204.132, y = 342.107, z = 2448.950 }, rot = { x = 0.736, y = 358.750, z = 344.538 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 2018, gadget_id = 70360001, pos = { x = -1228.120, y = 344.736, z = 2448.342 }, rot = { x = 354.633, y = 359.144, z = 18.119 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 2019, gadget_id = 70360001, pos = { x = -1220.355, y = 341.743, z = 2466.407 }, rot = { x = 16.143, y = 1.366, z = 350.370 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 2020, gadget_id = 70360001, pos = { x = -1204.162, y = 342.115, z = 2448.947 }, rot = { x = 0.736, y = 358.750, z = 344.538 }, level = 30, persistent = true, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 2007加上放置按钮
	{ config_id = 1002010, name = "GADGET_CREATE_2010", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_2010", action = "action_EVENT_GADGET_CREATE_2010", trigger_count = 0 },
	{ config_id = 1002011, name = "SELECT_OPTION_2011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2011", action = "action_EVENT_SELECT_OPTION_2011", trigger_count = 0 },
	{ config_id = 1002012, name = "SELECT_OPTION_2012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2012", action = "action_EVENT_SELECT_OPTION_2012", trigger_count = 0 },
	{ config_id = 1002013, name = "SELECT_OPTION_2013", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2013", action = "action_EVENT_SELECT_OPTION_2013", trigger_count = 0 },
	-- 2018加上回收按钮
	{ config_id = 1002014, name = "GADGET_CREATE_2014", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_2014", action = "action_EVENT_GADGET_CREATE_2014", trigger_count = 0 },
	{ config_id = 1002015, name = "SELECT_OPTION_2015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2015", action = "action_EVENT_SELECT_OPTION_2015", trigger_count = 0 },
	{ config_id = 1002016, name = "SELECT_OPTION_2016", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2016", action = "action_EVENT_SELECT_OPTION_2016", trigger_count = 0 },
	{ config_id = 1002017, name = "SELECT_OPTION_2017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2017", action = "action_EVENT_SELECT_OPTION_2017", trigger_count = 0 },
	-- 2008加上放置按钮
	{ config_id = 1002021, name = "GADGET_CREATE_2021", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_2021", action = "action_EVENT_GADGET_CREATE_2021", trigger_count = 0 },
	-- 2009加上放置按钮
	{ config_id = 1002022, name = "GADGET_CREATE_2022", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_2022", action = "action_EVENT_GADGET_CREATE_2022", trigger_count = 0 },
	-- 2019加上回收按钮
	{ config_id = 1002023, name = "GADGET_CREATE_2023", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_2023", action = "action_EVENT_GADGET_CREATE_2023", trigger_count = 0 },
	-- 2020加上回收按钮
	{ config_id = 1002024, name = "GADGET_CREATE_2024", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_2024", action = "action_EVENT_GADGET_CREATE_2024", trigger_count = 0 }
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
		-- description = 空suite,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 放置信标用,
		monsters = { },
		gadgets = { 2004, 2005, 2006, 2007, 2008, 2009 },
		regions = { },
		triggers = { "GADGET_CREATE_2010", "SELECT_OPTION_2011", "SELECT_OPTION_2012", "SELECT_OPTION_2013", "GADGET_CREATE_2021", "GADGET_CREATE_2022" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 显示信标用,
		monsters = { },
		gadgets = { 2001, 2002, 2003 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 回收信标用,
		monsters = { },
		gadgets = { 2001, 2002, 2003, 2018, 2019, 2020 },
		regions = { },
		triggers = { "GADGET_CREATE_2014", "SELECT_OPTION_2015", "SELECT_OPTION_2016", "SELECT_OPTION_2017", "GADGET_CREATE_2023", "GADGET_CREATE_2024" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_2010(context, evt)
	if 2007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_2010(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133304002, 2007, {35}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_2011(context, evt)
	-- 判断是gadgetid 2007 option_id 35
	if 2007 ~= evt.param1 then
		return false	
	end
	
	if 35 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2011(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q2302506") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133304002, EntityType.GADGET, 2004 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 创建id为2001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除指定group： 133304002 ；指定config：2007；物件身上指定option：35；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133304002, 2007, 35) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133304002, EntityType.GADGET, 2007 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_2012(context, evt)
	-- 判断是gadgetid 2008 option_id 35
	if 2008 ~= evt.param1 then
		return false	
	end
	
	if 35 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2012(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q2302506") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133304002, EntityType.GADGET, 2005 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 创建id为2002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除指定group： 133304002 ；指定config：2008；物件身上指定option：35；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133304002, 2008, 35) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133304002, EntityType.GADGET, 2008 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_2013(context, evt)
	-- 判断是gadgetid 2009 option_id 35
	if 2009 ~= evt.param1 then
		return false	
	end
	
	if 35 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2013(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q2302506") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133304002, EntityType.GADGET, 2006 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 创建id为2003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除指定group： 133304002 ；指定config：2009；物件身上指定option：35；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133304002, 2009, 35) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133304002, EntityType.GADGET, 2009 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_2014(context, evt)
	if 2018 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_2014(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133304002, 2018, {85}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_2015(context, evt)
	-- 判断是gadgetid 2018 option_id 85
	if 2018 ~= evt.param1 then
		return false	
	end
	
	if 85 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2015(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q2302509") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 2001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 删除指定group： 133304002 ；指定config：2018；物件身上指定option：85；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133304002, 2018, 85) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133304002, EntityType.GADGET, 2018 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_2016(context, evt)
	-- 判断是gadgetid 2019 option_id 85
	if 2019 ~= evt.param1 then
		return false	
	end
	
	if 85 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2016(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q2302509") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 2002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 删除指定group： 133304002 ；指定config：2019；物件身上指定option：85；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133304002, 2019, 85) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133304002, EntityType.GADGET, 2019 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_2017(context, evt)
	-- 判断是gadgetid 2020 option_id 85
	if 2020 ~= evt.param1 then
		return false	
	end
	
	if 85 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2017(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q2302509") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 2003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 删除指定group： 133304002 ；指定config：2020；物件身上指定option：85；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133304002, 2020, 85) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133304002, EntityType.GADGET, 2020 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_2021(context, evt)
	if 2008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_2021(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133304002, 2008, {35}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_2022(context, evt)
	if 2009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_2022(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133304002, 2009, {35}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_2023(context, evt)
	if 2019 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_2023(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133304002, 2019, {85}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_2024(context, evt)
	if 2020 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_2024(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133304002, 2020, {85}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end