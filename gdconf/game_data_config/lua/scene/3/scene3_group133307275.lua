-- 基础信息
local base_info = {
	group_id = 133307275
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
	{ config_id = 275001, gadget_id = 70330333, pos = { x = -1601.083, y = 2.242, z = 5774.889 }, rot = { x = 0.000, y = 15.226, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 32 },
	{ config_id = 275002, gadget_id = 70330416, pos = { x = -1598.013, y = 2.536, z = 5771.976 }, rot = { x = 0.000, y = 195.452, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 275003, gadget_id = 70330416, pos = { x = -1603.816, y = 14.335, z = 5750.579 }, rot = { x = 0.000, y = 195.452, z = 0.000 }, level = 32, persistent = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 断线重连
	{ config_id = 1275005, name = "GADGET_CREATE_275005", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_275005", action = "action_EVENT_GADGET_CREATE_275005", trigger_count = 0 },
	-- 开门
	{ config_id = 1275006, name = "SELECT_OPTION_275006", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_275006", action = "action_EVENT_SELECT_OPTION_275006", trigger_count = 0 },
	-- 断线重连开门
	{ config_id = 1275007, name = "GROUP_LOAD_275007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_275007", action = "action_EVENT_GROUP_LOAD_275007", trigger_count = 0 }
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
		gadgets = { 275001, 275002, 275003 },
		regions = { },
		triggers = { "GADGET_CREATE_275005", "SELECT_OPTION_275006", "GROUP_LOAD_275007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_275005(context, evt)
	if 275001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_275005(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133307275, 275001, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_275006(context, evt)
	-- 判断是gadgetid 275001 option_id 7
	if 275001 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_275006(context, evt)
	-- 将本组内变量名为 "open" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "open", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 275001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 275001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 275002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 275002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 275003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 275003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133307275 ；指定config：275001；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133307275, 275001, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_275007(context, evt)
	-- 判断变量"open"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "open", 133307275) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_275007(context, evt)
	ScriptLib.SetGadgetStateByConfigId(context,275002, GadgetState.GearStart)
	
	ScriptLib.SetGadgetStateByConfigId(context,275001, GadgetState.GearStart)
	
	return 0
end