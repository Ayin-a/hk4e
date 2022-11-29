-- 基础信息
local base_info = {
	group_id = 111101114
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
	{ config_id = 114001, npc_id = 9002, pos = { x = 2629.035, y = 251.058, z = -1255.340 }, rot = { x = 0.000, y = 0.000, z = 0.000 } }
}

-- 装置
gadgets = {
	{ config_id = 114002, gadget_id = 70350081, pos = { x = 2636.458, y = 250.033, z = -1255.611 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStop, persistent = true },
	{ config_id = 114003, gadget_id = 70350081, pos = { x = 2632.010, y = 250.461, z = -1251.216 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStop, persistent = true },
	{ config_id = 114004, gadget_id = 70350081, pos = { x = 2626.684, y = 251.265, z = -1252.613 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStop, persistent = true },
	{ config_id = 114005, gadget_id = 70360079, pos = { x = 2630.765, y = 255.794, z = -1261.334 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 114006, gadget_id = 70211001, pos = { x = 2629.810, y = 251.037, z = -1265.291 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "战斗低级蒙德", isOneoff = true, persistent = true },
	{ config_id = 114007, gadget_id = 70900007, pos = { x = 2631.253, y = 250.702, z = -1254.683 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1114008, name = "GADGET_STATE_CHANGE_114008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_114008", action = "action_EVENT_GADGET_STATE_CHANGE_114008", trigger_count = 0 },
	{ config_id = 1114009, name = "GADGET_STATE_CHANGE_114009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_114009", action = "action_EVENT_GADGET_STATE_CHANGE_114009", trigger_count = 0 },
	{ config_id = 1114010, name = "GROUP_LOAD_114010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_114010", action = "action_EVENT_GROUP_LOAD_114010", trigger_count = 0 }
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
		gadgets = { 114002, 114003, 114004, 114005, 114006, 114007 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_114008", "GADGET_STATE_CHANGE_114009", "GROUP_LOAD_114010" },
		npcs = { 114001 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_114008(context, evt)
	if 114007 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_114008(context, evt)
	ScriptLib.GoToFlowSuite(context, 111101116, 2)
	ScriptLib.GoToFlowSuite(context, 111101117, 2)
	ScriptLib.GoToFlowSuite(context, 111101118, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_114009(context, evt)
	-- 判断变量"isFinish"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "isFinish", 111101116) ~= 1 then
			return false
	end
	
	-- 判断变量"isFinish"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "isFinish", 111101117) ~= 1 then
			return false
	end
	
	-- 判断变量"isFinish"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "isFinish", 111101118) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_114009(context, evt)
	-- 将configid为 114005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 114005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_114010(context, evt)
	-- 判断变量"isFinish"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "isFinish", 111101116) ~= 1 then
			return false
	end
	
	-- 判断变量"isFinish"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "isFinish", 111101117) ~= 1 then
			return false
	end
	
	-- 判断变量"isFinish"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "isFinish", 111101118) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_114010(context, evt)
	-- 将configid为 114005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 114005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end