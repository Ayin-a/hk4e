-- 基础信息
local base_info = {
	group_id = 220000057
}

-- Trigger变量
local defs = {
	gadget_id_1 = 318,
	gadget_id_2 = 319,
	gadget_id_3 = 320,
	gadget_id_4 = 321,
	gadget_id_5 = 322,
	gadget_id_6 = 323,
	gadget_id_7 = 324,
	gadget_id_8 = 325,
	gadget_id_9 = 326
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
	{ config_id = 317, gadget_id = 70900236, pos = { x = -30.598, y = 10.365, z = 304.329 }, rot = { x = 0.000, y = 86.932, z = 0.000 }, level = 1 },
	{ config_id = 318, gadget_id = 70900236, pos = { x = -29.965, y = 10.512, z = 301.963 }, rot = { x = 0.000, y = 82.808, z = 0.000 }, level = 1 },
	{ config_id = 319, gadget_id = 70900236, pos = { x = -28.922, y = 10.727, z = 299.326 }, rot = { x = 0.000, y = 37.867, z = 0.000 }, level = 1 },
	{ config_id = 320, gadget_id = 70900236, pos = { x = -28.353, y = 11.054, z = 296.915 }, rot = { x = 0.000, y = 77.422, z = 0.000 }, level = 1 },
	{ config_id = 321, gadget_id = 70900236, pos = { x = -28.685, y = 12.861, z = 294.146 }, rot = { x = 317.546, y = 229.784, z = 0.000 }, level = 1 },
	{ config_id = 322, gadget_id = 70900236, pos = { x = -27.099, y = 10.500, z = 288.204 }, rot = { x = 0.000, y = 48.293, z = 0.000 }, level = 1 },
	{ config_id = 323, gadget_id = 70900236, pos = { x = -27.464, y = 10.523, z = 292.298 }, rot = { x = 0.000, y = 180.279, z = 0.000 }, level = 1 },
	{ config_id = 324, gadget_id = 70900236, pos = { x = -27.286, y = 10.730, z = 290.826 }, rot = { x = 0.000, y = 83.813, z = 0.000 }, level = 1 },
	{ config_id = 325, gadget_id = 70900236, pos = { x = -27.343, y = 10.614, z = 289.472 }, rot = { x = 0.000, y = 300.623, z = 0.000 }, level = 1 },
	{ config_id = 326, gadget_id = 70211031, pos = { x = -20.119, y = 10.053, z = 288.711 }, rot = { x = 0.000, y = 314.709, z = 0.000 }, level = 1, drop_tag = "战斗超级蒙德", showcutscene = true, isOneoff = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000100, name = "GADGET_STATE_CHANGE_100", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_100", action = "action_EVENT_GADGET_STATE_CHANGE_100", trigger_count = 0 },
	{ config_id = 1000101, name = "CLIENT_EXECUTE_101", event = EventType.EVENT_CLIENT_EXECUTE, source = "MimosaTrigger", condition = "", action = "", trigger_count = 0 },
	{ config_id = 1000102, name = "GADGET_STATE_CHANGE_102", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_102", trigger_count = 0 },
	{ config_id = 1000103, name = "GADGET_STATE_CHANGE_103", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_103", action = "action_EVENT_GADGET_STATE_CHANGE_103", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "count", value = 0, no_refresh = false },
	{ config_id = 2, name = "ison", value = 0, no_refresh = false }
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
		gadgets = { 317 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_100", "CLIENT_EXECUTE_101", "GADGET_STATE_CHANGE_102", "GADGET_STATE_CHANGE_103" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_100(context, evt)
	if 317 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_100(context, evt)
	-- 创建id为269的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = defs.gadget_id_1 }) then
	  return -1
	end
	
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = defs.gadget_id_2 }) then
	  return -1
	end
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = defs.gadget_id_3 }) then
	  return -1
	end
	
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = defs.gadget_id_4 }) then
	  return -1
	end
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = defs.gadget_id_5 }) then
	  return -1
	end
	
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = defs.gadget_id_6 }) then
	  return -1
	end
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = defs.gadget_id_7 }) then
	  return -1
	end
	
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = defs.gadget_id_8 }) then
	  return -1
	end
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ison", 1) then 
	return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_102(context, evt)
	local c_num_1 = ScriptLib.GetGroupVariableValue(context, "count")
	local c_num = c_num_1 + 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "count", c_num) then
	ScriptLib.PrintLog("c_num="..c_num)
	    return -1
	end
	
	if c_num == 9 then
	 if 0 ~= ScriptLib.CreateGadget(context, { config_id = defs.gadget_id_9 }) then
	ScriptLib.PrintLog("create")
	  return -1
	       end
	end
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_103(context, evt)
	if 317 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	-- 判断变量"ison"为1
	if ScriptLib.GetGroupVariableValue(context, "ison") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_103(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_id_1 }) then
		    return -1
		end
		
	
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_id_2 }) then
		    return -1
		end
		
	
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_id_3 }) then
		    return -1
		end
		
	
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_id_4 }) then
		    return -1
		end
		
	
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_id_5 }) then
		    return -1
		end
		
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_id_6 }) then
		    return -1
		end
		
	
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_id_7 }) then
		    return -1
		end
		
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_id_8 }) then
		    return -1
		end
		
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ison", 0) then 
	return -1
	end
	
		
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "count", 0) then 
	return -1
	end
	
	
	return 0
end