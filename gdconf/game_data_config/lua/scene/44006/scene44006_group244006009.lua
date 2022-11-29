-- 基础信息
local base_info = {
	group_id = 244006009
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
	{ config_id = 9001, gadget_id = 70330057, pos = { x = 0.473, y = 0.066, z = -0.097 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStop }
}

-- 区域
regions = {
	{ config_id = 9005, shape = RegionShape.SPHERE, radius = 50, pos = { x = 2.029, y = 0.047, z = -1.875 } }
}

-- 触发器
triggers = {
	{ config_id = 1009002, name = "VARIABLE_CHANGE_9002", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_9002", action = "action_EVENT_VARIABLE_CHANGE_9002" },
	{ config_id = 1009003, name = "VARIABLE_CHANGE_9003", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_9003", action = "action_EVENT_VARIABLE_CHANGE_9003" },
	{ config_id = 1009004, name = "VARIABLE_CHANGE_9004", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_9004", action = "action_EVENT_VARIABLE_CHANGE_9004" },
	{ config_id = 1009005, name = "ENTER_REGION_9005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_9005" }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 9005 },
		triggers = { "VARIABLE_CHANGE_9002", "VARIABLE_CHANGE_9003", "VARIABLE_CHANGE_9004", "ENTER_REGION_9005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_9002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"round"为2
	if ScriptLib.GetGroupVariableValueByGroup(context, "round", 244006002) ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_9002(context, evt)
	-- 将configid为 9001 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 9001, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_9003(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"round"为4
	if ScriptLib.GetGroupVariableValueByGroup(context, "round", 244006002) ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_9003(context, evt)
	-- 将configid为 9001 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 9001, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_9004(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"round"为6
	if ScriptLib.GetGroupVariableValueByGroup(context, "round", 244006002) ~= 6 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_9004(context, evt)
	-- 将configid为 9001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 9001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_9005(context, evt)
	-- 创建id为9001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 9001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end