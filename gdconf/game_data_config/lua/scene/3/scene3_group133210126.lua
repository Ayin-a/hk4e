-- 基础信息
local base_info = {
	group_id = 133210126
}

-- Trigger变量
local defs = {
	group_ID = 133210126,
	gadget_fundation01 = 126001,
	gadget_hand01 = 126003,
	gadget_fundation02 = 126002,
	gadget_hand02 = 126004,
	gadget_fundation03 = 0,
	gadget_hand03 = 0,
	gadget_fundation04 = 0,
	gadget_hand04 = 0,
	gadget_fundation05 = 0,
	gadget_hand05 = 0,
	minDiscrapancy = 15
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
	{ config_id = 126001, gadget_id = 70950084, pos = { x = -3550.571, y = 176.274, z = -1143.868 }, rot = { x = 0.000, y = 134.243, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 126002, gadget_id = 70950084, pos = { x = -3550.766, y = 176.182, z = -1162.122 }, rot = { x = 0.000, y = 42.304, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 126003, gadget_id = 70950085, pos = { x = -3550.571, y = 176.274, z = -1143.868 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStop, area_id = 17 },
	{ config_id = 126004, gadget_id = 70950085, pos = { x = -3550.766, y = 176.182, z = -1162.122 }, rot = { x = 0.000, y = 170.841, z = 0.000 }, level = 30, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1126005, name = "GADGET_CREATE_126005", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_126005", action = "action_EVENT_GADGET_CREATE_126005", trigger_count = 0 },
	{ config_id = 1126006, name = "VARIABLE_CHANGE_126006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_126006", action = "action_EVENT_VARIABLE_CHANGE_126006" },
	{ config_id = 1126007, name = "GROUP_LOAD_126007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_126007", action = "action_EVENT_GROUP_LOAD_126007", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "predone", value = 0, no_refresh = true }
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
		gadgets = { 126001, 126002, 126003, 126004 },
		regions = { },
		triggers = { "GADGET_CREATE_126005", "VARIABLE_CHANGE_126006", "GROUP_LOAD_126007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
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
function condition_EVENT_GADGET_CREATE_126005(context, evt)
	if 126003 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"predone"为1
	if ScriptLib.GetGroupVariableValue(context, "predone") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_126005(context, evt)
	-- 将configid为 126003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 126003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_126006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_126006(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210082, 2)
	
	-- 将本组内变量名为 "predone" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "predone", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_126007(context, evt)
	-- 判断变量"successed"为0
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 0 then
			return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133210374, 374001) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133210374, 374002) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133210374, 374003) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133210374, 374004) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_126007(context, evt)
	-- 将configid为 126003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 126003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "BlackBoxPlay/MagneticGear"