-- 基础信息
local base_info = {
	group_id = 166001449
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
	{ config_id = 449001, gadget_id = 70290205, pos = { x = 319.395, y = 405.015, z = 569.335 }, rot = { x = 351.865, y = 298.334, z = 353.771 }, level = 36, area_id = 300 },
	{ config_id = 449002, gadget_id = 70290233, pos = { x = 315.941, y = 404.870, z = 565.560 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1449003, name = "ANY_GADGET_DIE_449003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_449003", action = "action_EVENT_ANY_GADGET_DIE_449003" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1449005, name = "ANY_GADGET_DIE_449005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_449005", action = "action_EVENT_ANY_GADGET_DIE_449005" },
		{ config_id = 1449006, name = "GADGET_CREATE_449006", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_449006", action = "action_EVENT_GADGET_CREATE_449006" }
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
		gadgets = { 449001, 449002 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_449003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_449003(context, evt)
	if 449001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_449003(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 449002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end