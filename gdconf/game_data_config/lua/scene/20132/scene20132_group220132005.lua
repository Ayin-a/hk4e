-- 基础信息
local base_info = {
	group_id = 220132005
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
	{ config_id = 5003, gadget_id = 70290508, pos = { x = 429.015, y = 49.720, z = 473.619 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 5004, gadget_id = 70220103, pos = { x = 452.527, y = 50.019, z = 513.618 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5005, gadget_id = 70360001, pos = { x = 429.055, y = 50.135, z = 473.588 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5006, gadget_id = 70211101, pos = { x = 455.813, y = 47.408, z = 514.842 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 1, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true },
	{ config_id = 5007, gadget_id = 70290577, pos = { x = 436.267, y = 45.744, z = 480.160 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1005001, name = "GADGET_CREATE_5001", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_5001", action = "action_EVENT_GADGET_CREATE_5001" },
	{ config_id = 1005002, name = "SELECT_OPTION_5002", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_5002", action = "action_EVENT_SELECT_OPTION_5002" }
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
		gadgets = { 5003, 5004, 5005, 5006, 5007 },
		regions = { },
		triggers = { "GADGET_CREATE_5001", "SELECT_OPTION_5002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_5001(context, evt)
	if 5005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_5001(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220132005, 5005, {68}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_5002(context, evt)
	-- 判断是gadgetid 5005 option_id 68
	if 5005 ~= evt.param1 then
		return false	
	end
	
	if 68 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_5002(context, evt)
	-- 将configid为 5003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 220132005 ；指定config：5005；物件身上指定option：68；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220132005, 5005, 68) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将本组内变量名为 "KeyHigh" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "KeyHigh", 1, 220132011) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 针对当前group内变量名为 "KeyCount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "KeyCount", 1, 220132011) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	if ScriptLib.GetGroupVariableValueByGroup(context, "KeyCount", 220132011) ~= 3 then
	    if ScriptLib.GetGroupVariableValueByGroup(context, "KeyU", 220132011) ~= 1 then
	        ScriptLib.RefreshGroup(context, { group_id = 220132002, suite = 5 })
	        ScriptLib.RefreshGroup(context, { group_id = 220132010, suite = 1 })
	    else
	        ScriptLib.RefreshGroup(context, { group_id = 220132010, suite = 1 })
	        ScriptLib.RefreshGroup(context, { group_id = 220132002, suite = 9 })
	    end
	else
	    ScriptLib.RefreshGroup(context, { group_id = 220132011, suite = 2 })
	    ScriptLib.RefreshGroup(context, { group_id = 220132002, suite = 1 })
	    ScriptLib.RefreshGroup(context, { group_id = 220132010, suite = 1 })
	end
	
	return 0
end