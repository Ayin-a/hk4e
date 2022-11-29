-- 基础信息
local base_info = {
	group_id = 133220125
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
	{ config_id = 125001, gadget_id = 70900380, pos = { x = -2471.527, y = 330.932, z = -4396.804 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 11 },
	{ config_id = 125002, gadget_id = 70900380, pos = { x = -2610.786, y = 424.601, z = -4455.785 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 11 },
	{ config_id = 125003, gadget_id = 70900380, pos = { x = -2498.345, y = 352.348, z = -4391.150 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 11 },
	{ config_id = 125004, gadget_id = 70900380, pos = { x = -2541.143, y = 348.298, z = -4396.271 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 11 },
	{ config_id = 125005, gadget_id = 70900380, pos = { x = -2568.185, y = 346.214, z = -4406.854 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 11 },
	{ config_id = 125006, gadget_id = 70900380, pos = { x = -2578.748, y = 361.754, z = -4411.431 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 11 },
	{ config_id = 125007, gadget_id = 70900380, pos = { x = -2587.729, y = 377.014, z = -4414.893 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 11 },
	{ config_id = 125008, gadget_id = 70900380, pos = { x = -2596.184, y = 391.283, z = -4417.824 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 11 },
	{ config_id = 125009, gadget_id = 70900380, pos = { x = -2553.607, y = 420.120, z = -4443.130 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 11 },
	{ config_id = 125010, gadget_id = 70330064, pos = { x = -2566.762, y = 412.677, z = -4436.896 }, rot = { x = 5.289, y = 44.489, z = 5.390 }, level = 27, persistent = true, interact_id = 35, area_id = 11 },
	{ config_id = 125011, gadget_id = 70900380, pos = { x = -2539.615, y = 427.982, z = -4450.652 }, rot = { x = 0.000, y = 359.599, z = 0.000 }, level = 27, persistent = true, area_id = 11 },
	{ config_id = 125012, gadget_id = 70330064, pos = { x = -2464.517, y = 322.866, z = -4395.978 }, rot = { x = 356.392, y = 222.234, z = 355.229 }, level = 27, persistent = true, interact_id = 35, area_id = 11 },
	{ config_id = 125018, gadget_id = 70330093, pos = { x = -2605.732, y = 396.459, z = -4428.270 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 125019, gadget_id = 70900380, pos = { x = -2613.115, y = 417.268, z = -4447.544 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 11 },
	{ config_id = 125020, gadget_id = 70900380, pos = { x = -2523.281, y = 429.065, z = -4453.938 }, rot = { x = 0.000, y = 347.860, z = 0.000 }, level = 27, persistent = true, area_id = 11 },
	{ config_id = 125021, gadget_id = 70900380, pos = { x = -2484.763, y = 344.972, z = -4393.098 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 11 },
	{ config_id = 125022, gadget_id = 70900380, pos = { x = -2515.541, y = 352.666, z = -4389.989 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 11 },
	{ config_id = 125023, gadget_id = 70900380, pos = { x = -2506.630, y = 429.548, z = -4451.023 }, rot = { x = 0.000, y = 347.860, z = 0.000 }, level = 27, persistent = true, area_id = 11 },
	{ config_id = 125024, gadget_id = 70900380, pos = { x = -2499.915, y = 429.771, z = -4436.741 }, rot = { x = 0.000, y = 347.860, z = 0.000 }, level = 27, persistent = true, area_id = 11 },
	{ config_id = 125025, gadget_id = 70900380, pos = { x = -2612.415, y = 406.343, z = -4435.019 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 11 },
	{ config_id = 125026, gadget_id = 70330064, pos = { x = -2559.142, y = 340.838, z = -4402.619 }, rot = { x = 0.350, y = 173.391, z = 346.096 }, level = 27, persistent = true, interact_id = 35, area_id = 11 },
	{ config_id = 125027, gadget_id = 70900380, pos = { x = -2499.943, y = 425.401, z = -4422.598 }, rot = { x = 0.000, y = 347.860, z = 0.000 }, level = 27, persistent = true, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1125015, name = "GADGET_STATE_CHANGE_125015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_125015", action = "action_EVENT_GADGET_STATE_CHANGE_125015", trigger_count = 0 },
	{ config_id = 1125016, name = "GADGET_STATE_CHANGE_125016", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_125016", action = "action_EVENT_GADGET_STATE_CHANGE_125016", trigger_count = 0 },
	{ config_id = 1125017, name = "GADGET_STATE_CHANGE_125017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_125017", action = "action_EVENT_GADGET_STATE_CHANGE_125017", trigger_count = 0 }
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
		gadgets = { 125010, 125012, 125018, 125026 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_125015", "GADGET_STATE_CHANGE_125016", "GADGET_STATE_CHANGE_125017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 125001, 125003, 125004, 125021, 125022 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 125002, 125005, 125006, 125007, 125008, 125019, 125025 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 125009, 125011, 125020, 125023, 125024, 125027 },
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
function condition_EVENT_GADGET_STATE_CHANGE_125015(context, evt)
	if 125012 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_125015(context, evt)
	-- 将configid为 125010 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 125010, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 125026 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 125026, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220125, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220125, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220125, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_125016(context, evt)
	if 125026 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_125016(context, evt)
	-- 将configid为 125010 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 125010, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 125012 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 125012, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220125, 3)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220125, 2)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220125, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_125017(context, evt)
	if 125010 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_125017(context, evt)
	-- 将configid为 125012 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 125012, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 125026 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 125026, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220125, 4)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220125, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220125, 3)
	
	return 0
end

require "V2_0/ElectricCore"