-- 基础信息
local base_info = {
	group_id = 133308086
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
	{ config_id = 86001, gadget_id = 70330225, pos = { x = -2123.925, y = 146.827, z = 5172.902 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 86002, gadget_id = 70330315, pos = { x = -2112.729, y = 144.716, z = 5162.564 }, rot = { x = 358.068, y = 359.349, z = 349.060 }, level = 32, state = GadgetState.GearAction2, persistent = true, area_id = 27 },
	{ config_id = 86003, gadget_id = 70330333, pos = { x = -2093.415, y = 144.333, z = 5162.614 }, rot = { x = 0.000, y = 136.604, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 86004, gadget_id = 70360286, pos = { x = -2093.465, y = 146.033, z = 5162.554 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, worktop_config = { is_persistent = true, init_options = { } }, area_id = 27 },
	{ config_id = 86007, gadget_id = 70330416, pos = { x = -2088.145, y = 142.930, z = 5162.710 }, rot = { x = 0.000, y = 269.132, z = 0.000 }, level = 32, persistent = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1086005, name = "GADGET_CREATE_86005", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_86005", action = "action_EVENT_GADGET_CREATE_86005", trigger_count = 0 },
	{ config_id = 1086006, name = "GADGET_STATE_CHANGE_86006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_86006", action = "action_EVENT_GADGET_STATE_CHANGE_86006" },
	{ config_id = 1086008, name = "SELECT_OPTION_86008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_86008", action = "action_EVENT_SELECT_OPTION_86008", trigger_count = 0 },
	{ config_id = 1086009, name = "GROUP_LOAD_86009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_86009", action = "action_EVENT_GROUP_LOAD_86009", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "end", value = 0, no_refresh = true }
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
		gadgets = { 86001, 86002, 86003, 86004, 86007 },
		regions = { },
		triggers = { "GADGET_CREATE_86005", "GADGET_STATE_CHANGE_86006", "SELECT_OPTION_86008", "GROUP_LOAD_86009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_86005(context, evt)
	if 86003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_86005(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133308086, 86004, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_86006(context, evt)
	-- 检测config_id为86002的gadget是否从GadgetState.GearAction2变为GadgetState.Default
	if 86002 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearAction2 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_86006(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31001, 3, 70330315) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_86008(context, evt)
	-- 判断是gadgetid 86004 option_id 7
	if 86004 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_86008(context, evt)
	-- 将本组内变量名为 "end" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "end", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 86007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 86007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 86003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 86003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133308086 ；指定config：86004；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133308086, 86004, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_86009(context, evt)
	-- 判断变量"end"为1
	if ScriptLib.GetGroupVariableValue(context, "end") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_86009(context, evt)
	-- 将configid为 86007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 86007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 86003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 86003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133308086 ；指定config：86004；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133308086, 86004, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

require "V3_1/Engineer_Mark"