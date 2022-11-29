-- 基础信息
local base_info = {
	group_id = 133302215
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
	{ config_id = 215001, gadget_id = 70710160, pos = { x = -849.121, y = 150.294, z = 2411.813 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 215002, gadget_id = 70360001, pos = { x = -849.112, y = 150.280, z = 2411.798 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 215005, gadget_id = 70300118, pos = { x = -849.111, y = 150.554, z = 2411.839 }, rot = { x = 0.000, y = 276.534, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 215006, gadget_id = 70300203, pos = { x = -839.674, y = 150.280, z = 2414.569 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 24 },
	{ config_id = 215007, gadget_id = 70360001, pos = { x = -839.674, y = 150.280, z = 2414.569 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 215010, gadget_id = 70710160, pos = { x = -839.674, y = 150.280, z = 2414.569 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 215011, gadget_id = 70710812, pos = { x = -839.674, y = 150.586, z = 2414.569 }, rot = { x = 0.000, y = 141.703, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 215012, gadget_id = 70710136, pos = { x = -848.180, y = 151.050, z = 2415.426 }, rot = { x = 0.000, y = 110.252, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 215013, gadget_id = 70290017, pos = { x = -848.018, y = 151.069, z = 2415.298 }, rot = { x = 273.119, y = 110.252, z = 22.655 }, level = 1, area_id = 24 },
	{ config_id = 215014, gadget_id = 70710812, pos = { x = -849.111, y = 150.554, z = 2411.839 }, rot = { x = 0.000, y = 70.719, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 215015, gadget_id = 70710446, pos = { x = -848.102, y = 151.050, z = 2415.089 }, rot = { x = 0.000, y = 112.424, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 215016, gadget_id = 70360089, pos = { x = -848.047, y = 151.121, z = 2415.441 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 215017, gadget_id = 70360089, pos = { x = -848.175, y = 151.183, z = 2415.121 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1215003, name = "GADGET_CREATE_215003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_215003", action = "action_EVENT_GADGET_CREATE_215003", trigger_count = 0 },
	{ config_id = 1215004, name = "SELECT_OPTION_215004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_215004", action = "action_EVENT_SELECT_OPTION_215004", trigger_count = 0 },
	{ config_id = 1215008, name = "GADGET_CREATE_215008", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_215008", action = "action_EVENT_GADGET_CREATE_215008", trigger_count = 0 },
	{ config_id = 1215009, name = "SELECT_OPTION_215009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_215009", action = "action_EVENT_SELECT_OPTION_215009", trigger_count = 0 }
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
		-- description = 初始花盆,
		monsters = { },
		gadgets = { 215001, 215012, 215014, 215016 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 花盆交互,
		monsters = { },
		gadgets = { 215001, 215002, 215005, 215012, 215014 },
		regions = { },
		triggers = { "GADGET_CREATE_215003", "SELECT_OPTION_215004" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 室外花盆交互,
		monsters = { },
		gadgets = { 215006, 215007, 215012 },
		regions = { },
		triggers = { "GADGET_CREATE_215008", "SELECT_OPTION_215009" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 室外花盆未开,
		monsters = { },
		gadgets = { 215010, 215011, 215012, 215013 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 室外花盆开,
		monsters = { },
		gadgets = { 215010, 215011, 215015, 215017 },
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
function condition_EVENT_GADGET_CREATE_215003(context, evt)
	if 215002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_215003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133302215, 215002, {779}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_215004(context, evt)
	-- 判断是gadgetid 215002 option_id 779
	if 215002 ~= evt.param1 then
		return false	
	end
	
	if 779 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_215004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7303403") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133302215, EntityType.GADGET, 215005 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133302215, EntityType.GADGET, 215001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133302215, EntityType.GADGET, 215014 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 删除指定group： 133302215 ；指定config：215002；物件身上指定option：779；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133302215, 215002, 779) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_215008(context, evt)
	if 215007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_215008(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133302215, 215007, {35}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_215009(context, evt)
	-- 判断是gadgetid 215007 option_id 35
	if 215007 ~= evt.param1 then
		return false	
	end
	
	if 35 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_215009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7303404") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133302215, EntityType.GADGET, 215006 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 删除指定group： 133302215 ；指定config：215007；物件身上指定option：35；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133302215, 215007, 35) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end