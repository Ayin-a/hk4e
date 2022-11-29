-- 基础信息
local base_info = {
	group_id = 133210001
}

-- Trigger变量
local defs = {
	group_ID = 133210001,
	gadget_fundation01 = 1001,
	gadget_hand01 = 1003,
	gadget_fundation02 = 1002,
	gadget_hand02 = 1004,
	gadget_fundation03 = 1008,
	gadget_hand03 = 1007,
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
	{ config_id = 1001, gadget_id = 70950084, pos = { x = -4000.238, y = 200.540, z = -1056.792 }, rot = { x = 0.000, y = 132.378, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 1002, gadget_id = 70950084, pos = { x = -3996.742, y = 200.387, z = -1068.854 }, rot = { x = 0.000, y = 16.531, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 1003, gadget_id = 70950085, pos = { x = -4000.238, y = 200.540, z = -1056.792 }, rot = { x = 0.000, y = 165.321, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 1004, gadget_id = 70950085, pos = { x = -3996.742, y = 200.387, z = -1068.854 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 1005, gadget_id = 70211111, pos = { x = -3991.115, y = 202.718, z = -1053.725 }, rot = { x = 349.765, y = 225.278, z = 3.037 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 17 },
	{ config_id = 1007, gadget_id = 70950085, pos = { x = -3985.544, y = 200.973, z = -1064.362 }, rot = { x = 0.000, y = 156.586, z = 0.000 }, level = 30, state = GadgetState.GearStop, area_id = 17 },
	{ config_id = 1008, gadget_id = 70950084, pos = { x = -3985.544, y = 200.973, z = -1064.362 }, rot = { x = 0.000, y = 0.723, z = 0.000 }, level = 30, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1001006, name = "VARIABLE_CHANGE_1006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_1006", action = "action_EVENT_VARIABLE_CHANGE_1006" },
	{ config_id = 1001009, name = "GROUP_LOAD_1009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_1009", action = "action_EVENT_GROUP_LOAD_1009", trigger_count = 0 }
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
		gadgets = { 1001, 1002, 1003, 1004, 1007, 1008 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_1006", "GROUP_LOAD_1009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 1005 },
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
function condition_EVENT_VARIABLE_CHANGE_1006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_1006(context, evt)
	-- 将本组内变量名为 "success" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "success", 1, 133210031) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_1009(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133210031, 31001) then
		return false
	end
	
	-- 判断变量"success"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "success", 133210031) ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_1009(context, evt)
	-- 将configid为 1007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "BlackBoxPlay/MagneticGear"