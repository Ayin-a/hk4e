-- 基础信息
local base_info = {
	group_id = 133223075
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
	{ config_id = 75002, gadget_id = 70211131, pos = { x = -6117.040, y = 223.950, z = -2767.185 }, rot = { x = 0.000, y = 275.278, z = 0.000 }, level = 26, drop_tag = "解谜超级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 75005, gadget_id = 70290159, pos = { x = -6122.595, y = 223.977, z = -2766.459 }, rot = { x = 350.566, y = 94.787, z = -0.001 }, level = 33, persistent = true, area_id = 18 },
	{ config_id = 75006, gadget_id = 70290159, pos = { x = -6114.350, y = 223.034, z = -2773.010 }, rot = { x = 354.463, y = 331.891, z = 0.966 }, level = 33, persistent = true, area_id = 18 },
	{ config_id = 75007, gadget_id = 70290159, pos = { x = -6112.732, y = 223.962, z = -2763.031 }, rot = { x = 352.450, y = 229.374, z = 356.602 }, level = 33, persistent = true, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 三飞贼到达目标，解锁宝箱
	{ config_id = 1075001, name = "VARIABLE_CHANGE_75001", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_75001", action = "action_EVENT_VARIABLE_CHANGE_75001" },
	-- A
	{ config_id = 1075003, name = "VARIABLE_CHANGE_75003", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_75003", action = "action_EVENT_VARIABLE_CHANGE_75003" },
	-- B
	{ config_id = 1075004, name = "VARIABLE_CHANGE_75004", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_75004", action = "action_EVENT_VARIABLE_CHANGE_75004" },
	-- C
	{ config_id = 1075008, name = "VARIABLE_CHANGE_75008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_75008", action = "action_EVENT_VARIABLE_CHANGE_75008" },
	-- 宝箱保底
	{ config_id = 1075009, name = "GROUP_LOAD_75009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_75009", action = "action_EVENT_GROUP_LOAD_75009", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "thief_progress", value = 0, no_refresh = true },
	{ config_id = 2, name = "thief_A_finish", value = 0, no_refresh = true },
	{ config_id = 3, name = "thief_B_finish", value = 0, no_refresh = true },
	{ config_id = 4, name = "thief_C_finish", value = 0, no_refresh = true }
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
		gadgets = { 75005, 75006, 75007 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_75001", "VARIABLE_CHANGE_75003", "VARIABLE_CHANGE_75004", "VARIABLE_CHANGE_75008", "GROUP_LOAD_75009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_75001(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"thief_progress"为3
	if ScriptLib.GetGroupVariableValue(context, "thief_progress") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_75001(context, evt)
	-- 创建id为75002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 75002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_75003(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"thief_A_finish"为1
	if ScriptLib.GetGroupVariableValue(context, "thief_A_finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_75003(context, evt)
	-- 将configid为 75005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 75005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_75004(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"thief_B_finish"为1
	if ScriptLib.GetGroupVariableValue(context, "thief_B_finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_75004(context, evt)
	-- 将configid为 75007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 75007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_75008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"thief_C_finish"为1
	if ScriptLib.GetGroupVariableValue(context, "thief_C_finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_75008(context, evt)
	-- 将configid为 75006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 75006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_75009(context, evt)
	-- 判断变量"thief_progress"为3
	if ScriptLib.GetGroupVariableValue(context, "thief_progress") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_75009(context, evt)
	-- 创建id为75002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 75002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end