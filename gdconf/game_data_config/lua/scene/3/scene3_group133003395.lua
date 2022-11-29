-- 基础信息
local base_info = {
	group_id = 133003395
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
	{ config_id = 3703, gadget_id = 70220014, pos = { x = 2404.500, y = 251.060, z = -1417.950 }, rot = { x = 0.000, y = 297.501, z = 0.000 }, level = 10, area_id = 1 },
	{ config_id = 3704, gadget_id = 70220014, pos = { x = 2400.739, y = 251.166, z = -1417.415 }, rot = { x = 0.000, y = 297.501, z = 0.000 }, level = 5, area_id = 1 },
	{ config_id = 3876, gadget_id = 70210101, pos = { x = 2400.979, y = 251.720, z = -1416.900 }, rot = { x = 0.000, y = 17.375, z = 0.000 }, level = 6, drop_tag = "搜刮点解谜通用蒙德", area_id = 1 },
	{ config_id = 3877, gadget_id = 70210101, pos = { x = 2404.474, y = 251.709, z = -1417.446 }, rot = { x = 0.000, y = 17.375, z = 0.000 }, level = 6, drop_tag = "搜刮点解谜通用蒙德", area_id = 1 },
	{ config_id = 4163, gadget_id = 70220016, pos = { x = 2406.330, y = 251.014, z = -1416.465 }, rot = { x = 309.235, y = 87.488, z = 284.261 }, level = 10, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000480, name = "ANY_GADGET_DIE_480", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_480", action = "action_EVENT_ANY_GADGET_DIE_480" },
	{ config_id = 1000481, name = "ANY_GADGET_DIE_481", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_481", action = "action_EVENT_ANY_GADGET_DIE_481" }
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
	rand_suite = true
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
		gadgets = { 3703, 3704, 3876, 3877, 4163 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_480", "ANY_GADGET_DIE_481" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_480(context, evt)
	if 3703 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_480(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 3877 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_481(context, evt)
	if 3704 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_481(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 3876 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end