-- 基础信息
local base_info = {
	group_id = 155007113
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
	{ config_id = 113001, gadget_id = 70290278, pos = { x = -88.800, y = 201.000, z = 1444.500 }, rot = { x = 350.000, y = 55.000, z = 170.000 }, level = 36, isOneoff = true, persistent = true, area_id = 200 },
	{ config_id = 113002, gadget_id = 70360001, pos = { x = -86.542, y = 198.294, z = 1436.064 }, rot = { x = 0.000, y = 68.941, z = 0.000 }, level = 36, isOneoff = true, persistent = true, area_id = 200 },
	{ config_id = 113005, gadget_id = 70360089, pos = { x = -86.542, y = 198.294, z = 1436.064 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1113003, name = "GADGET_CREATE_113003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_113003", action = "action_EVENT_GADGET_CREATE_113003", trigger_count = 0 },
	{ config_id = 1113004, name = "SELECT_OPTION_113004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_113004", action = "action_EVENT_SELECT_OPTION_113004", trigger_count = 0 }
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
		gadgets = { 113001, 113002, 113005 },
		regions = { },
		triggers = { "GADGET_CREATE_113003", "SELECT_OPTION_113004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_113003(context, evt)
	if 113001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_113003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 155007113, 113002, {171}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_113004(context, evt)
	-- 判断是gadgetid 113002 option_id 171
	if 113002 ~= evt.param1 then
		return false	
	end
	
	if 171 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_113004(context, evt)
	-- 删除指定group： 155007113 ；指定config：113002；物件身上指定option：171；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 155007113, 113002, 171) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 113001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 113001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 113005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end