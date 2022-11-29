-- 基础信息
local base_info = {
	group_id = 133213110
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 110017, monster_id = 26060101, pos = { x = -3668.930, y = 229.584, z = -3088.320 }, rot = { x = 0.000, y = 292.431, z = 0.000 }, level = 27, drop_tag = "雷萤", disableWander = true, climate_area_id = 2, area_id = 12 },
	{ config_id = 110018, monster_id = 26060101, pos = { x = -3667.451, y = 230.200, z = -3081.688 }, rot = { x = 0.000, y = 223.200, z = 0.000 }, level = 27, drop_tag = "雷萤", disableWander = true, climate_area_id = 2, area_id = 12 },
	{ config_id = 110022, monster_id = 28050104, pos = { x = -3729.859, y = 280.410, z = -3142.354 }, rot = { x = 0.000, y = 73.821, z = 0.000 }, level = 27, drop_tag = "魔法生物", climate_area_id = 3, area_id = 12 },
	{ config_id = 110023, monster_id = 28050104, pos = { x = -3728.267, y = 280.005, z = -3142.555 }, rot = { x = 0.000, y = 279.326, z = 0.000 }, level = 27, drop_tag = "魔法生物", climate_area_id = 3, area_id = 12 },
	{ config_id = 110024, monster_id = 28050104, pos = { x = -3729.416, y = 280.370, z = -3142.856 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "魔法生物", climate_area_id = 3, area_id = 12 },
	{ config_id = 110025, monster_id = 28050104, pos = { x = -3728.502, y = 280.009, z = -3141.685 }, rot = { x = 0.000, y = 0.000, z = 127.706 }, level = 27, drop_tag = "魔法生物", climate_area_id = 3, area_id = 12 },
	{ config_id = 110027, monster_id = 26060101, pos = { x = -3669.535, y = 229.763, z = -3085.786 }, rot = { x = 0.000, y = 292.431, z = 0.000 }, level = 27, drop_tag = "雷萤", disableWander = true, climate_area_id = 2, area_id = 12 },
	{ config_id = 110028, monster_id = 26060101, pos = { x = -3670.770, y = 229.763, z = -3089.081 }, rot = { x = 0.000, y = 321.960, z = 0.000 }, level = 27, drop_tag = "雷萤", disableWander = true, climate_area_id = 2, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 110001, gadget_id = 70360104, pos = { x = -3729.030, y = 279.235, z = -3142.590 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, persistent = true, area_id = 12 },
	{ config_id = 110002, gadget_id = 70360104, pos = { x = -3671.636, y = 230.863, z = -3087.684 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, persistent = true, area_id = 12 },
	{ config_id = 110003, gadget_id = 70360104, pos = { x = -3622.559, y = 206.916, z = -3202.747 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, persistent = true, area_id = 12 },
	{ config_id = 110007, gadget_id = 70360001, pos = { x = -3729.105, y = 279.480, z = -3142.800 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 12 },
	{ config_id = 110008, gadget_id = 70360001, pos = { x = -3671.426, y = 231.044, z = -3087.633 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 12 },
	{ config_id = 110009, gadget_id = 70360001, pos = { x = -3622.604, y = 207.089, z = -3202.957 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 12 }
}

-- 区域
regions = {
	{ config_id = 110026, shape = RegionShape.SPHERE, radius = 8, pos = { x = -3669.981, y = 229.755, z = -3088.565 }, area_id = 12 }
}

-- 触发器
triggers = {
	{ config_id = 1110010, name = "GADGET_CREATE_110010", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_110010", action = "action_EVENT_GADGET_CREATE_110010", trigger_count = 0 },
	{ config_id = 1110011, name = "SELECT_OPTION_110011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_110011", action = "action_EVENT_SELECT_OPTION_110011" },
	{ config_id = 1110012, name = "GADGET_CREATE_110012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_110012", action = "action_EVENT_GADGET_CREATE_110012", trigger_count = 0 },
	{ config_id = 1110013, name = "SELECT_OPTION_110013", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_110013", action = "action_EVENT_SELECT_OPTION_110013" },
	{ config_id = 1110014, name = "GADGET_CREATE_110014", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_110014", action = "action_EVENT_GADGET_CREATE_110014", trigger_count = 0 },
	{ config_id = 1110015, name = "SELECT_OPTION_110015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_110015", action = "action_EVENT_SELECT_OPTION_110015" },
	{ config_id = 1110026, name = "ENTER_REGION_110026", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_110026", action = "action_EVENT_ENTER_REGION_110026" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 110020, monster_id = 23010101, pos = { x = -3629.406, y = 206.731, z = -3199.384 }, rot = { x = 0.000, y = 120.036, z = 0.000 }, level = 27, drop_id = 1000100, climate_area_id = 2, area_id = 12 },
		{ config_id = 110021, monster_id = 23010201, pos = { x = -3629.261, y = 206.944, z = -3210.315 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, climate_area_id = 2, area_id = 12 }
	},
	regions = {
		{ config_id = 110019, shape = RegionShape.SPHERE, radius = 8, pos = { x = -3623.035, y = 206.731, z = -3202.976 }, area_id = 12 }
	},
	triggers = {
		{ config_id = 1110019, name = "ENTER_REGION_110019", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_110019", action = "action_EVENT_ENTER_REGION_110019" }
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
		monsters = { 110017, 110018, 110022, 110023, 110024, 110025, 110027, 110028 },
		gadgets = { 110001, 110002, 110003, 110007, 110008, 110009 },
		regions = { 110026 },
		triggers = { "GADGET_CREATE_110010", "SELECT_OPTION_110011", "GADGET_CREATE_110012", "SELECT_OPTION_110013", "GADGET_CREATE_110014", "SELECT_OPTION_110015", "ENTER_REGION_110026" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
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

-- 触发条件
function condition_EVENT_GADGET_CREATE_110010(context, evt)
	if 110007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_110010(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133213110, 110007, {85}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_110011(context, evt)
	-- 判断是gadgetid 110007 option_id 85
	if 110007 ~= evt.param1 then
		return false	
	end
	
	if 85 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_110011(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7211703_end") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 删除指定group： 133213110 ；指定config：110007；物件身上指定option：171；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133213110, 110007, 171) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 110007 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 110001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_110012(context, evt)
	if 110008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_110012(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133213110, 110008, {85}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_110013(context, evt)
	-- 判断是gadgetid 110008 option_id 85
	if 110008 ~= evt.param1 then
		return false	
	end
	
	if 85 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_110013(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7211704_end") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 删除指定group： 133213110 ；指定config：110008；物件身上指定option：171；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133213110, 110008, 171) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 110008 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 110002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_110014(context, evt)
	if 110009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_110014(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133213110, 110009, {85}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_110015(context, evt)
	-- 判断是gadgetid 110009 option_id 85
	if 110009 ~= evt.param1 then
		return false	
	end
	
	if 85 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_110015(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7211705_end") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 删除指定group： 133213110 ；指定config：110009；物件身上指定option：171；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133213110, 110009, 171) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 110009 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 110003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_110026(context, evt)
	if evt.param1 ~= 110026 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_110026(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213110, 4)
	
	return 0
end