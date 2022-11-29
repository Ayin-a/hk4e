-- 基础信息
local base_info = {
	group_id = 220000055
}

-- Trigger变量
local defs = {
	gadget_id_1 = 295,
	gadget_id_2 = 296,
	gadget_id_3 = 297,
	gadget_id_4 = 298,
	gadget_id_5 = 299,
	gadget_id_6 = 300,
	gadget_id_7 = 301,
	gadget_id_8 = 302,
	gadget_id_9 = 304,
	gadget_id_10 = 305,
	gadget_id_11 = 306,
	gadget_id_12 = 303
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
	{ config_id = 294, gadget_id = 70900236, pos = { x = -10.194, y = 3.587, z = 326.389 }, rot = { x = 0.000, y = 86.932, z = 0.000 }, level = 1 },
	{ config_id = 295, gadget_id = 70900236, pos = { x = -11.746, y = 3.829, z = 326.408 }, rot = { x = 0.000, y = 82.808, z = 0.000 }, level = 1 },
	{ config_id = 296, gadget_id = 70900236, pos = { x = -13.437, y = 4.053, z = 325.869 }, rot = { x = 0.000, y = 37.867, z = 0.000 }, level = 1 },
	{ config_id = 297, gadget_id = 70900236, pos = { x = -14.762, y = 4.194, z = 325.437 }, rot = { x = 0.000, y = 77.422, z = 0.000 }, level = 1 },
	{ config_id = 298, gadget_id = 70900236, pos = { x = -16.315, y = 4.392, z = 324.862 }, rot = { x = 0.000, y = 229.784, z = 0.000 }, level = 1 },
	{ config_id = 299, gadget_id = 70900236, pos = { x = -20.906, y = 4.994, z = 324.694 }, rot = { x = 0.000, y = 48.293, z = 0.000 }, level = 1 },
	{ config_id = 300, gadget_id = 70900236, pos = { x = -22.185, y = 5.151, z = 324.669 }, rot = { x = 0.000, y = 180.279, z = 0.000 }, level = 1 },
	{ config_id = 301, gadget_id = 70900236, pos = { x = -23.321, y = 5.290, z = 324.644 }, rot = { x = 0.000, y = 83.813, z = 0.000 }, level = 1 },
	{ config_id = 302, gadget_id = 70900236, pos = { x = -29.739, y = 5.959, z = 324.018 }, rot = { x = 0.000, y = 300.623, z = 0.000 }, level = 1 },
	{ config_id = 303, gadget_id = 70211031, pos = { x = -27.199, y = 5.596, z = 322.987 }, rot = { x = 0.000, y = 358.195, z = 0.000 }, level = 1, drop_tag = "战斗超级蒙德", showcutscene = true, isOneoff = true },
	{ config_id = 304, gadget_id = 70900236, pos = { x = -25.555, y = 5.523, z = 324.517 }, rot = { x = 0.000, y = 300.623, z = 0.000 }, level = 1 },
	{ config_id = 305, gadget_id = 70900236, pos = { x = -36.646, y = 5.568, z = 319.283 }, rot = { x = 0.000, y = 300.623, z = 0.000 }, level = 1 },
	{ config_id = 306, gadget_id = 70900236, pos = { x = -34.732, y = 5.338, z = 320.718 }, rot = { x = 0.000, y = 300.623, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000092, name = "GADGET_STATE_CHANGE_92", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_92", action = "action_EVENT_GADGET_STATE_CHANGE_92", trigger_count = 0 },
	{ config_id = 1000093, name = "CLIENT_EXECUTE_93", event = EventType.EVENT_CLIENT_EXECUTE, source = "MimosaTrigger", condition = "", action = "", trigger_count = 0 },
	{ config_id = 1000094, name = "GADGET_STATE_CHANGE_94", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_94", trigger_count = 0 },
	{ config_id = 1000095, name = "GADGET_STATE_CHANGE_95", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_95", action = "action_EVENT_GADGET_STATE_CHANGE_95", trigger_count = 0 }
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
		gadgets = { 294 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_92", "CLIENT_EXECUTE_93", "GADGET_STATE_CHANGE_94", "GADGET_STATE_CHANGE_95" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_92(context, evt)
	if 294 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_92(context, evt)
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
	
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = defs.gadget_id_9 }) then
	  return -1
	end
	
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = defs.gadget_id_10 }) then
	  return -1
	end
	
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = defs.gadget_id_11 }) then
	  return -1
	end
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ison", 1) then 
	return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_94(context, evt)
	local c_num_1 = ScriptLib.GetGroupVariableValue(context, "count")
	local c_num = c_num_1 + 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "count", c_num) then
	ScriptLib.PrintLog("c_num="..c_num)
	    return -1
	end
	
	if c_num == 12 then
	 if 0 ~= ScriptLib.CreateGadget(context, { config_id = defs.gadget_id_12 }) then
	ScriptLib.PrintLog("create")
	  return -1
	       end
	end
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_95(context, evt)
	if 294 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	-- 判断变量"ison"为1
	if ScriptLib.GetGroupVariableValue(context, "ison") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_95(context, evt)
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
	if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_id_9 }) then
		    return -1
		end
	if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_id_10 }) then
		    return -1
		end
	if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_id_11 }) then
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