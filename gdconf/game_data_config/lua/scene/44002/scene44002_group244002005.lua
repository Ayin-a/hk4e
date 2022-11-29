-- 基础信息
local base_info = {
	group_id = 244002005
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
	{ config_id = 5008, gadget_id = 70360002, pos = { x = 343.258, y = -19.277, z = 343.700 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_guest_can_operate = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1005001, name = "GADGET_CREATE_5001", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_5001", action = "action_EVENT_GADGET_CREATE_5001" },
	{ config_id = 1005004, name = "SELECT_OPTION_5004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_5004", action = "action_EVENT_SELECT_OPTION_5004", forbid_guest = false }
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
		gadgets = { 5008 },
		regions = { },
		triggers = { "GADGET_CREATE_5001", "SELECT_OPTION_5004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
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
function condition_EVENT_GADGET_CREATE_5001(context, evt)
	if 5008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_5001(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 244002005, 5008, {214}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_5004(context, evt)
	-- 判断是gadgetid 5008 option_id 214
	if 5008 ~= evt.param1 then
		return false	
	end
	
	if 214 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_5004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 244002006, 2)
	
	-- 删除指定group： 244002005 ；指定config：5008；物件身上指定option：214；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 244002005, 5008, 214) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 改变指定group组244002001中， configid为1022的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 244002001, 1022, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组244002001中， configid为1023的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 244002001, 1023, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 将configid为 5008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 244002009, 3)
	
	return 0
end