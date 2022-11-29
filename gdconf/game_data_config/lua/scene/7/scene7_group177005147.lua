-- 基础信息
local base_info = {
	group_id = 177005147
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
	{ config_id = 147001, gadget_id = 70211156, pos = { x = 503.360, y = 202.164, z = 821.783 }, rot = { x = 0.264, y = 86.445, z = 355.916 }, level = 16, drop_tag = "渊下宫活动低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, area_id = 210 },
	{ config_id = 147002, gadget_id = 70310001, pos = { x = 504.335, y = 202.637, z = 825.173 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 147003, gadget_id = 70310001, pos = { x = 500.822, y = 201.824, z = 822.013 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 147004, gadget_id = 70310001, pos = { x = 504.621, y = 202.337, z = 818.580 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1147005, name = "GADGET_STATE_CHANGE_147005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_147005", action = "action_EVENT_GADGET_STATE_CHANGE_147005" },
	{ config_id = 1147007, name = "GADGET_STATE_CHANGE_147007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_147007", action = "action_EVENT_GADGET_STATE_CHANGE_147007" },
	{ config_id = 1147008, name = "VARIABLE_CHANGE_147008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_147008", action = "action_EVENT_VARIABLE_CHANGE_147008", trigger_count = 0 },
	{ config_id = 1147009, name = "GADGET_STATE_CHANGE_147009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_147009", action = "action_EVENT_GADGET_STATE_CHANGE_147009" }
}

-- 变量
variables = {
	{ config_id = 1, name = "start", value = 0, no_refresh = true }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 147001, 147002, 147003, 147004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_147005", "GADGET_STATE_CHANGE_147007", "VARIABLE_CHANGE_147008", "GADGET_STATE_CHANGE_147009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_147005(context, evt)
	if 147004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_147005(context, evt)
	-- 针对当前group内变量名为 "start" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "start", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_147007(context, evt)
	if 147002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_147007(context, evt)
	-- 针对当前group内变量名为 "start" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "start", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_147008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"start"为3
	if ScriptLib.GetGroupVariableValue(context, "start") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_147008(context, evt)
	-- 将configid为 147001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_147009(context, evt)
	if 147003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_147009(context, evt)
	-- 针对当前group内变量名为 "start" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "start", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end