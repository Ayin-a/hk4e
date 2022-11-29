-- 基础信息
local base_info = {
	group_id = 250075004
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
	{ config_id = 4001, gadget_id = 70290487, pos = { x = 461.758, y = 13.478, z = 491.686 }, rot = { x = 0.000, y = 10.000, z = 0.000 }, level = 1 },
	{ config_id = 4002, gadget_id = 70290487, pos = { x = 472.874, y = 31.969, z = 476.835 }, rot = { x = 0.000, y = 334.000, z = 0.000 }, level = 1 },
	{ config_id = 4003, gadget_id = 70290487, pos = { x = 457.699, y = 19.158, z = 563.866 }, rot = { x = 0.000, y = 35.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1004004, name = "GADGET_CREATE_4004", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_4004", action = "action_EVENT_GADGET_CREATE_4004" },
	{ config_id = 1004005, name = "GADGET_CREATE_4005", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_4005", action = "action_EVENT_GADGET_CREATE_4005" }
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
		gadgets = { 4001, 4002, 4003 },
		regions = { },
		triggers = { "GADGET_CREATE_4004", "GADGET_CREATE_4005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_4004(context, evt)
	if 4002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_4004(context, evt)
	-- 将configid为 4002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_4005(context, evt)
	if 4003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_4005(context, evt)
	-- 将configid为 4003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end