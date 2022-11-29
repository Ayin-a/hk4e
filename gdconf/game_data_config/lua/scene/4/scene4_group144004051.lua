-- 基础信息
local base_info = {
	group_id = 144004051
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
	{ config_id = 51001, gadget_id = 70900009, pos = { x = -719.767, y = 197.960, z = -35.332 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 103 },
	{ config_id = 51002, gadget_id = 70900007, pos = { x = -735.407, y = 198.065, z = -36.147 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 103 },
	{ config_id = 51003, gadget_id = 70211112, pos = { x = -725.831, y = 200.604, z = -37.800 }, rot = { x = 358.145, y = 325.471, z = 15.399 }, level = 16, drop_tag = "解谜中级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 103 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1051004, name = "VARIABLE_CHANGE_51004", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_51004", action = "action_EVENT_VARIABLE_CHANGE_51004" },
	{ config_id = 1051005, name = "GADGET_STATE_CHANGE_51005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_51005", action = "action_EVENT_GADGET_STATE_CHANGE_51005" },
	{ config_id = 1051006, name = "GADGET_STATE_CHANGE_51006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_51006", action = "action_EVENT_GADGET_STATE_CHANGE_51006" }
}

-- 变量
variables = {
	{ config_id = 1, name = "key", value = 0, no_refresh = false }
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
		gadgets = { 51001, 51002, 51003 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_51004", "GADGET_STATE_CHANGE_51005", "GADGET_STATE_CHANGE_51006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_51004(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"key"为2
	if ScriptLib.GetGroupVariableValue(context, "key") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_51004(context, evt)
	-- 将configid为 51003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 51003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_51005(context, evt)
	if 51001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_51005(context, evt)
	-- 针对当前group内变量名为 "key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "key", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_51006(context, evt)
	if 51002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_51006(context, evt)
	-- 针对当前group内变量名为 "key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "key", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end