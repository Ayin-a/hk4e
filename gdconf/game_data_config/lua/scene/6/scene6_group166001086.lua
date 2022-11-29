-- 基础信息
local base_info = {
	group_id = 166001086
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
	{ config_id = 86001, gadget_id = 70211112, pos = { x = 711.954, y = 774.723, z = 113.887 }, rot = { x = 5.310, y = 265.499, z = 0.000 }, level = 26, chest_drop_id = 1050172, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, autopick = true, explore = { name = "chest", exp = 1 }, area_id = 300 },
	{ config_id = 86004, gadget_id = 70710133, pos = { x = 704.598, y = 774.200, z = 128.444 }, rot = { x = 0.000, y = 244.777, z = 0.000 }, level = 32, area_id = 300 },
	{ config_id = 86006, gadget_id = 70710133, pos = { x = 706.183, y = 789.888, z = 98.169 }, rot = { x = 0.000, y = 291.324, z = 0.000 }, level = 32, area_id = 300 },
	{ config_id = 86008, gadget_id = 70710133, pos = { x = 744.247, y = 780.765, z = 113.311 }, rot = { x = 39.741, y = 183.944, z = 343.459 }, level = 32, area_id = 300 },
	{ config_id = 86025, gadget_id = 70360001, pos = { x = 704.575, y = 774.292, z = 128.428 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 300 },
	{ config_id = 86031, gadget_id = 70360001, pos = { x = 706.142, y = 790.264, z = 98.141 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 300 },
	{ config_id = 86037, gadget_id = 70360001, pos = { x = 744.238, y = 780.767, z = 113.274 }, rot = { x = 0.000, y = 288.994, z = 0.000 }, level = 32, area_id = 300 },
	{ config_id = 86041, gadget_id = 70900039, pos = { x = 701.561, y = 775.854, z = 103.238 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStop, persistent = true, area_id = 300 },
	{ config_id = 86042, gadget_id = 70900051, pos = { x = 714.050, y = 774.308, z = 124.313 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStop, persistent = true, area_id = 300 },
	{ config_id = 86043, gadget_id = 70900008, pos = { x = 733.031, y = 774.707, z = 113.524 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStop, persistent = true, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1086018, name = "ANY_GADGET_DIE_86018", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_86018", action = "action_EVENT_ANY_GADGET_DIE_86018" },
	{ config_id = 1086020, name = "ANY_GADGET_DIE_86020", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_86020", action = "action_EVENT_ANY_GADGET_DIE_86020" },
	{ config_id = 1086022, name = "ANY_GADGET_DIE_86022", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_86022", action = "action_EVENT_ANY_GADGET_DIE_86022" },
	{ config_id = 1086026, name = "GADGET_CREATE_86026", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_86026", action = "action_EVENT_GADGET_CREATE_86026", trigger_count = 0 },
	{ config_id = 1086027, name = "SELECT_OPTION_86027", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_86027", action = "action_EVENT_SELECT_OPTION_86027" },
	{ config_id = 1086032, name = "GADGET_CREATE_86032", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_86032", action = "action_EVENT_GADGET_CREATE_86032", trigger_count = 0 },
	{ config_id = 1086033, name = "SELECT_OPTION_86033", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_86033", action = "action_EVENT_SELECT_OPTION_86033" },
	{ config_id = 1086038, name = "GADGET_CREATE_86038", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_86038", action = "action_EVENT_GADGET_CREATE_86038", trigger_count = 0 },
	{ config_id = 1086039, name = "SELECT_OPTION_86039", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_86039", action = "action_EVENT_SELECT_OPTION_86039" },
	{ config_id = 1086040, name = "GADGET_STATE_CHANGE_86040", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_86040", action = "action_EVENT_GADGET_STATE_CHANGE_86040" },
	{ config_id = 1086044, name = "GADGET_STATE_CHANGE_86044", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_86044", action = "action_EVENT_GADGET_STATE_CHANGE_86044" }
}

-- 变量
variables = {
	{ config_id = 1, name = "leave", value = 0, no_refresh = true },
	{ config_id = 2, name = "done", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 86002, gadget_id = 70360001, pos = { x = 686.522, y = 778.966, z = 100.253 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 300 },
		{ config_id = 86003, gadget_id = 70710133, pos = { x = 686.569, y = 778.971, z = 100.227 }, rot = { x = 0.000, y = 25.420, z = 0.000 }, level = 32, area_id = 300 },
		{ config_id = 86005, gadget_id = 70710133, pos = { x = 719.081, y = 784.107, z = 123.813 }, rot = { x = 0.000, y = 244.777, z = 0.000 }, level = 32, area_id = 300 },
		{ config_id = 86007, gadget_id = 70710133, pos = { x = 728.225, y = 787.979, z = 92.390 }, rot = { x = 24.154, y = 295.718, z = 0.000 }, level = 32, area_id = 300 },
		{ config_id = 86012, gadget_id = 70710464, pos = { x = 712.127, y = 774.565, z = 113.320 }, rot = { x = 30.784, y = 155.019, z = 350.062 }, level = 32, area_id = 300 },
		{ config_id = 86013, gadget_id = 70710464, pos = { x = 712.563, y = 774.777, z = 113.952 }, rot = { x = 0.000, y = 98.574, z = 20.768 }, level = 32, area_id = 300 },
		{ config_id = 86014, gadget_id = 70710464, pos = { x = 711.431, y = 774.605, z = 113.856 }, rot = { x = 23.984, y = 275.048, z = 0.000 }, level = 32, area_id = 300 },
		{ config_id = 86015, gadget_id = 70710464, pos = { x = 711.706, y = 774.303, z = 113.338 }, rot = { x = 19.320, y = 214.454, z = 341.908 }, level = 32, area_id = 300 },
		{ config_id = 86016, gadget_id = 70710464, pos = { x = 712.446, y = 774.441, z = 113.432 }, rot = { x = 29.428, y = 129.797, z = 358.593 }, level = 32, area_id = 300 },
		{ config_id = 86017, gadget_id = 70710464, pos = { x = 711.975, y = 774.458, z = 114.565 }, rot = { x = 3.649, y = 3.209, z = 8.049 }, level = 32, area_id = 300 },
		{ config_id = 86028, gadget_id = 70360001, pos = { x = 719.062, y = 784.188, z = 123.789 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 300 },
		{ config_id = 86034, gadget_id = 70360001, pos = { x = 728.160, y = 788.126, z = 92.320 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 300 }
	},
	triggers = {
		{ config_id = 1086009, name = "GADGET_CREATE_86009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_86009", action = "action_EVENT_GADGET_CREATE_86009", trigger_count = 0 },
		{ config_id = 1086010, name = "SELECT_OPTION_86010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_86010", action = "action_EVENT_SELECT_OPTION_86010" },
		{ config_id = 1086011, name = "ANY_GADGET_DIE_86011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_86011", action = "action_EVENT_ANY_GADGET_DIE_86011" },
		{ config_id = 1086019, name = "ANY_GADGET_DIE_86019", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_86019", action = "action_EVENT_ANY_GADGET_DIE_86019" },
		{ config_id = 1086021, name = "ANY_GADGET_DIE_86021", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_86021", action = "action_EVENT_ANY_GADGET_DIE_86021" },
		{ config_id = 1086023, name = "VARIABLE_CHANGE_86023", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_86023", action = "action_EVENT_VARIABLE_CHANGE_86023" },
		{ config_id = 1086024, name = "GADGET_STATE_CHANGE_86024", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_86024", action = "action_EVENT_GADGET_STATE_CHANGE_86024" },
		{ config_id = 1086029, name = "GADGET_CREATE_86029", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_86029", action = "action_EVENT_GADGET_CREATE_86029", trigger_count = 0 },
		{ config_id = 1086030, name = "SELECT_OPTION_86030", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_86030", action = "action_EVENT_SELECT_OPTION_86030" },
		{ config_id = 1086035, name = "GADGET_CREATE_86035", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_86035", action = "action_EVENT_GADGET_CREATE_86035", trigger_count = 0 },
		{ config_id = 1086036, name = "SELECT_OPTION_86036", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_86036", action = "action_EVENT_SELECT_OPTION_86036" }
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
		gadgets = { 86001, 86004, 86006, 86008, 86025, 86031, 86037, 86041, 86042, 86043 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_86018", "ANY_GADGET_DIE_86020", "ANY_GADGET_DIE_86022", "GADGET_CREATE_86026", "SELECT_OPTION_86027", "GADGET_CREATE_86032", "SELECT_OPTION_86033", "GADGET_CREATE_86038", "SELECT_OPTION_86039", "GADGET_STATE_CHANGE_86040", "GADGET_STATE_CHANGE_86044" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
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
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_86018(context, evt)
	if 86004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_86018(context, evt)
	-- 将configid为 86042 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 86042, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 针对当前group内变量名为 "leave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "leave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_86020(context, evt)
	if 86006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_86020(context, evt)
	-- 将configid为 86041 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 86041, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 针对当前group内变量名为 "leave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "leave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_86022(context, evt)
	if 86008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_86022(context, evt)
	-- 将configid为 86043 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 86043, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 针对当前group内变量名为 "leave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "leave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_86026(context, evt)
	if 86025 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_86026(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {331}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_86027(context, evt)
	-- 判断是gadgetid 86025 option_id 331
	if 86025 ~= evt.param1 then
		return false	
	end
	
	if 331 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_86027(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 86025 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 86004 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_86032(context, evt)
	if 86031 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_86032(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {331}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_86033(context, evt)
	-- 判断是gadgetid 86031 option_id 331
	if 86031 ~= evt.param1 then
		return false	
	end
	
	if 331 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_86033(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 86031 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 86006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_86038(context, evt)
	if 86037 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_86038(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {331}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_86039(context, evt)
	-- 判断是gadgetid 86037 option_id 331
	if 86037 ~= evt.param1 then
		return false	
	end
	
	if 331 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_86039(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 86037 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 86008 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_86040(context, evt)
	if 86001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_86040(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 6075, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 调用提示id为 60010275 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010275) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_86044(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 166001086, 86041) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 166001086, 86042) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 166001086, 86043) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_86044(context, evt)
	-- 将configid为 86001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 86001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end