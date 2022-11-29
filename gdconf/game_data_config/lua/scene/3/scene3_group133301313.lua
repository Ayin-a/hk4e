-- 基础信息
local base_info = {
	group_id = 133301313
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
	{ config_id = 313001, gadget_id = 70310198, pos = { x = -872.535, y = 220.163, z = 3196.956 }, rot = { x = 3.682, y = 105.967, z = 11.484 }, level = 30, area_id = 23 },
	{ config_id = 313002, gadget_id = 70330218, pos = { x = -859.169, y = 218.125, z = 3225.308 }, rot = { x = 350.066, y = 174.099, z = 10.598 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 313003, gadget_id = 70330218, pos = { x = -857.921, y = 219.039, z = 3229.367 }, rot = { x = 358.564, y = 355.652, z = 333.538 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 313004, gadget_id = 70310198, pos = { x = -844.611, y = 216.549, z = 3249.061 }, rot = { x = 7.526, y = 55.146, z = 358.040 }, level = 30, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1313005, name = "ANY_GADGET_DIE_313005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_313005", action = "action_EVENT_ANY_GADGET_DIE_313005" },
	{ config_id = 1313006, name = "ANY_GADGET_DIE_313006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_313006", action = "action_EVENT_ANY_GADGET_DIE_313006" }
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
		gadgets = { 313001, 313002, 313003, 313004 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_313005", "ANY_GADGET_DIE_313006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_313005(context, evt)
	if 313002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_313005(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 313003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_313006(context, evt)
	if 313003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_313006(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 313002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end