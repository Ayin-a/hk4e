-- 基础信息
local base_info = {
	group_id = 133314250
}

-- DEFS_MISCS
local JamshidRocks = 
{
    250001,
    250002,
    250003,
    250007,
    250008,
    250009,
    250010
}

local CorrectAnswer = 
{
    3,2,3,1,4,4,1
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
	-- 2-3 s
	[250001] = { config_id = 250001, gadget_id = 70290636, pos = { x = -706.384, y = 54.673, z = 4447.422 }, rot = { x = 0.000, y = 165.667, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	-- 3-2 s
	[250002] = { config_id = 250002, gadget_id = 70290637, pos = { x = -702.675, y = 54.861, z = 4447.967 }, rot = { x = 0.000, y = 182.154, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	-- 2-3 s
	[250003] = { config_id = 250003, gadget_id = 70290636, pos = { x = -699.296, y = 55.217, z = 4446.452 }, rot = { x = 0.000, y = 201.824, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	[250004] = { config_id = 250004, gadget_id = 70211121, pos = { x = -709.806, y = 58.560, z = 4426.798 }, rot = { x = 10.042, y = 22.006, z = 11.821 }, level = 26, drop_tag = "解谜高级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	-- 1-1 z
	[250007] = { config_id = 250007, gadget_id = 70290635, pos = { x = -693.895, y = 57.168, z = 4436.393 }, rot = { x = 6.458, y = 282.884, z = 347.965 }, level = 32, persistent = true, area_id = 32 },
	-- 1-4 r
	[250008] = { config_id = 250008, gadget_id = 70290635, pos = { x = -695.430, y = 57.765, z = 4433.436 }, rot = { x = 10.387, y = 304.150, z = 351.118 }, level = 32, persistent = true, area_id = 32 },
	-- 3-4 v
	[250009] = { config_id = 250009, gadget_id = 70290637, pos = { x = -716.184, y = 55.772, z = 4437.355 }, rot = { x = 0.227, y = 73.470, z = 10.099 }, level = 32, persistent = true, area_id = 32 },
	-- 3-1 h
	[250010] = { config_id = 250010, gadget_id = 70290637, pos = { x = -715.800, y = 55.320, z = 4439.928 }, rot = { x = 358.766, y = 82.363, z = 10.870 }, level = 32, persistent = true, area_id = 32 },
	[250011] = { config_id = 250011, gadget_id = 70290689, pos = { x = -707.227, y = 61.029, z = 4489.011 }, rot = { x = 17.514, y = 168.738, z = 0.499 }, level = 32, area_id = 32 },
	[250012] = { config_id = 250012, gadget_id = 70290689, pos = { x = -703.774, y = 60.864, z = 4489.914 }, rot = { x = 14.865, y = 186.766, z = 7.821 }, level = 32, area_id = 32 },
	[250013] = { config_id = 250013, gadget_id = 70290689, pos = { x = -700.020, y = 60.623, z = 4489.800 }, rot = { x = 17.748, y = 210.529, z = 13.545 }, level = 32, area_id = 32 },
	[250014] = { config_id = 250014, gadget_id = 70290683, pos = { x = -616.080, y = 79.169, z = 4393.090 }, rot = { x = 12.735, y = 309.784, z = 1.655 }, level = 32, area_id = 32 },
	[250015] = { config_id = 250015, gadget_id = 70290686, pos = { x = -616.577, y = 79.265, z = 4391.799 }, rot = { x = 5.781, y = 313.322, z = 4.484 }, level = 32, area_id = 32 },
	[250016] = { config_id = 250016, gadget_id = 70290691, pos = { x = -791.563, y = 67.115, z = 4415.474 }, rot = { x = 17.097, y = 42.487, z = 5.708 }, level = 32, area_id = 32 },
	[250017] = { config_id = 250017, gadget_id = 70290688, pos = { x = -793.084, y = 66.869, z = 4417.253 }, rot = { x = 15.503, y = 58.915, z = 2.315 }, level = 32, area_id = 32 },
	[250018] = { config_id = 250018, gadget_id = 70220103, pos = { x = -705.697, y = 58.471, z = 4438.976 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	[250019] = { config_id = 250019, gadget_id = 70220103, pos = { x = -678.508, y = 62.490, z = 4430.354 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	[250020] = { config_id = 250020, gadget_id = 70220103, pos = { x = -648.875, y = 69.840, z = 4412.292 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	[250021] = { config_id = 250021, gadget_id = 70220103, pos = { x = -625.443, y = 78.620, z = 4393.341 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	[250022] = { config_id = 250022, gadget_id = 70220103, pos = { x = -738.713, y = 60.193, z = 4433.761 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	[250023] = { config_id = 250023, gadget_id = 70220103, pos = { x = -769.201, y = 65.691, z = 4425.001 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	[250024] = { config_id = 250024, gadget_id = 70220103, pos = { x = -793.023, y = 71.156, z = 4415.480 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	[250026] = { config_id = 250026, gadget_id = 70220103, pos = { x = -702.404, y = 57.428, z = 4475.516 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
	-- 进圈创钩爪
	[250025] = { config_id = 250025, shape = RegionShape.SPHERE, radius = 12, pos = { x = -704.864, y = 56.145, z = 4438.313 }, area_id = 32 }
}

-- 触发器
triggers = {
	{ config_id = 1250005, name = "VARIABLE_CHANGE_250005", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_250005", action = "action_EVENT_VARIABLE_CHANGE_250005" },
	{ config_id = 1250006, name = "GROUP_LOAD_250006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_250006", action = "action_EVENT_GROUP_LOAD_250006", trigger_count = 0 },
	-- 进圈创钩爪
	{ config_id = 1250025, name = "ENTER_REGION_250025", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_250025", action = "action_EVENT_ENTER_REGION_250025", trigger_count = 0 }
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
		gadgets = { 250001, 250002, 250003, 250007, 250008, 250009, 250010, 250011, 250012, 250013, 250014, 250015, 250016, 250017, 250018 },
		regions = { 250025 },
		triggers = { "VARIABLE_CHANGE_250005", "GROUP_LOAD_250006", "ENTER_REGION_250025" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 250019, 250020, 250021, 250022, 250023, 250024, 250026 },
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
function condition_EVENT_VARIABLE_CHANGE_250005(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"is_success"为1
	if ScriptLib.GetGroupVariableValue(context, "is_success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_250005(context, evt)
	-- 创建id为250004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 250004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 250001 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 250001, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 250002 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 250002, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 250003 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 250003, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 250007 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 250007, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 250008 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 250008, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 250009 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 250009, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 250010 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 250010, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_250006(context, evt)
	-- 判断变量"is_success"为1
	if ScriptLib.GetGroupVariableValue(context, "is_success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_250006(context, evt)
	-- 创建id为250004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 250004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 250001 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 250001, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 250002 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 250002, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 250003 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 250003, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 250007 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 250007, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 250008 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 250008, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 250009 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 250009, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 250010 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 250010, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_250025(context, evt)
	if evt.param1 ~= 250025 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_250025(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133314250, 2)
	
	return 0
end

require "V3_4/JamshidRock"