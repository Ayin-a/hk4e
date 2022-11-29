-- 基础信息
local base_info = {
	group_id = 133217247
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
	{ config_id = 247001, gadget_id = 70330064, pos = { x = -4412.345, y = 171.242, z = -3814.666 }, rot = { x = 7.930, y = 96.821, z = 0.599 }, level = 27, state = GadgetState.GearStop, interact_id = 35, area_id = 14 },
	{ config_id = 247002, gadget_id = 70900380, pos = { x = -4416.684, y = 179.046, z = -3814.770 }, rot = { x = 359.838, y = 342.930, z = 1.296 }, level = 27, area_id = 14 },
	{ config_id = 247003, gadget_id = 70900380, pos = { x = -4425.389, y = 188.179, z = -3817.592 }, rot = { x = 358.738, y = 50.892, z = 0.336 }, level = 27, area_id = 14 },
	{ config_id = 247004, gadget_id = 70900380, pos = { x = -4432.988, y = 196.970, z = -3819.785 }, rot = { x = 0.388, y = 173.079, z = 358.753 }, level = 27, area_id = 14 },
	{ config_id = 247007, gadget_id = 70900380, pos = { x = -4432.842, y = 207.709, z = -3818.455 }, rot = { x = 0.388, y = 173.079, z = 358.753 }, level = 30, area_id = 14 },
	{ config_id = 247008, gadget_id = 70900380, pos = { x = -4433.158, y = 222.902, z = -3818.597 }, rot = { x = 0.388, y = 173.079, z = 358.753 }, level = 30, area_id = 14 },
	{ config_id = 247009, gadget_id = 70900380, pos = { x = -4433.729, y = 234.894, z = -3816.051 }, rot = { x = 0.388, y = 173.079, z = 358.753 }, level = 30, area_id = 14 },
	{ config_id = 247010, gadget_id = 70900380, pos = { x = -4433.411, y = 247.181, z = -3820.891 }, rot = { x = 0.388, y = 173.079, z = 358.753 }, level = 30, area_id = 14 },
	{ config_id = 247011, gadget_id = 70900380, pos = { x = -4434.202, y = 258.088, z = -3816.340 }, rot = { x = 0.388, y = 173.079, z = 358.753 }, level = 30, area_id = 14 },
	{ config_id = 247012, gadget_id = 70900380, pos = { x = -4433.913, y = 270.746, z = -3821.010 }, rot = { x = 0.388, y = 173.079, z = 358.753 }, level = 30, area_id = 14 },
	{ config_id = 247013, gadget_id = 70900380, pos = { x = -4434.624, y = 282.665, z = -3817.300 }, rot = { x = 0.388, y = 173.079, z = 358.753 }, level = 30, area_id = 14 },
	{ config_id = 247014, gadget_id = 70900380, pos = { x = -4434.484, y = 295.802, z = -3820.836 }, rot = { x = 0.388, y = 173.079, z = 358.753 }, level = 30, area_id = 14 },
	{ config_id = 247015, gadget_id = 70900380, pos = { x = -4435.260, y = 308.429, z = -3816.720 }, rot = { x = 0.388, y = 173.079, z = 358.753 }, level = 30, area_id = 14 },
	{ config_id = 247016, gadget_id = 70900380, pos = { x = -4434.910, y = 322.511, z = -3822.160 }, rot = { x = 0.388, y = 173.079, z = 358.753 }, level = 30, area_id = 14 },
	{ config_id = 247017, gadget_id = 70900380, pos = { x = -4435.532, y = 337.150, z = -3819.664 }, rot = { x = 0.388, y = 173.079, z = 358.753 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1247005, name = "GADGET_STATE_CHANGE_247005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_247005", action = "action_EVENT_GADGET_STATE_CHANGE_247005", trigger_count = 0 },
	{ config_id = 1247006, name = "GADGET_STATE_CHANGE_247006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_247006", action = "action_EVENT_GADGET_STATE_CHANGE_247006", trigger_count = 0 },
	{ config_id = 1247018, name = "VARIABLE_CHANGE_247018", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_247018", action = "action_EVENT_VARIABLE_CHANGE_247018", trigger_count = 0 },
	{ config_id = 1247019, name = "GROUP_LOAD_247019", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_247019", action = "action_EVENT_GROUP_LOAD_247019", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "open", value = 0, no_refresh = true }
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
		gadgets = { 247001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_247005", "GADGET_STATE_CHANGE_247006", "VARIABLE_CHANGE_247018", "GROUP_LOAD_247019" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 247002, 247003, 247004, 247007, 247008, 247009, 247010, 247011, 247012, 247013, 247014, 247015, 247016, 247017 },
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
function condition_EVENT_GADGET_STATE_CHANGE_247005(context, evt)
	if 247001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_247005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133217247, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_247006(context, evt)
	if 247001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_247006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133217247, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_247018(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"open"为1
	if ScriptLib.GetGroupVariableValue(context, "open") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_247018(context, evt)
	-- 将configid为 247001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 247001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_247019(context, evt)
	-- 判断变量"open"为1
	if ScriptLib.GetGroupVariableValue(context, "open") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_247019(context, evt)
	-- 将configid为 247001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 247001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V2_0/ElectricCore"