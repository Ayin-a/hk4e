-- 基础信息
local base_info = {
	group_id = 166001056
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 56003, monster_id = 28020605, pos = { x = 1110.194, y = 714.175, z = 446.965 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "走兽", isOneoff = true, area_id = 300 },
	{ config_id = 56014, monster_id = 28050301, pos = { x = 1111.670, y = 718.458, z = 449.139 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "采集动物", isOneoff = true, area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 56001, gadget_id = 70210102, pos = { x = 1095.400, y = 714.020, z = 451.505 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1050170, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 300 },
	{ config_id = 56004, gadget_id = 70290395, pos = { x = 1093.830, y = 713.713, z = 452.890 }, rot = { x = 5.733, y = 32.608, z = 15.431 }, level = 36, state = GadgetState.GearStart, area_id = 300 },
	{ config_id = 56006, gadget_id = 70220066, pos = { x = 1110.310, y = 713.933, z = 447.005 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 300 },
	{ config_id = 56007, gadget_id = 70220066, pos = { x = 1113.303, y = 714.144, z = 447.362 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 300 },
	{ config_id = 56010, gadget_id = 70710234, pos = { x = 1097.439, y = 713.983, z = 449.131 }, rot = { x = 0.000, y = 306.132, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 56011, gadget_id = 70710234, pos = { x = 1101.258, y = 713.704, z = 446.813 }, rot = { x = 0.000, y = 297.217, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 56012, gadget_id = 70220063, pos = { x = 1113.291, y = 715.332, z = 448.561 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 56013, gadget_id = 70220064, pos = { x = 1111.667, y = 718.837, z = 449.169 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 56016, gadget_id = 70360001, pos = { x = 1096.164, y = 714.482, z = 450.655 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, area_id = 300 },
	{ config_id = 56019, gadget_id = 70290308, pos = { x = 1096.133, y = 713.703, z = 450.906 }, rot = { x = 335.497, y = 346.575, z = 29.924 }, level = 36, persistent = true, area_id = 300 },
	{ config_id = 56021, gadget_id = 70360089, pos = { x = 1095.844, y = 714.089, z = 450.179 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 }
}

-- 区域
regions = {
	{ config_id = 56002, shape = RegionShape.SPHERE, radius = 15, pos = { x = 1106.000, y = 713.676, z = 449.983 }, area_id = 300 }
}

-- 触发器
triggers = {
	{ config_id = 1056002, name = "ENTER_REGION_56002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_56002" },
	{ config_id = 1056005, name = "GADGET_STATE_CHANGE_56005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_56005", action = "action_EVENT_GADGET_STATE_CHANGE_56005" },
	{ config_id = 1056008, name = "ANY_GADGET_DIE_56008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_56008", action = "action_EVENT_ANY_GADGET_DIE_56008" },
	{ config_id = 1056009, name = "GADGET_STATE_CHANGE_56009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_56009", action = "action_EVENT_GADGET_STATE_CHANGE_56009" },
	{ config_id = 1056015, name = "ANY_GADGET_DIE_56015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_56015", action = "action_EVENT_ANY_GADGET_DIE_56015" },
	{ config_id = 1056017, name = "GADGET_CREATE_56017", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_56017", action = "action_EVENT_GADGET_CREATE_56017", trigger_count = 0 },
	{ config_id = 1056018, name = "SELECT_OPTION_56018", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_56018", action = "action_EVENT_SELECT_OPTION_56018", trigger_count = 0 },
	{ config_id = 1056020, name = "ANY_GADGET_DIE_56020", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_56020", action = "action_EVENT_ANY_GADGET_DIE_56020" },
	{ config_id = 1056022, name = "GROUP_LOAD_56022", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_56022", action = "action_EVENT_GROUP_LOAD_56022", trigger_count = 0 },
	{ config_id = 1056023, name = "GROUP_LOAD_56023", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_56023", action = "action_EVENT_GROUP_LOAD_56023", trigger_count = 0 },
	{ config_id = 1056024, name = "GADGET_CREATE_56024", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_56024", action = "action_EVENT_GADGET_CREATE_56024" }
}

-- 变量
variables = {
	{ config_id = 1, name = "keyB", value = 0, no_refresh = true }
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
		gadgets = { 56004, 56006, 56007, 56010, 56011, 56012, 56013, 56016, 56021 },
		regions = { 56002 },
		triggers = { "ENTER_REGION_56002", "GADGET_STATE_CHANGE_56005", "ANY_GADGET_DIE_56008", "GADGET_STATE_CHANGE_56009", "ANY_GADGET_DIE_56015", "GADGET_CREATE_56017", "SELECT_OPTION_56018", "ANY_GADGET_DIE_56020", "GROUP_LOAD_56022", "GROUP_LOAD_56023", "GADGET_CREATE_56024" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ENTER_REGION_56002(context, evt)
	-- 调用提示id为 60010135 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010135) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_56005(context, evt)
	if 56004 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_56005(context, evt)
	-- 创建id为56001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 56001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_56008(context, evt)
	if 56006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_56008(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 56003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_56009(context, evt)
	if 56001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_56009(context, evt)
	-- 将本组内变量名为 "keyB" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "keyB", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 调用提示id为 60010134 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010134) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_56015(context, evt)
	if 56013 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_56015(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 56014, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_56017(context, evt)
	if 56016 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_56017(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 166001056, 56016, {99}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_56018(context, evt)
	-- 判断是gadgetid 56016 option_id 99
	if 56016 ~= evt.param1 then
		return false	
	end
	
	if 99 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_56018(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 56016 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 56021 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 创建id为56019的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 56019 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_56020(context, evt)
	if 56019 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_56020(context, evt)
	-- 将本组内变量名为 "keyB" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "keyB", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 56004 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 创建id为56001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 56001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 56021 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_56022(context, evt)
	-- 判断变量"keyB"为0
	if ScriptLib.GetGroupVariableValue(context, "keyB") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_56022(context, evt)
	-- 创建id为56004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 56004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为56016的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 56016 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为56021的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 56021 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_56023(context, evt)
	-- 判断变量"keyB"为1
	if ScriptLib.GetGroupVariableValue(context, "keyB") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_56023(context, evt)
	-- 将本组内变量名为 "keyB" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "keyB", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 56004 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 创建id为56001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 56001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 56021 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_56024(context, evt)
	if 56004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_56024(context, evt)
	-- 创建id为56016的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 56016 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end