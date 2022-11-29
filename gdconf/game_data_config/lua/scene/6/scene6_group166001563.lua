-- 基础信息
local base_info = {
	group_id = 166001563
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
	{ config_id = 563001, gadget_id = 70290204, pos = { x = 440.724, y = 191.556, z = 703.693 }, rot = { x = 18.879, y = 3.194, z = 13.216 }, level = 32, area_id = 300 },
	{ config_id = 563002, gadget_id = 70290233, pos = { x = 437.255, y = 192.732, z = 709.134 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 300 },
	{ config_id = 563004, gadget_id = 70290266, pos = { x = 440.848, y = 191.605, z = 703.446 }, rot = { x = 19.646, y = 345.435, z = 4.803 }, level = 1, area_id = 300 },
	{ config_id = 563006, gadget_id = 70360001, pos = { x = 440.700, y = 192.174, z = 703.960 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 563007, gadget_id = 71700288, pos = { x = 440.903, y = 192.067, z = 703.757 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1563003, name = "ANY_GADGET_DIE_563003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_563003", action = "action_EVENT_ANY_GADGET_DIE_563003", trigger_count = 0 },
	{ config_id = 1563005, name = "TIME_AXIS_PASS_563005", event = EventType.EVENT_TIME_AXIS_PASS, source = "born", condition = "condition_EVENT_TIME_AXIS_PASS_563005", action = "action_EVENT_TIME_AXIS_PASS_563005", trigger_count = 0 },
	{ config_id = 1563008, name = "GADGET_CREATE_563008", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_563008", action = "action_EVENT_GADGET_CREATE_563008", trigger_count = 0 },
	{ config_id = 1563009, name = "SELECT_OPTION_563009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_563009", action = "action_EVENT_SELECT_OPTION_563009", trigger_count = 0 },
	{ config_id = 1563011, name = "QUEST_FINISH_563011", event = EventType.EVENT_QUEST_FINISH, source = "7106122", condition = "", action = "action_EVENT_QUEST_FINISH_563011", trigger_count = 0 }
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
		gadgets = { 563001, 563002, 563004 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_563003", "TIME_AXIS_PASS_563005", "GADGET_CREATE_563008", "SELECT_OPTION_563009", "QUEST_FINISH_563011" },
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
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_563003(context, evt)
	if 563001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_563003(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 563002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 创建标识为"born"，时间节点为{4}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "born", {4}, false)
	
	
	-- 创建id为563006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 563006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为563007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 563007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_563005(context, evt)
	if "born" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_563005(context, evt)
	-- 创建id为563001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 563001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为563002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 563002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 563006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 563007 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_563008(context, evt)
	if 563006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_563008(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 166001563, 563006, {406}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_563009(context, evt)
	-- 判断是gadgetid 563006 option_id 406
	if 563006 ~= evt.param1 then
		return false	
	end
	
	if 406 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_563009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "166001563") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_563011(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 166001578, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 166001563, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end