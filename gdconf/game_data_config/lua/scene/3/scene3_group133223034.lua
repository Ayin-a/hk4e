-- 基础信息
local base_info = {
	group_id = 133223034
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
	{ config_id = 34001, gadget_id = 70350081, pos = { x = -6050.111, y = 196.637, z = -2882.401 }, rot = { x = 0.000, y = 348.549, z = 0.000 }, level = 33, persistent = true, area_id = 18 },
	{ config_id = 34002, gadget_id = 70350313, pos = { x = -6047.336, y = 196.749, z = -2886.713 }, rot = { x = 0.000, y = 29.776, z = 0.000 }, level = 33, persistent = true, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1034003, name = "SELECT_OPTION_34003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_34003", action = "action_EVENT_SELECT_OPTION_34003" },
	{ config_id = 1034004, name = "GADGET_CREATE_34004", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_34004", action = "action_EVENT_GADGET_CREATE_34004", trigger_count = 0 },
	{ config_id = 1034005, name = "GROUP_LOAD_34005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_34005", action = "action_EVENT_GROUP_LOAD_34005", trigger_count = 0 }
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
		-- description = ,
		monsters = { },
		gadgets = { 34001, 34002 },
		regions = { },
		triggers = { "SELECT_OPTION_34003", "GADGET_CREATE_34004", "GROUP_LOAD_34005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_34003(context, evt)
	-- 判断是gadgetid 34001 option_id 24
	if 34001 ~= evt.param1 then
		return false	
	end
	
	if 24 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_34003(context, evt)
	-- 将configid为 34002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 34002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 34001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 34001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133223034 ；指定config：34001；物件身上指定option：24；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133223034, 34001, 24) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将本组内变量名为 "start" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "start", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_34004(context, evt)
	if 34001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_34004(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133223034, 34001, {24}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_34005(context, evt)
	-- 判断变量"start"为1
	if ScriptLib.GetGroupVariableValue(context, "start") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_34005(context, evt)
	-- 将configid为 34002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 34002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end