-- 基础信息
local base_info = {
	group_id = 133102145
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
	{ config_id = 506, gadget_id = 70360005, pos = { x = 1317.148, y = 200.172, z = -75.497 }, rot = { x = 358.092, y = 91.918, z = 357.578 }, level = 16, area_id = 5 },
	{ config_id = 507, gadget_id = 70360005, pos = { x = 1316.837, y = 200.191, z = -91.055 }, rot = { x = 359.637, y = 92.006, z = 359.250 }, level = 16, area_id = 5 },
	{ config_id = 508, gadget_id = 70211102, pos = { x = 1316.927, y = 200.183, z = -82.914 }, rot = { x = 359.526, y = 91.299, z = 2.306 }, level = 16, drop_tag = "解谜低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000253, name = "GADGET_STATE_CHANGE_253", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_253", action = "action_EVENT_GADGET_STATE_CHANGE_253", trigger_count = 0 },
	{ config_id = 1000254, name = "GADGET_STATE_CHANGE_254", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_254", action = "action_EVENT_GADGET_STATE_CHANGE_254", trigger_count = 0 },
	{ config_id = 1000255, name = "GADGET_STATE_CHANGE_255", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_255", action = "action_EVENT_GADGET_STATE_CHANGE_255", trigger_count = 0 },
	{ config_id = 1000256, name = "GADGET_STATE_CHANGE_256", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_256", action = "action_EVENT_GADGET_STATE_CHANGE_256", trigger_count = 0 },
	{ config_id = 1000257, name = "VARIABLE_CHANGE_257", event = EventType.EVENT_VARIABLE_CHANGE, source = "Switch", condition = "condition_EVENT_VARIABLE_CHANGE_257", action = "action_EVENT_VARIABLE_CHANGE_257" },
	{ config_id = 1000265, name = "GADGET_STATE_CHANGE_265", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_265", action = "action_EVENT_GADGET_STATE_CHANGE_265" }
}

-- 变量
variables = {
	{ config_id = 1, name = "Switch", value = 0, no_refresh = false }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 2,
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
		gadgets = { 506, 507, 508 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_253", "GADGET_STATE_CHANGE_254", "GADGET_STATE_CHANGE_255", "GADGET_STATE_CHANGE_256", "VARIABLE_CHANGE_257", "GADGET_STATE_CHANGE_265" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { },
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
function condition_EVENT_GADGET_STATE_CHANGE_253(context, evt)
	if 506 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_253(context, evt)
	-- 针对当前group内变量名为 "Switch" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Switch", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_254(context, evt)
	-- 检测config_id为506的gadget是否从GadgetState.GearStart变为GadgetState.Default
	if 506 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_254(context, evt)
	-- 针对当前group内变量名为 "Switch" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Switch", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_255(context, evt)
	if 507 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_255(context, evt)
	-- 针对当前group内变量名为 "Switch" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Switch", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_256(context, evt)
	-- 检测config_id为507的gadget是否从GadgetState.GearStart变为GadgetState.Default
	if 507 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_256(context, evt)
	-- 针对当前group内变量名为 "Switch" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Switch", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_257(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Switch"为2
	if ScriptLib.GetGroupVariableValue(context, "Switch") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_257(context, evt)
	-- 将configid为 508 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 508, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_265(context, evt)
	if 508 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_265(context, evt)
	-- 销毁group存档，不影响当前场景，但卸载后group就永别了
	if 0 ~= ScriptLib.SetGroupDead(context, 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_group_die")
		return -1
	end
	
	return 0
end