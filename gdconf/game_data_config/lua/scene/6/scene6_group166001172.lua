-- 基础信息
local base_info = {
	group_id = 166001172
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
	{ config_id = 172001, gadget_id = 70290204, pos = { x = 825.984, y = 986.376, z = 733.294 }, rot = { x = 0.000, y = 101.424, z = 0.000 }, level = 32, area_id = 300 },
	{ config_id = 172002, gadget_id = 70290233, pos = { x = 826.568, y = 987.634, z = 733.227 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1172003, name = "ANY_GADGET_DIE_172003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_172003", action = "action_EVENT_ANY_GADGET_DIE_172003" }
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
		gadgets = { 172001, 172002 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_172003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_172003(context, evt)
	if 172001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_172003(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 172002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end