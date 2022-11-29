-- 基础信息
local base_info = {
	group_id = 133302160
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
	-- 解除死域后刷出
	{ config_id = 160001, gadget_id = 70210102, pos = { x = -82.158, y = 240.807, z = 2076.362 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, persistent = true, area_id = 20 },
	-- 完成地城后刷出
	{ config_id = 160002, gadget_id = 70210102, pos = { x = -82.158, y = 240.807, z = 2076.362 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, persistent = true, area_id = 20 },
	{ config_id = 160003, gadget_id = 70290418, pos = { x = -85.090, y = 248.210, z = 2072.070 }, rot = { x = 0.000, y = 160.457, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	-- 完成地城后刷出
	{ config_id = 160004, gadget_id = 70290564, pos = { x = -85.739, y = 254.579, z = 2078.655 }, rot = { x = 0.000, y = 160.457, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	-- 解除死域后刷出
	{ config_id = 160009, gadget_id = 70310148, pos = { x = -82.158, y = 240.807, z = 2076.362 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	-- 恒素果交互
	{ config_id = 160016, gadget_id = 70360001, pos = { x = -82.699, y = 242.337, z = 2076.776 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 拾取恒素果，干掉光球，干掉光柱
	{ config_id = 1160005, name = "GADGET_STATE_CHANGE_160005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_160005", action = "action_EVENT_GADGET_STATE_CHANGE_160005" },
	-- 完成地城，回来拾取恒素果，addoption
	{ config_id = 1160006, name = "QUEST_START_160006", event = EventType.EVENT_QUEST_START, source = "7306914", condition = "", action = "action_EVENT_QUEST_START_160006", trigger_count = 0 },
	-- rmd
	{ config_id = 1160008, name = "QUEST_START_160008", event = EventType.EVENT_QUEST_START, source = "7306908", condition = "", action = "action_EVENT_QUEST_START_160008" },
	-- 触摸莎兰树，干掉光柱
	{ config_id = 1160011, name = "GADGET_STATE_CHANGE_160011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_160011", action = "action_EVENT_GADGET_STATE_CHANGE_160011" },
	-- 任务结束，干掉矮光柱09
	{ config_id = 1160012, name = "QUEST_FINISH_160012", event = EventType.EVENT_QUEST_FINISH, source = "7306911", condition = "", action = "action_EVENT_QUEST_FINISH_160012", trigger_count = 0 },
	-- 解除死域，即可触摸莎兰树，刷出光柱和调查点
	{ config_id = 1160013, name = "QUEST_START_160013", event = EventType.EVENT_QUEST_START, source = "7306911", condition = "", action = "action_EVENT_QUEST_START_160013", trigger_count = 0 },
	-- 任务结束，干掉操作台
	{ config_id = 1160014, name = "QUEST_FINISH_160014", event = EventType.EVENT_QUEST_FINISH, source = "7306914", condition = "", action = "action_EVENT_QUEST_FINISH_160014", trigger_count = 0 },
	-- 完成地城，刷出光球
	{ config_id = 1160015, name = "QUEST_START_160015", event = EventType.EVENT_QUEST_START, source = "7306914", condition = "", action = "action_EVENT_QUEST_START_160015", trigger_count = 0 },
	-- 执行操作台
	{ config_id = 1160017, name = "SELECT_OPTION_160017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_160017", action = "action_EVENT_SELECT_OPTION_160017", trigger_count = 0 },
	-- 创光球的时候挂操作台
	{ config_id = 1160018, name = "GADGET_CREATE_160018", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_160018", action = "action_EVENT_GADGET_CREATE_160018", trigger_count = 0 },
	{ config_id = 1160019, name = "GROUP_LOAD_160019", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_160019", action = "action_EVENT_GROUP_LOAD_160019", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "rmd", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 160010, gadget_id = 70310148, pos = { x = -82.158, y = 240.807, z = 2076.362 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 }
	},
	triggers = {
		{ config_id = 1160007, name = "TIME_AXIS_PASS_160007", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_160007", action = "action_EVENT_TIME_AXIS_PASS_160007" }
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
		gadgets = { 160003, 160016 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_160005", "QUEST_START_160006", "QUEST_START_160008", "GADGET_STATE_CHANGE_160011", "QUEST_FINISH_160012", "QUEST_START_160013", "QUEST_FINISH_160014", "QUEST_START_160015", "SELECT_OPTION_160017", "GADGET_CREATE_160018", "GROUP_LOAD_160019" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_160005(context, evt)
	if 160016 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_160005(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133302160, EntityType.GADGET, 160004 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_160006(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133302160, 160016, {68}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_160008(context, evt)
	-- 调用提示id为 73069081 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 73069081) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_160011(context, evt)
	if 160001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_160011(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 160009 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_160012(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 160009 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_160013(context, evt)
	-- 创建id为160001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 160001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 160003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 160003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为160009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 160009 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_160014(context, evt)
	-- 删除指定group： 133302160 ；指定config：160016；物件身上指定option：68；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133302160, 160016, 68) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_160015(context, evt)
	-- 创建id为160004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 160004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_160017(context, evt)
	-- 判断是gadgetid 160016 option_id 68
	if 160016 ~= evt.param1 then
		return false	
	end
	
	if 68 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_160017(context, evt)
	-- 删除指定group： 133302160 ；指定config：160016；物件身上指定option：68；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133302160, 160016, 68) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 160016 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 160016, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_160018(context, evt)
	if 160004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_160018(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133302160, 160016, {68}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_160019(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133302160, 160016) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_160019(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133302160, EntityType.GADGET, 160004 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end