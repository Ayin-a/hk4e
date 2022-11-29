-- 基础信息
local base_info = {
	group_id = 133220683
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
	{ config_id = 683001, gadget_id = 70360001, pos = { x = -2966.404, y = 201.776, z = -4211.029 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 683002, gadget_id = 70360001, pos = { x = -2959.142, y = 201.577, z = -4201.873 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 683003, gadget_id = 70360001, pos = { x = -2952.487, y = 200.997, z = -4210.108 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 683004, gadget_id = 70710516, pos = { x = -2966.233, y = 201.766, z = -4211.055 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 683005, gadget_id = 70710516, pos = { x = -2958.978, y = 201.564, z = -4202.110 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 683006, gadget_id = 70710516, pos = { x = -2952.803, y = 200.970, z = -4210.228 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 683013, gadget_id = 70300118, pos = { x = -2966.375, y = 201.772, z = -4211.051 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 11, is_enable_interact = false },
	{ config_id = 683014, gadget_id = 70300118, pos = { x = -2959.248, y = 201.575, z = -4201.843 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 11, is_enable_interact = false },
	{ config_id = 683015, gadget_id = 70300118, pos = { x = -2952.611, y = 200.981, z = -4210.076 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 11, is_enable_interact = false }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1683007, name = "GADGET_CREATE_683007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_683007", action = "action_EVENT_GADGET_CREATE_683007", trigger_count = 0 },
	{ config_id = 1683008, name = "GADGET_CREATE_683008", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_683008", action = "action_EVENT_GADGET_CREATE_683008", trigger_count = 0 },
	{ config_id = 1683009, name = "GADGET_CREATE_683009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_683009", action = "action_EVENT_GADGET_CREATE_683009", trigger_count = 0 },
	{ config_id = 1683010, name = "SELECT_OPTION_683010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_683010", action = "action_EVENT_SELECT_OPTION_683010", trigger_count = 0 },
	{ config_id = 1683011, name = "SELECT_OPTION_683011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_683011", action = "action_EVENT_SELECT_OPTION_683011", trigger_count = 0 },
	{ config_id = 1683012, name = "SELECT_OPTION_683012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_683012", action = "action_EVENT_SELECT_OPTION_683012", trigger_count = 0 },
	{ config_id = 1683016, name = "GROUP_REFRESH_683016", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_683016", trigger_count = 0 }
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
		gadgets = { 683001, 683002, 683003, 683013, 683014, 683015 },
		regions = { },
		triggers = { "GADGET_CREATE_683007", "GADGET_CREATE_683008", "GADGET_CREATE_683009", "SELECT_OPTION_683010", "SELECT_OPTION_683011", "SELECT_OPTION_683012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_683007(context, evt)
	if 683001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_683007(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220683, 683001, {88}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_683008(context, evt)
	if 683002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_683008(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220683, 683002, {88}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_683009(context, evt)
	if 683003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_683009(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220683, 683003, {88}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_683010(context, evt)
	-- 判断是gadgetid 683001 option_id 88
	if 683001 ~= evt.param1 then
		return false	
	end
	
	if 88 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_683010(context, evt)
	-- 创建id为683004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 683004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133220683") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133220683, EntityType.GADGET, 683001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133220683, EntityType.GADGET, 683013 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_683011(context, evt)
	-- 判断是gadgetid 683002 option_id 88
	if 683002 ~= evt.param1 then
		return false	
	end
	
	if 88 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_683011(context, evt)
	-- 创建id为683005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 683005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133220683") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133220683, EntityType.GADGET, 683002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133220683, EntityType.GADGET, 683014 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_683012(context, evt)
	-- 判断是gadgetid 683003 option_id 88
	if 683003 ~= evt.param1 then
		return false	
	end
	
	if 88 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_683012(context, evt)
	-- 创建id为683006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 683006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133220683") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133220683, EntityType.GADGET, 683003 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133220683, EntityType.GADGET, 683015 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_683016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220683, 683001, {88}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220683, 683002, {88}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220683, 683003, {88}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end