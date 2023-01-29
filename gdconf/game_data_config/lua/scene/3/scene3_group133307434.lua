-- 基础信息
local base_info = {
	group_id = 133307434
}

-- Trigger变量
local defs = {
	active_step = 201,
	inactive_step = 0,
	gadget_array = {434001,434002,434003,434004,434005},
	reset_gear_list = {},
	point_sum = 12,
	route_2 = 330700141,
	gadget_seelie = 434011
}

-- DEFS_MISCS
local v = 0
local v_error = 0
local max_bit = #defs.gadget_array
defs.final_point = defs.point_sum - 1

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
	{ config_id = 434001, gadget_id = 70310001, pos = { x = -694.776, y = 203.272, z = 4943.136 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 32 },
	{ config_id = 434002, gadget_id = 70310001, pos = { x = -704.085, y = 211.662, z = 4957.059 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 32 },
	{ config_id = 434003, gadget_id = 70310001, pos = { x = -678.520, y = 211.274, z = 4960.468 }, rot = { x = 0.000, y = 358.124, z = 0.000 }, level = 30, persistent = true, area_id = 32 },
	{ config_id = 434004, gadget_id = 70310001, pos = { x = -688.959, y = 211.555, z = 4955.027 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 32 },
	{ config_id = 434005, gadget_id = 70310001, pos = { x = -701.269, y = 211.751, z = 4950.862 }, rot = { x = 356.218, y = 359.892, z = 3.273 }, level = 30, persistent = true, area_id = 32 },
	{ config_id = 434006, gadget_id = 70211111, pos = { x = -696.254, y = 211.886, z = 4955.068 }, rot = { x = 0.000, y = 308.910, z = 0.000 }, level = 26, drop_tag = "解谜中级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	{ config_id = 434011, gadget_id = 70710010, pos = { x = -694.465, y = 205.390, z = 4943.094 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 330700141, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1434007, name = "GADGET_STATE_CHANGE_434007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_434007", action = "action_EVENT_GADGET_STATE_CHANGE_434007", trigger_count = 0 },
	{ config_id = 1434008, name = "VARIABLE_CHANGE_434008", event = EventType.EVENT_VARIABLE_CHANGE, source = "gear_reset", condition = "", action = "action_EVENT_VARIABLE_CHANGE_434008", trigger_count = 0 },
	{ config_id = 1434009, name = "VARIABLE_CHANGE_434009", event = EventType.EVENT_VARIABLE_CHANGE, source = "trigger_output", condition = "condition_EVENT_VARIABLE_CHANGE_434009", action = "", trigger_count = 0 },
	{ config_id = 1434010, name = "VARIABLE_CHANGE_434010", event = EventType.EVENT_VARIABLE_CHANGE, source = "trigger_output", condition = "condition_EVENT_VARIABLE_CHANGE_434010", action = "action_EVENT_VARIABLE_CHANGE_434010", trigger_count = 0 },
	{ config_id = 1434012, name = "AVATAR_NEAR_PLATFORM_434012", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_434012", action = "action_EVENT_AVATAR_NEAR_PLATFORM_434012" }
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
		gadgets = { 434001, 434002, 434003, 434004, 434005, 434011 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_434007", "VARIABLE_CHANGE_434008", "VARIABLE_CHANGE_434009", "VARIABLE_CHANGE_434010", "AVATAR_NEAR_PLATFORM_434012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_434007(context, evt)
	for i=1,#defs.gadget_array do
		if defs.gadget_array[i] == evt.param2 then
			return true
		end
	end
	return false
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_434007(context, evt)
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
function action_EVENT_VARIABLE_CHANGE_434008(context, evt)
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
function condition_EVENT_VARIABLE_CHANGE_434009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	
	if evt.param1 == -1 then
		return true
	end
	return false
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_434010(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 > 0 then
		return true
	end
	return false
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_434010(context, evt)
	-- 创建id为434006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 434006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_434012(context, evt)
	if defs.gadget_seelie ~= evt.param1 then
	return false
	end
	
	if defs.route_2 ~= evt.param2 then
	return false
	end
	
	if defs.final_point == evt.param3 then
	return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_AVATAR_NEAR_PLATFORM_434012(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 434011) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end