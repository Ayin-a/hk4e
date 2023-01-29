-- 基础信息
local base_info = {
	group_id = 133307281
}

-- Trigger变量
local defs = {
	active_step = 201,
	inactive_step = 0,
	gadget_array = {281001,281003,281008,281009,281007,281002,281005},
	reset_gear_list = {},
	point_sum = 13,
	route_2 = 330700128,
	gadget_seelie = 315002
}

-- DEFS_MISCS
local JamshidRocks = 
{
    281001,
    281002,
    281003,
    281007,
    281008,
    281009,
    281005
}

local CorrectAnswer = 
{
    2,2,2,2,2,2,2
}
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
	-- 1-2-F
	[281001] = { config_id = 281001, gadget_id = 70290635, pos = { x = -1232.442, y = 84.330, z = 5154.229 }, rot = { x = 0.000, y = 271.457, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	-- 2-2-H
	[281002] = { config_id = 281002, gadget_id = 70290636, pos = { x = -1235.622, y = 82.401, z = 5159.920 }, rot = { x = 0.000, y = 204.104, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	-- 3-2-S
	[281003] = { config_id = 281003, gadget_id = 70290637, pos = { x = -1242.422, y = 84.028, z = 5151.554 }, rot = { x = 0.000, y = 70.621, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	[281004] = { config_id = 281004, gadget_id = 70211121, pos = { x = -1225.881, y = 85.334, z = 5153.818 }, rot = { x = 355.580, y = 91.101, z = 18.473 }, level = 26, drop_tag = "解谜高级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	-- 2-2-H
	[281005] = { config_id = 281005, gadget_id = 70290636, pos = { x = -1237.777, y = 83.822, z = 5154.129 }, rot = { x = 0.000, y = 337.914, z = 0.000 }, level = 32, area_id = 32 },
	-- 1-2-F
	[281007] = { config_id = 281007, gadget_id = 70290635, pos = { x = -1241.545, y = 82.084, z = 5158.948 }, rot = { x = 0.000, y = 140.449, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	-- 2-2-H
	[281008] = { config_id = 281008, gadget_id = 70290636, pos = { x = -1239.184, y = 85.689, z = 5147.148 }, rot = { x = 0.000, y = 21.615, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	-- 3-2-S
	[281009] = { config_id = 281009, gadget_id = 70290637, pos = { x = -1233.984, y = 85.654, z = 5149.208 }, rot = { x = 0.000, y = 314.475, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	[281014] = { config_id = 281014, gadget_id = 70720217, pos = { x = -1232.321, y = 86.756, z = 5154.476 }, rot = { x = 0.000, y = 280.418, z = 0.000 }, level = 32, route_id = 330700128, area_id = 32 },
	[281015] = { config_id = 281015, gadget_id = 70290684, pos = { x = -1232.716, y = 78.021, z = 5179.041 }, rot = { x = 0.000, y = 283.529, z = 0.000 }, level = 32, area_id = 32 },
	[281016] = { config_id = 281016, gadget_id = 70290688, pos = { x = -1234.074, y = 77.639, z = 5180.645 }, rot = { x = 0.000, y = 218.649, z = 0.000 }, level = 32, area_id = 32 },
	[281017] = { config_id = 281017, gadget_id = 70290689, pos = { x = -1233.641, y = 78.290, z = 5177.424 }, rot = { x = 0.000, y = 328.754, z = 0.000 }, level = 32, area_id = 32 },
	[281022] = { config_id = 281022, gadget_id = 70290684, pos = { x = -1261.577, y = 74.235, z = 5187.568 }, rot = { x = 0.000, y = 155.791, z = 0.000 }, level = 32, area_id = 32 },
	[281023] = { config_id = 281023, gadget_id = 70290688, pos = { x = -1259.553, y = 75.694, z = 5183.315 }, rot = { x = 0.000, y = 32.223, z = 0.000 }, level = 32, area_id = 32 },
	[281024] = { config_id = 281024, gadget_id = 70290689, pos = { x = -1262.121, y = 74.889, z = 5184.931 }, rot = { x = 0.000, y = 98.063, z = 0.000 }, level = 32, area_id = 32 },
	[281025] = { config_id = 281025, gadget_id = 70290688, pos = { x = -1256.729, y = 79.157, z = 5168.498 }, rot = { x = 0.000, y = 97.778, z = 0.000 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
	[281026] = { config_id = 281026, shape = RegionShape.SPHERE, radius = 5.7, pos = { x = -1232.011, y = 85.201, z = 5154.120 }, area_id = 32 }
}

-- 触发器
triggers = {
	{ config_id = 1281006, name = "GROUP_LOAD_281006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_281006", action = "action_EVENT_GROUP_LOAD_281006", trigger_count = 0 },
	{ config_id = 1281018, name = "GADGET_STATE_CHANGE_281018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_281018", action = "action_EVENT_GADGET_STATE_CHANGE_281018", trigger_count = 0 },
	{ config_id = 1281019, name = "VARIABLE_CHANGE_281019", event = EventType.EVENT_VARIABLE_CHANGE, source = "gear_reset", condition = "", action = "action_EVENT_VARIABLE_CHANGE_281019", trigger_count = 0 },
	-- 失败后执行
	{ config_id = 1281020, name = "VARIABLE_CHANGE_281020", event = EventType.EVENT_VARIABLE_CHANGE, source = "trigger_output", condition = "condition_EVENT_VARIABLE_CHANGE_281020", action = "", trigger_count = 0 },
	-- 成功后执行
	{ config_id = 1281021, name = "VARIABLE_CHANGE_281021", event = EventType.EVENT_VARIABLE_CHANGE, source = "trigger_output", condition = "condition_EVENT_VARIABLE_CHANGE_281021", action = "action_EVENT_VARIABLE_CHANGE_281021", trigger_count = 0 },
	{ config_id = 1281026, name = "ENTER_REGION_281026", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_281026", action = "action_EVENT_ENTER_REGION_281026" }
}

-- 变量
variables = {
	{ config_id = 1, name = "sort", value = 0, no_refresh = true },
	{ config_id = 2, name = "gear_reset", value = 0, no_refresh = true },
	{ config_id = 3, name = "v_error", value = 0, no_refresh = true },
	{ config_id = 4, name = "trigger_output", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 281010, gadget_id = 70290635, pos = { x = -1273.956, y = 79.124, z = 5166.404 }, rot = { x = 0.000, y = 39.073, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
		{ config_id = 281011, gadget_id = 70290636, pos = { x = -1237.777, y = 83.822, z = 5154.129 }, rot = { x = 0.000, y = 337.914, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
		{ config_id = 281012, gadget_id = 70290637, pos = { x = -1263.260, y = 79.359, z = 5182.133 }, rot = { x = 0.000, y = 231.653, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
		{ config_id = 281013, gadget_id = 70290637, pos = { x = -1259.697, y = 84.189, z = 5165.451 }, rot = { x = 0.000, y = 320.699, z = 0.000 }, level = 32, persistent = true, area_id = 32 }
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
		gadgets = { 281001, 281002, 281003, 281005, 281007, 281008, 281009, 281014, 281015, 281016, 281017, 281022, 281023, 281024, 281025 },
		regions = { 281026 },
		triggers = { "GROUP_LOAD_281006", "GADGET_STATE_CHANGE_281018", "VARIABLE_CHANGE_281019", "VARIABLE_CHANGE_281020", "VARIABLE_CHANGE_281021", "ENTER_REGION_281026" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GROUP_LOAD_281006(context, evt)
	-- 判断变量"is_success"为1
	if ScriptLib.GetGroupVariableValue(context, "is_success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_281006(context, evt)
	-- 创建id为281004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 281004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 281001 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 281001, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 281002 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 281002, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 281003 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 281003, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 281005 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 281005, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 281007 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 281007, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 281008 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 281008, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 281009 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 281009, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133307281, EntityType.GADGET, 281014 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_281018(context, evt)
	for i=1,#defs.gadget_array do
		if defs.gadget_array[i] == evt.param2 then
			return true
		end
	end
	return false
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_281018(context, evt)
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
function action_EVENT_VARIABLE_CHANGE_281019(context, evt)
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
function condition_EVENT_VARIABLE_CHANGE_281020(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	
	if evt.param1 == -1 then
		return true
	end
	return false
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_281021(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 > 0 and ScriptLib.GetGroupVariableValue(context, "is_success") == 1 then
		return true
	end
	
	-- 判断变量"is_success"为1
	if ScriptLib.GetGroupVariableValue(context, "is_success") ~= 1 or evt.param1 <= 0  then
	        return false
	end
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_281021(context, evt)
	-- 创建id为281004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 281004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 281001 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 281001, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 281002 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 281002, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 281003 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 281003, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 281007 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 281007, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 281008 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 281008, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 281009 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 281009, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 281005 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 281005, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133307281, EntityType.GADGET, 281014 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_281026(context, evt)
	if evt.param1 ~= 281026 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_281026(context, evt)
	ScriptLib.StartPlatform(context, 281014)
	
	return 0
end

require "V3_4/JamshidRock"