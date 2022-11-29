-- 基础信息
local base_info = {
	group_id = 133309681
}

-- Trigger变量
local defs = {
	active_step = 201,
	inactive_step = 0,
	gadget_array = {681001,681002,681003,681004},
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
	{ config_id = 681001, gadget_id = 70330400, pos = { x = -2997.900, y = 183.700, z = 5441.100 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 30, persistent = true, area_id = 27 },
	{ config_id = 681002, gadget_id = 70330400, pos = { x = -2987.900, y = 183.666, z = 5431.100 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 30, persistent = true, area_id = 27 },
	{ config_id = 681003, gadget_id = 70330400, pos = { x = -2987.900, y = 183.700, z = 5441.100 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 30, persistent = true, area_id = 27 },
	{ config_id = 681004, gadget_id = 70330400, pos = { x = -2997.900, y = 183.700, z = 5431.100 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 30, persistent = true, area_id = 27 },
	{ config_id = 681005, gadget_id = 70330432, pos = { x = -3005.067, y = 182.992, z = 5448.504 }, rot = { x = 0.000, y = 122.685, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 681006, gadget_id = 70211111, pos = { x = -2992.468, y = 182.992, z = 5445.131 }, rot = { x = 0.000, y = 178.038, z = 0.000 }, level = 26, drop_tag = "解谜中级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 },
	{ config_id = 681011, gadget_id = 70330432, pos = { x = -2979.535, y = 183.611, z = 5429.231 }, rot = { x = 299.308, y = 255.000, z = 180.000 }, level = 32, area_id = 27 },
	{ config_id = 681012, gadget_id = 70330432, pos = { x = -2982.213, y = 182.992, z = 5422.715 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 681013, gadget_id = 70330432, pos = { x = -2979.564, y = 182.992, z = 5448.014 }, rot = { x = 4.895, y = 225.446, z = 355.199 }, level = 32, area_id = 27 },
	{ config_id = 681014, gadget_id = 70330432, pos = { x = -2979.243, y = 182.672, z = 5446.210 }, rot = { x = 0.000, y = 262.792, z = 342.486 }, level = 32, area_id = 27 },
	{ config_id = 681015, gadget_id = 70330432, pos = { x = -2985.029, y = 182.920, z = 5448.913 }, rot = { x = 0.000, y = 234.839, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 681016, gadget_id = 70330432, pos = { x = -3005.435, y = 182.992, z = 5427.735 }, rot = { x = 0.000, y = 32.841, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 681017, gadget_id = 70330432, pos = { x = -3005.675, y = 183.299, z = 5424.695 }, rot = { x = 341.451, y = 47.585, z = 0.001 }, level = 32, area_id = 27 },
	{ config_id = 681018, gadget_id = 70330432, pos = { x = -2999.714, y = 182.992, z = 5423.443 }, rot = { x = 359.823, y = 19.195, z = 1.048 }, level = 32, area_id = 27 },
	{ config_id = 681019, gadget_id = 70330432, pos = { x = -3001.769, y = 183.251, z = 5428.368 }, rot = { x = 311.506, y = 75.278, z = -0.001 }, level = 32, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1681007, name = "GADGET_STATE_CHANGE_681007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_681007", action = "action_EVENT_GADGET_STATE_CHANGE_681007", trigger_count = 0 },
	{ config_id = 1681008, name = "VARIABLE_CHANGE_681008", event = EventType.EVENT_VARIABLE_CHANGE, source = "gear_reset", condition = "", action = "action_EVENT_VARIABLE_CHANGE_681008", trigger_count = 0 },
	{ config_id = 1681009, name = "VARIABLE_CHANGE_681009", event = EventType.EVENT_VARIABLE_CHANGE, source = "trigger_output", condition = "condition_EVENT_VARIABLE_CHANGE_681009", action = "", trigger_count = 0 },
	{ config_id = 1681010, name = "VARIABLE_CHANGE_681010", event = EventType.EVENT_VARIABLE_CHANGE, source = "trigger_output", condition = "condition_EVENT_VARIABLE_CHANGE_681010", action = "action_EVENT_VARIABLE_CHANGE_681010", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "sort", value = 0, no_refresh = true },
	{ config_id = 2, name = "gear_reset", value = 0, no_refresh = true },
	{ config_id = 3, name = "v_error", value = 0, no_refresh = true },
	{ config_id = 4, name = "trigger_output", value = 0, no_refresh = true }
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
		gadgets = { 681001, 681002, 681003, 681004, 681005, 681011, 681012, 681013, 681014, 681015, 681016, 681017, 681018, 681019 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_681007", "VARIABLE_CHANGE_681008", "VARIABLE_CHANGE_681009", "VARIABLE_CHANGE_681010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_681007(context, evt)
	for i=1,#defs.gadget_array do
		if defs.gadget_array[i] == evt.param2 then
			return true
		end
	end
	return false
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_681007(context, evt)
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
function action_EVENT_VARIABLE_CHANGE_681008(context, evt)
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
function condition_EVENT_VARIABLE_CHANGE_681009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	
	if evt.param1 == -1 then
		return true
	end
	return false
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_681010(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 > 0 then
		return true
	end
	return false
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_681010(context, evt)
	-- 将本组内变量名为 "isLocked" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "isLocked", 0, 133309505) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 创建id为681006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 681006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end