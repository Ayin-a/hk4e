-- 基础信息
local base_info = {
	group_id = 220000054
}

-- Trigger变量
local defs = {
	gadget_id_1 = 282,
	gadget_id_2 = 283,
	gadget_id_3 = 284,
	gadget_id_4 = 285,
	gadget_id_5 = 286,
	gadget_id_6 = 287,
	gadget_id_7 = 288,
	gadget_id_8 = 289,
	gadget_id_9 = 291,
	gadget_id_10 = 292,
	gadget_id_11 = 293,
	gadget_id_12 = 290
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
	{ config_id = 281, gadget_id = 70900236, pos = { x = 6.223, y = 1.296, z = 284.763 }, rot = { x = 0.000, y = 86.932, z = 0.000 }, level = 1 },
	{ config_id = 282, gadget_id = 70900236, pos = { x = 4.556, y = 1.443, z = 284.776 }, rot = { x = 0.000, y = 82.808, z = 0.000 }, level = 1 },
	{ config_id = 283, gadget_id = 70900236, pos = { x = 2.788, y = 1.698, z = 284.836 }, rot = { x = 0.000, y = 37.867, z = 0.000 }, level = 1 },
	{ config_id = 284, gadget_id = 70900236, pos = { x = 1.541, y = 1.856, z = 283.805 }, rot = { x = 0.000, y = 77.422, z = 0.000 }, level = 1 },
	{ config_id = 285, gadget_id = 70900236, pos = { x = 0.682, y = 2.010, z = 282.462 }, rot = { x = 0.000, y = 229.784, z = 0.000 }, level = 1 },
	{ config_id = 286, gadget_id = 70900236, pos = { x = -0.788, y = 2.387, z = 281.089 }, rot = { x = 0.000, y = 48.293, z = 0.000 }, level = 1 },
	{ config_id = 287, gadget_id = 70900236, pos = { x = -2.762, y = 2.838, z = 280.118 }, rot = { x = 0.000, y = 180.279, z = 0.000 }, level = 1 },
	{ config_id = 288, gadget_id = 70900236, pos = { x = -4.370, y = 3.090, z = 281.326 }, rot = { x = 0.000, y = 83.813, z = 0.000 }, level = 1 },
	{ config_id = 289, gadget_id = 70900236, pos = { x = -5.324, y = 3.168, z = 282.414 }, rot = { x = 0.000, y = 300.623, z = 0.000 }, level = 1 },
	{ config_id = 290, gadget_id = 70211031, pos = { x = 1.568, y = 1.795, z = 289.323 }, rot = { x = 0.000, y = 314.709, z = 0.000 }, level = 1, drop_tag = "战斗超级蒙德", showcutscene = true, isOneoff = true },
	{ config_id = 291, gadget_id = 70900236, pos = { x = -3.850, y = 2.924, z = 284.918 }, rot = { x = 0.000, y = 300.623, z = 0.000 }, level = 1 },
	{ config_id = 292, gadget_id = 70900236, pos = { x = -2.225, y = 2.588, z = 286.410 }, rot = { x = 0.000, y = 300.623, z = 0.000 }, level = 1 },
	{ config_id = 293, gadget_id = 70900236, pos = { x = -0.306, y = 2.214, z = 285.580 }, rot = { x = 0.000, y = 300.623, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000088, name = "GADGET_STATE_CHANGE_88", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_88", action = "action_EVENT_GADGET_STATE_CHANGE_88", trigger_count = 0 },
	{ config_id = 1000089, name = "CLIENT_EXECUTE_89", event = EventType.EVENT_CLIENT_EXECUTE, source = "MimosaTrigger", condition = "", action = "", trigger_count = 0 },
	{ config_id = 1000090, name = "GADGET_STATE_CHANGE_90", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_90", trigger_count = 0 },
	{ config_id = 1000091, name = "GADGET_STATE_CHANGE_91", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_91", action = "action_EVENT_GADGET_STATE_CHANGE_91", trigger_count = 0 }
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
		gadgets = { 281 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_88", "CLIENT_EXECUTE_89", "GADGET_STATE_CHANGE_90", "GADGET_STATE_CHANGE_91" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_88(context, evt)
	if 281 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_88(context, evt)
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
function action_EVENT_GADGET_STATE_CHANGE_90(context, evt)
	local c_num_1 = ScriptLib.GetGroupVariableValue(context, "count")
	local c_num = c_num_1 + 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "count", c_num) then
	    return -1
	end
	
	if c_num == 12 then
	 if 0 ~= ScriptLib.CreateGadget(context, { config_id = defs.gadget_id_12 }) then
	  return -1
	       end
	end
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_91(context, evt)
	if 281 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	-- 判断变量"ison"为1
	if ScriptLib.GetGroupVariableValue(context, "ison") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_91(context, evt)
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