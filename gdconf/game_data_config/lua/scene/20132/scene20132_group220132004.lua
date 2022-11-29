-- 基础信息
local base_info = {
	group_id = 220132004
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
	{ config_id = 4001, gadget_id = 70290528, pos = { x = 480.570, y = 22.890, z = 484.080 }, rot = { x = 0.000, y = 288.803, z = 0.000 }, level = 1 },
	{ config_id = 4002, gadget_id = 70290508, pos = { x = 487.941, y = 18.533, z = 482.800 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 4005, gadget_id = 70220103, pos = { x = 471.996, y = 35.416, z = 477.217 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4006, gadget_id = 70290480, pos = { x = 462.567, y = 29.164, z = 475.716 }, rot = { x = 0.000, y = 140.000, z = 0.000 }, level = 1, route_id = 1 },
	{ config_id = 4007, gadget_id = 70290577, pos = { x = 445.500, y = 27.637, z = 489.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4008, gadget_id = 70290577, pos = { x = 456.036, y = 23.849, z = 495.904 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4009, gadget_id = 70220103, pos = { x = 447.826, y = 64.558, z = 466.121 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4010, gadget_id = 70360001, pos = { x = 487.982, y = 18.956, z = 482.788 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4011, gadget_id = 70220103, pos = { x = 433.917, y = 59.069, z = 467.109 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4012, gadget_id = 70290577, pos = { x = 452.719, y = 27.537, z = 514.787 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4013, gadget_id = 70290577, pos = { x = 460.779, y = 13.540, z = 489.469 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4014, gadget_id = 70290577, pos = { x = 470.809, y = 19.439, z = 506.937 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1004003, name = "GADGET_CREATE_4003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_4003", action = "action_EVENT_GADGET_CREATE_4003" },
	{ config_id = 1004004, name = "SELECT_OPTION_4004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_4004", action = "action_EVENT_SELECT_OPTION_4004" }
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
		gadgets = { 4001, 4002, 4005, 4006, 4007, 4008, 4009, 4010, 4011, 4012, 4013, 4014 },
		regions = { },
		triggers = { "GADGET_CREATE_4003", "SELECT_OPTION_4004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_4003(context, evt)
	if 4010 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_4003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220132004, 4010, {68}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_4004(context, evt)
	-- 判断是gadgetid 4010 option_id 68
	if 4010 ~= evt.param1 then
		return false	
	end
	
	if 68 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_4004(context, evt)
	-- 将configid为 4002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 220132004 ；指定config：4010；物件身上指定option：68；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220132004, 4010, 68) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220132002, suite = 8 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将本组内变量名为 "KeyU" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "KeyU", 1, 220132011) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 针对当前group内变量名为 "KeyCount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "KeyCount", 1, 220132011) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end