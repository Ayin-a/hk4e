-- 基础信息
local base_info = {
	group_id = 166001144
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
	{ config_id = 144002, gadget_id = 70290204, pos = { x = 942.244, y = 739.081, z = 365.190 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 300 },
	{ config_id = 144003, gadget_id = 70290233, pos = { x = 941.574, y = 739.275, z = 366.318 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1144005, name = "ANY_GADGET_DIE_144005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_144005", action = "action_EVENT_ANY_GADGET_DIE_144005" }
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
		gadgets = { 144002, 144003 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_144005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_144005(context, evt)
	if 144002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_144005(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 144003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

require "V2_6/DropRockAbyssBulletTrigger"