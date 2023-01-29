-- 基础信息
local base_info = {
	group_id = 133307343
}

-- DEFS_MISCS
local JamshidRocks = 
{
    343001,
    343002,
    343003,
    343007,
    343014
}

local CorrectAnswer = 
{
    2,3,2,2,4
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
	-- 2-2 h
	[343001] = { config_id = 343001, gadget_id = 70290636, pos = { x = -1772.859, y = -14.448, z = 5536.120 }, rot = { x = 3.591, y = 233.192, z = 1.775 }, level = 32, state = GadgetState.GearAction1, persistent = true, area_id = 27 },
	-- 2-3 s
	[343002] = { config_id = 343002, gadget_id = 70290636, pos = { x = -1771.210, y = -13.965, z = 5533.997 }, rot = { x = 0.000, y = 257.951, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	-- 2-2 h
	[343003] = { config_id = 343003, gadget_id = 70290636, pos = { x = -1768.795, y = -13.927, z = 5528.192 }, rot = { x = 4.670, y = 194.596, z = 344.893 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 27 },
	[343004] = { config_id = 343004, gadget_id = 70211101, pos = { x = -1769.617, y = -10.828, z = 5535.247 }, rot = { x = 0.000, y = 235.858, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 },
	-- 3-2 s
	[343007] = { config_id = 343007, gadget_id = 70290637, pos = { x = -1767.045, y = -13.700, z = 5527.221 }, rot = { x = 10.514, y = 231.125, z = 7.746 }, level = 32, persistent = true, area_id = 27 },
	[343008] = { config_id = 343008, gadget_id = 70290688, pos = { x = -1826.204, y = -6.230, z = 5545.253 }, rot = { x = 6.030, y = 101.505, z = 350.899 }, level = 32, area_id = 27 },
	[343009] = { config_id = 343009, gadget_id = 70290689, pos = { x = -1827.171, y = -4.427, z = 5547.664 }, rot = { x = 19.325, y = 113.708, z = 354.542 }, level = 32, area_id = 27 },
	[343010] = { config_id = 343010, gadget_id = 70290688, pos = { x = -1793.988, y = -0.235, z = 5572.601 }, rot = { x = 14.092, y = 198.960, z = 1.485 }, level = 32, area_id = 27 },
	[343011] = { config_id = 343011, gadget_id = 70290689, pos = { x = -1792.841, y = -0.290, z = 5572.703 }, rot = { x = 20.193, y = 177.981, z = 5.057 }, level = 32, area_id = 27 },
	[343012] = { config_id = 343012, gadget_id = 70330406, pos = { x = -1793.628, y = -0.871, z = 5572.630 }, rot = { x = 357.188, y = 326.573, z = 11.421 }, level = 32, persistent = true, area_id = 27 },
	[343013] = { config_id = 343013, gadget_id = 70220103, pos = { x = -1778.532, y = -11.948, z = 5532.267 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	-- 3-4 v
	[343014] = { config_id = 343014, gadget_id = 70290637, pos = { x = -1772.078, y = -14.688, z = 5531.706 }, rot = { x = 0.000, y = 279.173, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	[343015] = { config_id = 343015, gadget_id = 70290691, pos = { x = -1825.298, y = -6.818, z = 5549.353 }, rot = { x = 0.758, y = 128.924, z = 12.671 }, level = 32, area_id = 27 },
	[343016] = { config_id = 343016, gadget_id = 70220103, pos = { x = -1810.182, y = 3.319, z = 5544.250 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1343005, name = "VARIABLE_CHANGE_343005", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_343005", action = "action_EVENT_VARIABLE_CHANGE_343005" },
	{ config_id = 1343006, name = "GROUP_LOAD_343006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_343006", action = "action_EVENT_GROUP_LOAD_343006", trigger_count = 0 }
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
		gadgets = { 343001, 343002, 343003, 343007, 343008, 343009, 343010, 343011, 343012, 343013, 343014, 343015, 343016 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_343005", "GROUP_LOAD_343006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_343005(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"is_success"为1
	if ScriptLib.GetGroupVariableValue(context, "is_success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_343005(context, evt)
	-- 创建id为343004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 343004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 343001 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 343001, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 343002 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 343002, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 343003 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 343003, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 343007 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 343007, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 343014 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 343014, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_343006(context, evt)
	-- 判断变量"is_success"为1
	if ScriptLib.GetGroupVariableValue(context, "is_success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_343006(context, evt)
	-- 创建id为343004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 343004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 343001 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 343001, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 343002 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 343002, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 343003 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 343003, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 343007 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 343007, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 343014 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 343014, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V3_4/JamshidRock"