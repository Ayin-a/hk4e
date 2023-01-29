-- 基础信息
local base_info = {
	group_id = 133313125
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
	{ config_id = 125001, gadget_id = 70330256, pos = { x = -326.876, y = -52.196, z = 5414.742 }, rot = { x = 0.000, y = 345.345, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 32 },
	{ config_id = 125002, gadget_id = 70290611, pos = { x = -342.072, y = -58.758, z = 5442.148 }, rot = { x = 0.000, y = 76.744, z = 0.000 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 流程解锁
	{ config_id = 1125003, name = "VARIABLE_CHANGE_125003", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_125003", action = "action_EVENT_VARIABLE_CHANGE_125003", trigger_count = 0 },
	-- 加载关闭交互
	{ config_id = 1125004, name = "GROUP_LOAD_125004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_125004", action = "action_EVENT_GROUP_LOAD_125004", trigger_count = 0 },
	-- 关闭交互
	{ config_id = 1125007, name = "SELECT_OPTION_125007", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_125007", action = "action_EVENT_SELECT_OPTION_125007", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "unlock", value = 0, no_refresh = false }
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
		gadgets = { 125001, 125002 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_125003", "GROUP_LOAD_125004", "SELECT_OPTION_125007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_125003(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"unlock"为1
	if ScriptLib.GetGroupVariableValue(context, "unlock") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_125003(context, evt)
	-- 将configid为 125002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 125002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133313125, 125002, {72}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_125004(context, evt)
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133313125, 125002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_125004(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133313125, 125002, {72}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_125007(context, evt)
	-- 判断是gadgetid 125002 option_id 72
	if 125002 ~= evt.param1 then
		return false	
	end
	
	if 72 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_125007(context, evt)
	-- 将configid为 125001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 125001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 125002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 125002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133313125 ；指定config：125002；物件身上指定option：72；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133313125, 125002, 72) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end