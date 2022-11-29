-- 基础信息
local base_info = {
	group_id = 133304101
}

-- Trigger变量
local defs = {
	active_step = 201,
	inactive_step = 0,
	gadget_array = {101001,101002,101003,101004},
	reset_gear_list = {}
}

-- DEFS_MISCS
local v = 0
local v_error = 0
local max_bit = #defs.gadget_array

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
	{ config_id = 101001, gadget_id = 70900050, pos = { x = -1477.446, y = 232.822, z = 2958.102 }, rot = { x = 354.799, y = 353.902, z = 358.912 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 101002, gadget_id = 70900050, pos = { x = -1449.665, y = 233.397, z = 2948.461 }, rot = { x = 12.127, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 101003, gadget_id = 70900050, pos = { x = -1441.089, y = 235.627, z = 2982.262 }, rot = { x = 355.280, y = 2.198, z = 347.607 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 101004, gadget_id = 70900050, pos = { x = -1426.176, y = 233.124, z = 2959.519 }, rot = { x = 356.839, y = 0.400, z = 351.034 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 101006, gadget_id = 70211101, pos = { x = -1436.746, y = 233.981, z = 2978.314 }, rot = { x = 0.000, y = 325.234, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1101007, name = "GADGET_STATE_CHANGE_101007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_101007", action = "action_EVENT_GADGET_STATE_CHANGE_101007", trigger_count = 0 },
	{ config_id = 1101008, name = "VARIABLE_CHANGE_101008", event = EventType.EVENT_VARIABLE_CHANGE, source = "gear_reset", condition = "", action = "action_EVENT_VARIABLE_CHANGE_101008", trigger_count = 0 },
	{ config_id = 1101009, name = "VARIABLE_CHANGE_101009", event = EventType.EVENT_VARIABLE_CHANGE, source = "trigger_output", condition = "condition_EVENT_VARIABLE_CHANGE_101009", action = "", trigger_count = 0 },
	{ config_id = 1101010, name = "VARIABLE_CHANGE_101010", event = EventType.EVENT_VARIABLE_CHANGE, source = "trigger_output", condition = "condition_EVENT_VARIABLE_CHANGE_101010", action = "action_EVENT_VARIABLE_CHANGE_101010", trigger_count = 0 },
	{ config_id = 1101017, name = "GROUP_LOAD_101017", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_101017", action = "action_EVENT_GROUP_LOAD_101017", trigger_count = 0 },
	{ config_id = 1101018, name = "GROUP_LOAD_101018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_101018", action = "action_EVENT_GROUP_LOAD_101018", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "sort", value = 0, no_refresh = false },
	{ config_id = 2, name = "gear_reset", value = 0, no_refresh = false },
	{ config_id = 3, name = "v_error", value = 0, no_refresh = false },
	{ config_id = 4, name = "trigger_output", value = 0, no_refresh = false },
	{ config_id = 5, name = "unlock", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 101005, gadget_id = 70230112, pos = { x = -1443.215, y = 239.917, z = 2985.605 }, rot = { x = 1.766, y = 21.489, z = 3.047 }, level = 30, state = GadgetState.GearStart, area_id = 21 },
		{ config_id = 101011, gadget_id = 70230112, pos = { x = -1444.327, y = 239.626, z = 2983.968 }, rot = { x = 3.089, y = 235.395, z = 145.007 }, level = 30, state = GadgetState.GearStart, area_id = 21 },
		{ config_id = 101012, gadget_id = 70230112, pos = { x = -1443.102, y = 238.820, z = 2984.594 }, rot = { x = 79.566, y = 66.720, z = 32.836 }, level = 30, state = GadgetState.GearStart, area_id = 21 },
		{ config_id = 101013, gadget_id = 70230112, pos = { x = -1425.272, y = 234.873, z = 2956.397 }, rot = { x = 15.158, y = 253.567, z = 1.163 }, level = 30, state = GadgetState.GearStart, area_id = 21 },
		{ config_id = 101014, gadget_id = 70230112, pos = { x = -1423.995, y = 235.201, z = 2956.948 }, rot = { x = 334.227, y = 73.805, z = 178.754 }, level = 30, state = GadgetState.GearStart, area_id = 21 },
		{ config_id = 101015, gadget_id = 70230112, pos = { x = -1424.544, y = 234.129, z = 2957.072 }, rot = { x = 65.875, y = 70.756, z = 177.253 }, level = 30, state = GadgetState.GearStart, area_id = 21 },
		{ config_id = 101016, gadget_id = 70230112, pos = { x = -1424.726, y = 235.893, z = 2956.142 }, rot = { x = 297.692, y = 251.123, z = 2.416 }, level = 30, state = GadgetState.GearStart, area_id = 21 },
		{ config_id = 101021, gadget_id = 70230112, pos = { x = -1452.900, y = 235.949, z = 2945.613 }, rot = { x = 0.000, y = 251.875, z = 2.307 }, level = 30, state = GadgetState.GearStart, area_id = 21 },
		{ config_id = 101022, gadget_id = 70230112, pos = { x = -1451.227, y = 235.405, z = 2945.597 }, rot = { x = 27.213, y = 113.025, z = 186.340 }, level = 30, state = GadgetState.GearStart, area_id = 21 },
		{ config_id = 101023, gadget_id = 70230112, pos = { x = -1475.748, y = 234.865, z = 2960.150 }, rot = { x = 8.135, y = 34.816, z = 354.786 }, level = 30, state = GadgetState.GearStart, area_id = 21 }
	}
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
		gadgets = { 101001, 101002, 101003, 101004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_101007", "VARIABLE_CHANGE_101008", "VARIABLE_CHANGE_101009", "VARIABLE_CHANGE_101010", "GROUP_LOAD_101017", "GROUP_LOAD_101018" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_101007(context, evt)
	for i=1,#defs.gadget_array do
		if defs.gadget_array[i] == evt.param2 then
			return true
		end
	end
	return false
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_101007(context, evt)
	if max_bit > 9 or max_bit <= 1 then
	    return -1
	end
	if evt.param1 == defs.active_step then
	        --操作顺序入栈
	        for i = 1,max_bit do
	                if defs.gadget_array[i] == evt.param2 then
	                        v = ScriptLib.GetGroupVariableValue(context, "sort")
	                        v = 10*v + i
	                        ScriptLib.SetGroupVariableValue(context, "sort", v)
	                        break 
	                end
	                if i == max_bit and defs.gadget_array[i] ~= evt.param2 then
	                        ScriptLib.SetGroupVariableValue(context, "v_error", 1)
	                        v = 10*v
	                end
	        end
	end
	--v的位数足够时进行出栈检测
	if v > 10^(max_bit-1) then
	        v_error = ScriptLib.GetGroupVariableValue(context, "v_error")
	        --v_error有问题时直接清空栈并重置
	        if 0 == v_error then
	                for i=max_bit,1,-1 do
	                        if v%10 ~= i then
	                                v_error = 1
	                                break
	                        end
	                        v = math.floor(v/10)
	                end
	        end
	        v = 0
	        if v_error ~= 1 then
	                v_error = -1
	        end
	        ScriptLib.SetGroupVariableValue(context, "sort", v) 
	        ScriptLib.SetGroupVariableValue(context, "gear_reset", v_error)
	        ScriptLib.SetGroupVariableValue(context, "v_error", 0)
	end
	return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_101008(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	if evt.param1 == 1 then
		if #defs.reset_gear_list == 0 then
	                        defs.reset_gear_list = suites[1].gadgets
		end
		for i=1,#defs.reset_gear_list do
			ScriptLib.SetGroupGadgetStateByConfigId(context, 0, defs.reset_gear_list[i], defs.inactive_step)
		end
		ScriptLib.SetGroupVariableValue(context, "trigger_output", -1)
	       	elseif -1 == evt.param1 then
		--外接标记
	 		ScriptLib.SetGroupVariableValue(context, "trigger_output", 1)
	        	end
	        --还原标记
	        ScriptLib.SetGroupVariableValue(context, "gear_reset", 0)
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_101009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	
	if evt.param1 == -1 then
		return true
	end
	return false
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_101010(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 > 0 then
		return true
	end
	return false
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_101010(context, evt)
	-- 将本组内变量名为 "unlock" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "unlock", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建id为101006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 101006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_101017(context, evt)
	-- 判断变量"unlock"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "unlock", 133304101) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_101017(context, evt)
	-- 创建id为101006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 101006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_101018(context, evt)
	-- 判断变量"unlock"为0
	if ScriptLib.GetGroupVariableValue(context, "unlock") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_101018(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133304101, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end