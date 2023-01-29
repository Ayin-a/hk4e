-- 基础信息
local base_info = {
	group_id = 133313171
}

-- Trigger变量
local defs = {
	group_id = 133313171,
	gadget_riddle_hint = 171001,
	gadget_riddle_1 = 171002,
	gadget_riddle_2 = 171003,
	gadget_riddle_3 = 171004,
	gadget_riddle_4 = 171005,
	gadget_chest = 171006
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
	{ config_id = 171001, gadget_id = 70330336, pos = { x = -749.922, y = -281.788, z = 5994.950 }, rot = { x = 0.000, y = 199.238, z = 0.000 }, level = 19, persistent = true, area_id = 32 },
	{ config_id = 171002, gadget_id = 70330404, pos = { x = -738.643, y = -265.732, z = 5969.870 }, rot = { x = 5.238, y = 272.192, z = 323.191 }, level = 19, persistent = true, area_id = 32 },
	{ config_id = 171003, gadget_id = 70330404, pos = { x = -795.809, y = -251.178, z = 5979.230 }, rot = { x = 18.769, y = 326.341, z = 336.427 }, level = 19, persistent = true, area_id = 32 },
	-- 3
	{ config_id = 171004, gadget_id = 70330404, pos = { x = -776.032, y = -268.765, z = 6038.617 }, rot = { x = 6.344, y = 231.900, z = 3.682 }, level = 19, state = GadgetState.GearStop, persistent = true, area_id = 32 },
	-- 4
	{ config_id = 171005, gadget_id = 70330404, pos = { x = -690.055, y = -278.634, z = 6010.673 }, rot = { x = 0.000, y = 14.100, z = 24.009 }, level = 19, state = GadgetState.GearStop, persistent = true, area_id = 32 },
	{ config_id = 171006, gadget_id = 70211122, pos = { x = -749.937, y = -281.339, z = 5994.961 }, rot = { x = 0.000, y = 270.400, z = 0.000 }, level = 26, drop_tag = "解谜高级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	{ config_id = 171011, gadget_id = 70330340, pos = { x = -738.490, y = -267.084, z = 5968.369 }, rot = { x = 8.344, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1171007, name = "GADGET_STATE_CHANGE_171007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_171007", action = "action_EVENT_GADGET_STATE_CHANGE_171007", trigger_count = 0 },
	{ config_id = 1171008, name = "VARIABLE_CHANGE_171008", event = EventType.EVENT_VARIABLE_CHANGE, source = "State_Flag", condition = "condition_EVENT_VARIABLE_CHANGE_171008", action = "action_EVENT_VARIABLE_CHANGE_171008", trigger_count = 0 },
	{ config_id = 1171009, name = "GROUP_LOAD_171009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_171009", trigger_count = 0 },
	-- 解锁第三个方碑
	{ config_id = 1171010, name = "VARIABLE_CHANGE_171010", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_171010", action = "action_EVENT_VARIABLE_CHANGE_171010" },
	{ config_id = 1171012, name = "ANY_GADGET_DIE_171012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_171012", action = "action_EVENT_ANY_GADGET_DIE_171012" },
	-- 解锁第四个方碑
	{ config_id = 1171013, name = "VARIABLE_CHANGE_171013", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_171013", action = "action_EVENT_VARIABLE_CHANGE_171013" },
	-- 解锁保底
	{ config_id = 1171014, name = "GROUP_LOAD_171014", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_171014", action = "action_EVENT_GROUP_LOAD_171014", trigger_count = 0 },
	-- 解锁保底
	{ config_id = 1171015, name = "GROUP_LOAD_171015", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_171015", action = "action_EVENT_GROUP_LOAD_171015", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "State_Flag", value = 0, no_refresh = true },
	{ config_id = 2, name = "unlock_3", value = 0, no_refresh = true },
	{ config_id = 4, name = "unlock_4", value = 0, no_refresh = false }
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
		gadgets = { 171001, 171003, 171004, 171005, 171006, 171011 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_171007", "VARIABLE_CHANGE_171008", "GROUP_LOAD_171009", "VARIABLE_CHANGE_171010", "ANY_GADGET_DIE_171012", "VARIABLE_CHANGE_171013", "GROUP_LOAD_171014", "GROUP_LOAD_171015" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_171007(context, evt)
	if evt.param2 ~= defs.gadget_riddle_1 and evt.param2 ~= defs.gadget_riddle_2 and evt.param2 ~= defs.gadget_riddle_3 and evt.param2 ~= defs.gadget_riddle_4 then
	return false 
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_171007(context, evt)
	if evt.param1 == GadgetState.GearStart then
	ScriptLib.ChangeGroupVariableValue(context, "State_Flag", 1)
	if 0 == ScriptLib.GetCurTriggerCount(context) then
	ScriptLib.MarkPlayerAction(context, 1003, 1, 1)
	end 
	end
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_171008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 < 0 or evt.param1 > 4 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_171008(context, evt)
	if evt.param1 == 0 then
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_hint, GadgetState.Default)
	elseif evt.param1 == 1 then
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_hint, GadgetState.Action01)
	ScriptLib.MarkPlayerAction(context, 1003, 2, 2) 
	elseif evt.param1 == 2 then
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_hint, GadgetState.Action02)
	ScriptLib.MarkPlayerAction(context, 1003, 2, 3) 
	elseif evt.param1 == 3 then
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_hint, GadgetState.Action03)
	ScriptLib.MarkPlayerAction(context, 1003, 2, 4) 
	elseif evt.param1 == 4 then
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_hint, GadgetState.GearStart)
	ScriptLib.MarkPlayerAction(context, 1003, 3, 5) 
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_chest, GadgetState.Default)
	end
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_171009(context, evt)
	local sum = 0
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_1) == GadgetState.GearStart then
	sum = sum + 1
	end
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_2) == GadgetState.GearStart then
	sum = sum + 1
	end
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_3) == GadgetState.GearStart then
	sum = sum + 1
	end
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_4) == GadgetState.GearStart then
	sum = sum + 1
	end
	ScriptLib.SetGroupVariableValue(context, "State_Flag", sum)
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_171010(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"unlock_3"为1
	if ScriptLib.GetGroupVariableValue(context, "unlock_3") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_171010(context, evt)
	-- 将configid为 171004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 171004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_171012(context, evt)
	if 171011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_171012(context, evt)
	ScriptLib.CreateGadget(context, {config_id=171002})
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_171013(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"unlock_4"为1
	if ScriptLib.GetGroupVariableValue(context, "unlock_4") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_171013(context, evt)
	-- 将configid为 171005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 171005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_171014(context, evt)
	-- 判断变量"unlock_3"为1
	if ScriptLib.GetGroupVariableValue(context, "unlock_3") ~= 1 then
			return false
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133313171, 171004) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_171014(context, evt)
	-- 将configid为 171004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 171004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_171015(context, evt)
	-- 判断变量"unlock_4"为1
	if ScriptLib.GetGroupVariableValue(context, "unlock_4") ~= 1 then
			return false
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133313171, 171005) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_171015(context, evt)
	-- 将configid为 171005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 171005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end