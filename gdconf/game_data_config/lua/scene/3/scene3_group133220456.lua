-- 基础信息
local base_info = {
	group_id = 133220456
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
	{ config_id = 456001, gadget_id = 70350004, pos = { x = -2840.350, y = 198.390, z = -4074.146 }, rot = { x = 1.036, y = 135.755, z = 0.644 }, level = 27, persistent = true, area_id = 11 },
	{ config_id = 456002, gadget_id = 70350004, pos = { x = -2815.564, y = 188.615, z = -4073.592 }, rot = { x = 0.000, y = 50.799, z = 0.000 }, level = 27, persistent = true, area_id = 11 },
	{ config_id = 456003, gadget_id = 70360170, pos = { x = -2840.248, y = 199.493, z = -4078.121 }, rot = { x = 85.671, y = 252.147, z = 197.577 }, level = 27, area_id = 11 },
	{ config_id = 456006, gadget_id = 70360170, pos = { x = -2817.120, y = 190.205, z = -4072.253 }, rot = { x = 87.361, y = 39.349, z = 167.475 }, level = 27, area_id = 11 },
	{ config_id = 456009, gadget_id = 70360001, pos = { x = -2840.124, y = 199.455, z = -4078.708 }, rot = { x = 3.999, y = 322.783, z = 356.968 }, level = 27, area_id = 11 },
	{ config_id = 456010, gadget_id = 70360001, pos = { x = -2817.415, y = 190.137, z = -4072.463 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 456013, gadget_id = 70211001, pos = { x = -2834.149, y = 196.836, z = -4090.693 }, rot = { x = 0.000, y = 3.695, z = 0.000 }, level = 26, drop_tag = "战斗低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 456014, gadget_id = 70350004, pos = { x = -2809.364, y = 189.092, z = -4077.499 }, rot = { x = 0.000, y = 138.288, z = 0.000 }, level = 27, persistent = true, area_id = 11 },
	{ config_id = 456015, gadget_id = 70360170, pos = { x = -2807.930, y = 190.253, z = -4075.821 }, rot = { x = 89.172, y = 282.226, z = 319.155 }, level = 27, area_id = 11 },
	{ config_id = 456016, gadget_id = 70360001, pos = { x = -2808.186, y = 190.273, z = -4075.548 }, rot = { x = 0.000, y = 321.866, z = 0.000 }, level = 27, persistent = true, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 2
	{ config_id = 1456004, name = "GADGET_CREATE_456004", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_456004", action = "action_EVENT_GADGET_CREATE_456004", trigger_count = 0 },
	-- 操作后机关打开1
	{ config_id = 1456005, name = "SELECT_OPTION_456005", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_456005", action = "action_EVENT_SELECT_OPTION_456005", trigger_count = 0 },
	-- 1
	{ config_id = 1456007, name = "GADGET_CREATE_456007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_456007", action = "action_EVENT_GADGET_CREATE_456007", trigger_count = 0 },
	-- 操作后门打开2
	{ config_id = 1456008, name = "SELECT_OPTION_456008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_456008", action = "action_EVENT_SELECT_OPTION_456008", trigger_count = 0 },
	-- 操作后门打开1
	{ config_id = 1456011, name = "SELECT_OPTION_456011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_456011", action = "action_EVENT_SELECT_OPTION_456011", trigger_count = 0 },
	-- 操作后机关打开2
	{ config_id = 1456012, name = "SELECT_OPTION_456012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_456012", action = "action_EVENT_SELECT_OPTION_456012", trigger_count = 0 },
	-- 3
	{ config_id = 1456017, name = "GADGET_CREATE_456017", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_456017", action = "action_EVENT_GADGET_CREATE_456017", trigger_count = 0 },
	-- 操作后门打开3
	{ config_id = 1456018, name = "SELECT_OPTION_456018", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_456018", action = "action_EVENT_SELECT_OPTION_456018", trigger_count = 0 },
	-- 操作后机关打开3
	{ config_id = 1456019, name = "SELECT_OPTION_456019", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_456019", action = "action_EVENT_SELECT_OPTION_456019", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "gate1", value = 0, no_refresh = true },
	{ config_id = 2, name = "gate2", value = 0, no_refresh = true },
	{ config_id = 3, name = "gate3", value = 0, no_refresh = true }
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
		gadgets = { 456001, 456002, 456003, 456006, 456009, 456010, 456013, 456014, 456015 },
		regions = { },
		triggers = { "GADGET_CREATE_456004", "SELECT_OPTION_456005", "GADGET_CREATE_456007", "SELECT_OPTION_456008", "SELECT_OPTION_456011", "SELECT_OPTION_456012", "GADGET_CREATE_456017", "SELECT_OPTION_456018", "SELECT_OPTION_456019" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_456004(context, evt)
	if 456009 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"gate2"为0
	if ScriptLib.GetGroupVariableValue(context, "gate2") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_456004(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220456, 456009, {1}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_456005(context, evt)
	-- 判断是gadgetid 456010 option_id 1
	if 456010 ~= evt.param1 then
		return false	
	end
	
	if 1 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_456005(context, evt)
	-- 将configid为 456006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 456006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133220456 ；指定config：456010；物件身上指定option：1；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133220456, 456010, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_456007(context, evt)
	if 456010 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"gate1"为0
	if ScriptLib.GetGroupVariableValue(context, "gate1") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_456007(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220456, 456010, {1}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_456008(context, evt)
	-- 判断是gadgetid 456009 option_id 1
	if 456009 ~= evt.param1 then
		return false	
	end
	
	if 1 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_456008(context, evt)
	-- 将configid为 456001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 456001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "gate2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gate2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_456011(context, evt)
	-- 判断是gadgetid 456010 option_id 1
	if 456010 ~= evt.param1 then
		return false	
	end
	
	if 1 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_456011(context, evt)
	-- 将configid为 456002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 456002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "gate1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gate1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建id为456016的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 456016 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_456012(context, evt)
	-- 判断是gadgetid 456009 option_id 1
	if 456009 ~= evt.param1 then
		return false	
	end
	
	if 1 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_456012(context, evt)
	-- 将configid为 456003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 456003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133220456 ；指定config：456009；物件身上指定option：1；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133220456, 456009, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_456017(context, evt)
	if 456016 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"gate3"为0
	if ScriptLib.GetGroupVariableValue(context, "gate3") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_456017(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220456, 456016, {1}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_456018(context, evt)
	-- 判断是gadgetid 456016 option_id 1
	if 456016 ~= evt.param1 then
		return false	
	end
	
	if 1 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_456018(context, evt)
	-- 将configid为 456014 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 456014, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "gate3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gate3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_456019(context, evt)
	-- 判断是gadgetid 456016 option_id 1
	if 456016 ~= evt.param1 then
		return false	
	end
	
	if 1 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_456019(context, evt)
	-- 将configid为 456015 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 456015, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133220456 ；指定config：456016；物件身上指定option：1；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133220456, 456016, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end