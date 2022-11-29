-- 基础信息
local base_info = {
	group_id = 166001389
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
	{ config_id = 389001, gadget_id = 70290395, pos = { x = 903.943, y = 720.705, z = 152.911 }, rot = { x = 353.830, y = 311.485, z = 22.823 }, level = 36, area_id = 300 },
	{ config_id = 389002, gadget_id = 70211101, pos = { x = 906.178, y = 722.233, z = 151.949 }, rot = { x = 11.396, y = 0.712, z = 7.125 }, level = 26, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 },
	{ config_id = 389004, gadget_id = 70290308, pos = { x = 901.753, y = 722.025, z = 156.053 }, rot = { x = 1.260, y = 87.125, z = 359.053 }, level = 36, area_id = 300 },
	{ config_id = 389005, gadget_id = 70290308, pos = { x = 907.349, y = 721.886, z = 157.978 }, rot = { x = 285.571, y = 281.513, z = 348.899 }, level = 36, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1389003, name = "ANY_GADGET_DIE_389003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_389003", action = "action_EVENT_ANY_GADGET_DIE_389003" },
	{ config_id = 1389006, name = "ANY_GADGET_DIE_389006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_389006", action = "action_EVENT_ANY_GADGET_DIE_389006", trigger_count = 0 }
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
	end_suite = 2,
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
		gadgets = { 389001, 389004, 389005 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_389003", "ANY_GADGET_DIE_389006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 389002 },
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
function condition_EVENT_ANY_GADGET_DIE_389003(context, evt)
	if 389001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_389003(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 166001389, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_389006(context, evt)
	if 389004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_389006(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 389001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end