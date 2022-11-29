-- 基础信息
local base_info = {
	group_id = 220000056
}

-- Trigger变量
local defs = {
	gadget_id_1 = 308,
	gadget_id_2 = 309,
	gadget_id_3 = 310,
	gadget_id_4 = 311,
	gadget_id_5 = 312,
	gadget_id_6 = 313,
	gadget_id_7 = 314,
	gadget_id_8 = 315,
	gadget_id_9 = 316
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
	{ config_id = 307, gadget_id = 70900236, pos = { x = -36.170, y = 15.418, z = 300.593 }, rot = { x = 0.000, y = 86.932, z = 0.000 }, level = 1 },
	{ config_id = 308, gadget_id = 70900236, pos = { x = -37.849, y = 15.524, z = 300.637 }, rot = { x = 0.000, y = 82.808, z = 0.000 }, level = 1 },
	{ config_id = 309, gadget_id = 70900236, pos = { x = -39.540, y = 15.440, z = 301.681 }, rot = { x = 0.000, y = 37.867, z = 0.000 }, level = 1 },
	{ config_id = 310, gadget_id = 70900236, pos = { x = -40.080, y = 15.333, z = 303.199 }, rot = { x = 0.000, y = 77.422, z = 0.000 }, level = 1 },
	{ config_id = 311, gadget_id = 70900236, pos = { x = -39.847, y = 15.195, z = 304.871 }, rot = { x = 0.000, y = 229.784, z = 0.000 }, level = 1 },
	{ config_id = 312, gadget_id = 70900236, pos = { x = -40.554, y = 14.217, z = 311.530 }, rot = { x = 0.000, y = 90.845, z = 0.000 }, level = 1 },
	{ config_id = 313, gadget_id = 70900236, pos = { x = -40.657, y = 14.018, z = 315.562 }, rot = { x = 0.000, y = 180.279, z = 0.000 }, level = 1 },
	{ config_id = 314, gadget_id = 70900236, pos = { x = -40.955, y = 13.745, z = 319.891 }, rot = { x = 0.000, y = 83.813, z = 0.000 }, level = 1 },
	{ config_id = 315, gadget_id = 70900236, pos = { x = -41.394, y = 13.500, z = 324.472 }, rot = { x = 0.000, y = 300.623, z = 0.000 }, level = 1 },
	{ config_id = 316, gadget_id = 70211031, pos = { x = -41.033, y = 15.748, z = 299.127 }, rot = { x = 0.000, y = 26.680, z = 0.000 }, level = 1, drop_tag = "战斗超级蒙德", showcutscene = true, isOneoff = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000096, name = "GADGET_STATE_CHANGE_96", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_96", action = "action_EVENT_GADGET_STATE_CHANGE_96", trigger_count = 0 },
	{ config_id = 1000097, name = "CLIENT_EXECUTE_97", event = EventType.EVENT_CLIENT_EXECUTE, source = "MimosaTrigger", condition = "", action = "", trigger_count = 0 },
	{ config_id = 1000098, name = "GADGET_STATE_CHANGE_98", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_98", trigger_count = 0 },
	{ config_id = 1000099, name = "GADGET_STATE_CHANGE_99", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_99", action = "action_EVENT_GADGET_STATE_CHANGE_99", trigger_count = 0 }
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
		gadgets = { 307 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_96", "CLIENT_EXECUTE_97", "GADGET_STATE_CHANGE_98", "GADGET_STATE_CHANGE_99" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_96(context, evt)
	if 307 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_96(context, evt)
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
function action_EVENT_GADGET_STATE_CHANGE_98(context, evt)
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
function condition_EVENT_GADGET_STATE_CHANGE_99(context, evt)
	if 307 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	-- 判断变量"ison"为1
	if ScriptLib.GetGroupVariableValue(context, "ison") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_99(context, evt)
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