-- 基础信息
local base_info = {
	group_id = 133211023
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
	{ config_id = 23001, gadget_id = 70710221, pos = { x = -3969.275, y = 200.537, z = -1080.827 }, rot = { x = 3.305, y = 255.850, z = 1.274 }, level = 1, state = GadgetState.GearStart, persistent = true, area_id = 17 },
	{ config_id = 23006, gadget_id = 70710785, pos = { x = -3968.802, y = 200.499, z = -1085.178 }, rot = { x = 0.184, y = 359.659, z = 7.127 }, level = 1, area_id = 17 },
	{ config_id = 23007, gadget_id = 70710785, pos = { x = -3974.409, y = 200.262, z = -1077.227 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 23008, gadget_id = 70360001, pos = { x = -3974.409, y = 200.262, z = -1077.227 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 17 },
	{ config_id = 23009, gadget_id = 70360001, pos = { x = -3968.802, y = 200.780, z = -1085.178 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 17 },
	{ config_id = 23016, gadget_id = 70300118, pos = { x = -3974.409, y = 200.511, z = -1077.227 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 17 },
	{ config_id = 23017, gadget_id = 70300118, pos = { x = -3968.802, y = 200.780, z = -1085.178 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 17 },
	{ config_id = 23019, gadget_id = 70710780, pos = { x = -3974.636, y = 200.510, z = -1077.368 }, rot = { x = 0.000, y = 333.230, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 23020, gadget_id = 70710780, pos = { x = -3974.186, y = 200.510, z = -1077.117 }, rot = { x = 0.000, y = 152.751, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 23021, gadget_id = 70710781, pos = { x = -3968.840, y = 200.745, z = -1085.083 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 23022, gadget_id = 70710784, pos = { x = -3971.319, y = 200.321, z = -1089.356 }, rot = { x = 6.342, y = 268.221, z = 357.693 }, level = 1, area_id = 17 },
	{ config_id = 23023, gadget_id = 70710522, pos = { x = -3972.120, y = 200.346, z = -1077.508 }, rot = { x = 0.784, y = 335.004, z = 0.234 }, level = 1, area_id = 17 },
	{ config_id = 23024, gadget_id = 70710780, pos = { x = -3972.097, y = 201.447, z = -1077.650 }, rot = { x = 0.000, y = 166.400, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 23025, gadget_id = 70710781, pos = { x = -3970.479, y = 201.351, z = -1089.359 }, rot = { x = 0.000, y = 146.381, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 23026, gadget_id = 70710521, pos = { x = -3968.525, y = 200.548, z = -1088.139 }, rot = { x = 4.028, y = 346.867, z = 4.097 }, level = 1, area_id = 17 },
	{ config_id = 23027, gadget_id = 70710710, pos = { x = -3968.690, y = 201.635, z = -1088.056 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1023002, name = "QUEST_START_23002", event = EventType.EVENT_QUEST_START, source = "1903602", condition = "", action = "action_EVENT_QUEST_START_23002", trigger_count = 0 },
	{ config_id = 1023003, name = "QUEST_START_23003", event = EventType.EVENT_QUEST_START, source = "1903607", condition = "", action = "action_EVENT_QUEST_START_23003", trigger_count = 0 },
	{ config_id = 1023010, name = "QUEST_START_23010", event = EventType.EVENT_QUEST_START, source = "1903901", condition = "", action = "action_EVENT_QUEST_START_23010", trigger_count = 0 },
	{ config_id = 1023011, name = "QUEST_START_23011", event = EventType.EVENT_QUEST_START, source = "1903902", condition = "", action = "action_EVENT_QUEST_START_23011", trigger_count = 0 },
	{ config_id = 1023012, name = "SELECT_OPTION_23012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_23012", action = "action_EVENT_SELECT_OPTION_23012", trigger_count = 0 },
	{ config_id = 1023013, name = "GADGET_CREATE_23013", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_23013", action = "action_EVENT_GADGET_CREATE_23013", trigger_count = 0 },
	{ config_id = 1023014, name = "SELECT_OPTION_23014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_23014", action = "action_EVENT_SELECT_OPTION_23014", trigger_count = 0 },
	{ config_id = 1023015, name = "GADGET_CREATE_23015", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_23015", action = "action_EVENT_GADGET_CREATE_23015", trigger_count = 0 }
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
		gadgets = { 23001, 23006, 23007, 23019, 23020, 23021, 23022, 23023, 23024, 23025, 23026, 23027 },
		regions = { },
		triggers = { "QUEST_START_23002", "QUEST_START_23003", "QUEST_START_23010", "QUEST_START_23011", "SELECT_OPTION_23012", "GADGET_CREATE_23013", "SELECT_OPTION_23014", "GADGET_CREATE_23015" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_START_23002(context, evt)
	-- 将configid为 23001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 23001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_23003(context, evt)
	-- 将configid为 23001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 23001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_23010(context, evt)
	-- 创建id为23008的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 23008 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为23016的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 23016 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_23011(context, evt)
	-- 创建id为23009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 23009 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为23017的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 23017 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_23012(context, evt)
	-- 判断是gadgetid 23008 option_id 64
	if 23008 ~= evt.param1 then
		return false	
	end
	
	if 64 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_23012(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13321102301") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133211023, EntityType.GADGET, 23008 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133211023, EntityType.GADGET, 23016 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_23013(context, evt)
	if 23008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_23013(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133211023, 23008, {64}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_23014(context, evt)
	-- 判断是gadgetid 23009 option_id 64
	if 23009 ~= evt.param1 then
		return false	
	end
	
	if 64 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_23014(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13321102302") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133211023, EntityType.GADGET, 23009 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133211023, EntityType.GADGET, 23017 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_23015(context, evt)
	if 23009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_23015(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133211023, 23009, {64}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end