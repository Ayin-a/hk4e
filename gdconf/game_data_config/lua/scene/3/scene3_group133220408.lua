-- 基础信息
local base_info = {
	group_id = 133220408
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
	{ config_id = 408001, gadget_id = 70290107, pos = { x = -2479.097, y = 216.672, z = -4625.760 }, rot = { x = 4.846, y = 55.741, z = 0.000 }, level = 27, persistent = true, area_id = 11 },
	{ config_id = 408002, gadget_id = 70500000, pos = { x = -2478.346, y = 216.824, z = -4625.251 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 9143, isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 408003, gadget_id = 70330092, pos = { x = -2479.558, y = 216.821, z = -4624.201 }, rot = { x = 357.324, y = 102.980, z = 357.585 }, level = 27, state = GadgetState.GearStart, persistent = true, area_id = 11 },
	{ config_id = 408006, gadget_id = 71700288, pos = { x = -2478.340, y = 216.825, z = -4625.248 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, isOneoff = true, persistent = true, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1408004, name = "USE_WIDGET_TOY_FOX_CAMERA_408004", event = EventType.EVENT_USE_WIDGET_TOY_FOX_CAMERA, source = "", condition = "condition_EVENT_USE_WIDGET_TOY_FOX_CAMERA_408004", action = "action_EVENT_USE_WIDGET_TOY_FOX_CAMERA_408004", trigger_count = 0 },
	{ config_id = 1408005, name = "GADGET_STATE_CHANGE_408005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_408005", action = "action_EVENT_GADGET_STATE_CHANGE_408005", trigger_count = 0 },
	{ config_id = 1408007, name = "GATHER_408007", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_408007", action = "action_EVENT_GATHER_408007", trigger_count = 0 }
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
		gadgets = { 408003 },
		regions = { },
		triggers = { "USE_WIDGET_TOY_FOX_CAMERA_408004", "GADGET_STATE_CHANGE_408005", "GATHER_408007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_USE_WIDGET_TOY_FOX_CAMERA_408004(context, evt)
	 local configId=ScriptLib.GetGadgetConfigId(context, { gadget_eid =evt.source_eid })
	if configId==408003 then
	return true
	end
	return false
end

-- 触发操作
function action_EVENT_USE_WIDGET_TOY_FOX_CAMERA_408004(context, evt)
	-- 创建id为408001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 408001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 408003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 408003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 调用提示id为 322072611 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 322072611) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_408005(context, evt)
	if 408001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_408005(context, evt)
	-- 创建id为408002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 408002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为408006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 408006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_408007(context, evt)
	if 408002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_408007(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133220408, EntityType.GADGET, 408006 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end