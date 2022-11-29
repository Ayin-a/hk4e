-- 基础信息
local base_info = {
	group_id = 240051004
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
	{ config_id = 4001, gadget_id = 70290508, pos = { x = 421.772, y = 72.804, z = 474.034 }, rot = { x = 0.000, y = 49.088, z = 0.000 }, level = 1 },
	{ config_id = 4002, gadget_id = 70290484, pos = { x = 421.772, y = 72.846, z = 474.034 }, rot = { x = 0.000, y = 49.088, z = 0.000 }, level = 1 },
	{ config_id = 4003, gadget_id = 70360001, pos = { x = 421.772, y = 72.846, z = 474.034 }, rot = { x = 0.000, y = 49.088, z = 0.000 }, level = 1, worktop_config = { init_options = { 220 } } }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
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
		gadgets = { 4001, 4002 },
		regions = { },
		triggers = { "SELECT_OPTION_4004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 4003 },
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
function condition_EVENT_SELECT_OPTION_4004(context, evt)
	-- 判断是gadgetid 4003 option_id 220
	if 4003 ~= evt.param1 then
		return false	
	end
	
	if 220 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_4004(context, evt)
	-- 删除指定group： 240051004 ；指定config：4003；物件身上指定option：220；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240051004, 4003, 220) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 4001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end