-- 基础信息
local base_info = {
	group_id = 240051008
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
	{ config_id = 8001, gadget_id = 70290506, pos = { x = 468.475, y = 143.219, z = 475.375 }, rot = { x = 0.000, y = 340.487, z = 0.000 }, level = 1 },
	{ config_id = 8002, gadget_id = 70360001, pos = { x = 468.338, y = 144.068, z = 476.040 }, rot = { x = 0.000, y = 340.487, z = 0.000 }, level = 1, worktop_config = { init_options = { 769 } } }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1008003, name = "SELECT_OPTION_8003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_8003", action = "action_EVENT_SELECT_OPTION_8003" },
	{ config_id = 1008004, name = "GADGET_STATE_CHANGE_8004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_8004", action = "action_EVENT_GADGET_STATE_CHANGE_8004" }
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
		gadgets = { 8001 },
		regions = { },
		triggers = { "SELECT_OPTION_8003", "GADGET_STATE_CHANGE_8004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 8002 },
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
function condition_EVENT_SELECT_OPTION_8003(context, evt)
	-- 判断是gadgetid 8002 option_id 769
	if 8002 ~= evt.param1 then
		return false	
	end
	
	if 769 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_8003(context, evt)
	-- 删除指定group： 240051008 ；指定config：8002；物件身上指定option：769；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240051008, 8002, 769) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 8001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_8004(context, evt)
	if 8001 ~= evt.param2 or GadgetState.Action03 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_8004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240051008, 2)
	
	return 0
end