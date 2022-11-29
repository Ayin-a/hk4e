-- 基础信息
local base_info = {
	group_id = 133304126
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
	{ config_id = 126002, gadget_id = 70290418, pos = { x = -1295.290, y = 262.770, z = 1858.430 }, rot = { x = 1.703, y = 342.247, z = 4.139 }, level = 30, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 21 },
	{ config_id = 126003, gadget_id = 70210102, pos = { x = -1295.979, y = 255.666, z = 1862.544 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, persistent = true, area_id = 21 },
	{ config_id = 126004, gadget_id = 70210102, pos = { x = -1295.979, y = 255.666, z = 1862.544 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, persistent = true, area_id = 21 },
	{ config_id = 126008, gadget_id = 70290564, pos = { x = -1294.265, y = 268.800, z = 1860.118 }, rot = { x = 1.703, y = 342.247, z = 4.139 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 126010, gadget_id = 70310148, pos = { x = -1295.979, y = 255.666, z = 1862.544 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	-- 恒素果交互
	{ config_id = 126016, gadget_id = 70360001, pos = { x = -1296.361, y = 256.700, z = 1861.950 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 730740401 去觉树之堂的通路被兰雅玛封起来了。不过没关系，用他的歌就能消除阻碍了！
	{ config_id = 1126001, name = "QUEST_START_126001", event = EventType.EVENT_QUEST_START, source = "7307404", condition = "", action = "action_EVENT_QUEST_START_126001" },
	-- 完成地城，上option
	{ config_id = 1126005, name = "QUEST_START_126005", event = EventType.EVENT_QUEST_START, source = "7307413", condition = "", action = "action_EVENT_QUEST_START_126005", trigger_count = 0 },
	-- 完成死域，刷出调查点03和光柱10
	{ config_id = 1126007, name = "QUEST_START_126007", event = EventType.EVENT_QUEST_START, source = "7307410", condition = "", action = "action_EVENT_QUEST_START_126007", trigger_count = 0 },
	-- 拾取地城完成后的操作台，干掉光球08
	{ config_id = 1126009, name = "GADGET_STATE_CHANGE_126009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_126009", action = "action_EVENT_GADGET_STATE_CHANGE_126009" },
	-- 完成地城，刷出恒素果光球08
	{ config_id = 1126012, name = "QUEST_START_126012", event = EventType.EVENT_QUEST_START, source = "7307413", condition = "", action = "action_EVENT_QUEST_START_126012", trigger_count = 0 },
	-- 拾取死域完成后的03，干掉光球和光柱10
	{ config_id = 1126013, name = "GADGET_STATE_CHANGE_126013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_126013", action = "action_EVENT_GADGET_STATE_CHANGE_126013" },
	-- 完成死域，保底干掉光柱10
	{ config_id = 1126014, name = "QUEST_FINISH_126014", event = EventType.EVENT_QUEST_FINISH, source = "7307410", condition = "", action = "action_EVENT_QUEST_FINISH_126014", trigger_count = 0 },
	-- 完成地城，保底干掉操作台
	{ config_id = 1126015, name = "QUEST_FINISH_126015", event = EventType.EVENT_QUEST_FINISH, source = "7307413", condition = "", action = "action_EVENT_QUEST_FINISH_126015", trigger_count = 0 },
	-- 执行操作台
	{ config_id = 1126017, name = "SELECT_OPTION_126017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_126017", action = "action_EVENT_SELECT_OPTION_126017", trigger_count = 0 },
	{ config_id = 1126018, name = "GADGET_CREATE_126018", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_126018", action = "action_EVENT_GADGET_CREATE_126018", trigger_count = 0 },
	{ config_id = 1126019, name = "GROUP_LOAD_126019", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_126019", action = "action_EVENT_GROUP_LOAD_126019", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "rmd", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 126011, gadget_id = 70310148, pos = { x = -1295.979, y = 255.666, z = 1862.544 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 }
	},
	triggers = {
		{ config_id = 1126006, name = "TIME_AXIS_PASS_126006", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_126006", action = "action_EVENT_TIME_AXIS_PASS_126006" }
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
		gadgets = { 126002, 126016 },
		regions = { },
		triggers = { "QUEST_START_126001", "QUEST_START_126005", "QUEST_START_126007", "GADGET_STATE_CHANGE_126009", "QUEST_START_126012", "GADGET_STATE_CHANGE_126013", "QUEST_FINISH_126014", "QUEST_FINISH_126015", "SELECT_OPTION_126017", "GADGET_CREATE_126018", "GROUP_LOAD_126019" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_START_126001(context, evt)
	-- 调用提示id为 730740401 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 730740401) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_126005(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133304126, 126016, {68}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_126007(context, evt)
	-- 创建id为126003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 126003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 126002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 126002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为126010的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 126010 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_126009(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133304126, 126016) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_126009(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133304126, EntityType.GADGET, 126008 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_126012(context, evt)
	-- 创建id为126008的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 126008 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_126013(context, evt)
	if GadgetState.ChestOpened ~= ScriptLib.GetGadgetStateByConfigId(context, 133304126, 126003) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_126013(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 126010 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_126014(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 126010 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_126015(context, evt)
	-- 删除指定group： 133304126 ；指定config：126016；物件身上指定option：68；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133304126, 126016, 68) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_126017(context, evt)
	-- 判断是gadgetid 126016 option_id 68
	if 126016 ~= evt.param1 then
		return false	
	end
	
	if 68 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_126017(context, evt)
	-- 删除指定group： 133304126 ；指定config：126016；物件身上指定option：68；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133304126, 126016, 68) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 126016 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 126016, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_126018(context, evt)
	if 126008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_126018(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133304126, 126016, {68}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_126019(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133304126, 126016) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_126019(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133304126, EntityType.GADGET, 126008 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end