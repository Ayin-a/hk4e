-- 基础信息
local base_info = {
	group_id = 133209098
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
	{ config_id = 98001, gadget_id = 70710733, pos = { x = -2571.027, y = 211.419, z = -3880.445 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 11 },
	{ config_id = 98002, gadget_id = 70360001, pos = { x = -2571.054, y = 211.225, z = -3880.422 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 98006, gadget_id = 70300118, pos = { x = -2571.018, y = 211.212, z = -3880.428 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1098003, name = "GADGET_CREATE_98003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_98003", action = "action_EVENT_GADGET_CREATE_98003", trigger_count = 0 },
	{ config_id = 1098004, name = "SELECT_OPTION_98004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_98004", action = "action_EVENT_SELECT_OPTION_98004", trigger_count = 0 },
	{ config_id = 1098005, name = "GROUP_LOAD_98005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_98005", action = "action_EVENT_GROUP_LOAD_98005", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "check3", value = 0, no_refresh = false }
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
		gadgets = { 98001, 98002, 98006 },
		regions = { },
		triggers = { "GADGET_CREATE_98003", "SELECT_OPTION_98004", "GROUP_LOAD_98005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_98003(context, evt)
	if 98002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_98003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133209098, 98002, {68}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_98004(context, evt)
	-- 判断是gadgetid 98002 option_id 68
	if 98002 ~= evt.param1 then
		return false	
	end
	
	if 68 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_98004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1332090663") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "check3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "check3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133209098, EntityType.GADGET, 98001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133209098, EntityType.GADGET, 98006 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 删除指定group： 133209098 ；指定config：98002；物件身上指定option：68；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133209098, 98002, 68) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133209098, EntityType.GADGET, 98002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_98005(context, evt)
	-- 判断变量"check3"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "check3", 133209098) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_98005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1332090663") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end