-- 基础信息
local base_info = {
	group_id = 133312087
}

-- Trigger变量
local defs = {
	max_gear = 4,
	timer = 20,
	group_id = 133312087,
	gadget_1 = 87001,
	gadget_2 = 87002,
	gadget_3 = 87003,
	gadget_4 = 87005,
	gadget_chest = 87004
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
	{ config_id = 87001, gadget_id = 70330400, pos = { x = -3185.070, y = 29.350, z = 4289.970 }, rot = { x = 0.000, y = 11.938, z = 0.000 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 28 },
	{ config_id = 87002, gadget_id = 70330400, pos = { x = -3162.547, y = 22.123, z = 4277.717 }, rot = { x = 0.000, y = 329.000, z = 0.000 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 28 },
	{ config_id = 87003, gadget_id = 70330400, pos = { x = -3145.665, y = 19.003, z = 4292.277 }, rot = { x = 0.000, y = 59.100, z = 0.000 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 28 },
	{ config_id = 87004, gadget_id = 70211132, pos = { x = -3167.521, y = 12.110, z = 4302.738 }, rot = { x = 0.362, y = 208.391, z = 1.213 }, level = 26, drop_tag = "解谜超级须弥", state = GadgetState.ChestLocked, showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 28 },
	{ config_id = 87005, gadget_id = 70330400, pos = { x = -3170.734, y = 11.660, z = 4301.025 }, rot = { x = 0.000, y = 353.536, z = 0.000 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 28 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1087006, name = "GADGET_STATE_CHANGE_87006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_87006", action = "action_EVENT_GADGET_STATE_CHANGE_87006", trigger_count = 0 },
	{ config_id = 1087007, name = "GROUP_LOAD_87007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_87007", action = "action_EVENT_GROUP_LOAD_87007", trigger_count = 0 },
	{ config_id = 1087009, name = "VARIABLE_CHANGE_87009", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_87009", action = "action_EVENT_VARIABLE_CHANGE_87009" },
	{ config_id = 1087010, name = "VARIABLE_CHANGE_87010", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_87010", action = "action_EVENT_VARIABLE_CHANGE_87010" },
	{ config_id = 1087011, name = "VARIABLE_CHANGE_87011", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_87011", action = "action_EVENT_VARIABLE_CHANGE_87011" },
	{ config_id = 1087012, name = "GADGET_STATE_CHANGE_87012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_87012", action = "action_EVENT_GADGET_STATE_CHANGE_87012" }
}

-- 变量
variables = {
	{ config_id = 1, name = "active_count", value = 0, no_refresh = false },
	{ config_id = 2, name = "finish003", value = 0, no_refresh = true },
	{ config_id = 3, name = "finish002", value = 0, no_refresh = true },
	{ config_id = 4, name = "finish001", value = 0, no_refresh = true }
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
		gadgets = { 87001, 87002, 87003, 87004, 87005 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_87006", "GROUP_LOAD_87007", "VARIABLE_CHANGE_87009", "VARIABLE_CHANGE_87010", "VARIABLE_CHANGE_87011", "GADGET_STATE_CHANGE_87012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_87006(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133312087, 87001) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133312087, 87002) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133312087, 87003) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133312087, 87005) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_87006(context, evt)
	-- 将configid为 87004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 87004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_87007(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133312087, 87001) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133312087, 87002) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133312087, 87003) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133312087, 87005) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_87007(context, evt)
	-- 将configid为 87004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 87004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_87009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"finish003"为1
	if ScriptLib.GetGroupVariableValue(context, "finish003") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_87009(context, evt)
	-- 将configid为 87003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 87003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_87010(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"finish002"为1
	if ScriptLib.GetGroupVariableValue(context, "finish002") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_87010(context, evt)
	-- 将configid为 87002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 87002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_87011(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"finish001"为1
	if ScriptLib.GetGroupVariableValue(context, "finish001") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_87011(context, evt)
	-- 将configid为 87001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 87001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_87012(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133312087, 87001) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133312087, 87002) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133312087, 87003) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_87012(context, evt)
	-- 将configid为 87005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 87005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end