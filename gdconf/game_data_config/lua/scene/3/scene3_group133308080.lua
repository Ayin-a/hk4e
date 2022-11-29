-- 基础信息
local base_info = {
	group_id = 133308080
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
	{ config_id = 80002, gadget_id = 70330315, pos = { x = -2513.286, y = 138.386, z = 5116.508 }, rot = { x = 4.569, y = 356.838, z = 351.230 }, level = 32, state = GadgetState.GearAction2, persistent = true, area_id = 27 },
	{ config_id = 80003, gadget_id = 70330225, pos = { x = -2532.698, y = 141.361, z = 5111.718 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 80004, gadget_id = 70330333, pos = { x = -2521.978, y = 138.812, z = 5127.011 }, rot = { x = 0.000, y = 22.068, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 80005, gadget_id = 70360286, pos = { x = -2521.882, y = 140.550, z = 5126.973 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, worktop_config = { is_persistent = true, init_options = { } }, area_id = 27 },
	{ config_id = 80006, gadget_id = 70330430, pos = { x = -2522.039, y = 139.045, z = 5126.676 }, rot = { x = 0.000, y = 0.000, z = 354.227 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 80009, gadget_id = 70330416, pos = { x = -2502.750, y = 134.374, z = 5122.149 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 80010, gadget_id = 70330333, pos = { x = -2499.622, y = 136.063, z = 5119.596 }, rot = { x = 359.904, y = 190.102, z = 355.446 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 80011, gadget_id = 70360286, pos = { x = -2499.857, y = 137.712, z = 5119.681 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, worktop_config = { is_persistent = true, init_options = { } }, area_id = 27 },
	{ config_id = 80014, gadget_id = 70330416, pos = { x = -2497.115, y = 134.373, z = 5117.073 }, rot = { x = 0.000, y = 268.804, z = 0.000 }, level = 32, persistent = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 运营埋点
	{ config_id = 1080001, name = "GADGET_STATE_CHANGE_80001", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_80001", action = "action_EVENT_GADGET_STATE_CHANGE_80001" },
	{ config_id = 1080007, name = "ANY_GADGET_DIE_80007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_80007", action = "action_EVENT_ANY_GADGET_DIE_80007", trigger_count = 0 },
	{ config_id = 1080008, name = "SELECT_OPTION_80008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_80008", action = "action_EVENT_SELECT_OPTION_80008", trigger_count = 0 },
	{ config_id = 1080012, name = "GADGET_CREATE_80012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_80012", action = "action_EVENT_GADGET_CREATE_80012", trigger_count = 0 },
	{ config_id = 1080013, name = "SELECT_OPTION_80013", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_80013", action = "action_EVENT_SELECT_OPTION_80013", trigger_count = 0 },
	{ config_id = 1080015, name = "GROUP_LOAD_80015", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_80015", action = "action_EVENT_GROUP_LOAD_80015", trigger_count = 0 },
	{ config_id = 1080016, name = "GROUP_LOAD_80016", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_80016", action = "action_EVENT_GROUP_LOAD_80016", trigger_count = 0 },
	{ config_id = 1080017, name = "GROUP_LOAD_80017", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_80017", action = "action_EVENT_GROUP_LOAD_80017", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "end1", value = 0, no_refresh = true },
	{ config_id = 2, name = "end2", value = 0, no_refresh = true },
	{ config_id = 3, name = "die", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1080018, name = "GROUP_LOAD_80018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_80018", action = "action_EVENT_GROUP_LOAD_80018", trigger_count = 0 }
	}
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
		gadgets = { 80002, 80003, 80004, 80005, 80006, 80009, 80010, 80011, 80014 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_80001", "ANY_GADGET_DIE_80007", "SELECT_OPTION_80008", "GADGET_CREATE_80012", "SELECT_OPTION_80013", "GROUP_LOAD_80015", "GROUP_LOAD_80016", "GROUP_LOAD_80017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_80001(context, evt)
	-- 检测config_id为80002的gadget是否从GadgetState.GearAction2变为GadgetState.Default
	if 80002 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearAction2 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_80001(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31001, 3, 70330315) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_80007(context, evt)
	if 80006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_80007(context, evt)
	-- 将本组内变量名为 "die" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "die", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133308080, 80005, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_80008(context, evt)
	-- 判断是gadgetid 80005 option_id 7
	if 80005 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_80008(context, evt)
	-- 将本组内变量名为 "end1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "end1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 80004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 80004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 80009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 80009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133308080 ；指定config：80005；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133308080, 80005, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_80012(context, evt)
	if 80010 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"end2"为0
	if ScriptLib.GetGroupVariableValue(context, "end2") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_80012(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133308080, 80011, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_80013(context, evt)
	-- 判断是gadgetid 80011 option_id 7
	if 80011 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_80013(context, evt)
	-- 将本组内变量名为 "end2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "end2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 80010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 80010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 80014 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 80014, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133308080 ；指定config：80011；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133308080, 80011, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_80015(context, evt)
	-- 判断变量"end1"为1
	if ScriptLib.GetGroupVariableValue(context, "end1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_80015(context, evt)
	-- 将configid为 80004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 80004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 80009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 80009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133308080 ；指定config：80005；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133308080, 80005, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_80016(context, evt)
	-- 判断变量"end2"为1
	if ScriptLib.GetGroupVariableValue(context, "end2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_80016(context, evt)
	-- 将configid为 80010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 80010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 80014 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 80014, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133308080 ；指定config：80011；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133308080, 80011, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_80017(context, evt)
	-- 判断变量"die"为1
	if ScriptLib.GetGroupVariableValue(context, "die") ~= 1 then
			return false
	end
	
	-- 判断变量"end1"为0
	if ScriptLib.GetGroupVariableValue(context, "end1") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_80017(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133308080, 80005, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

require "V3_1/Engineer_Mark"