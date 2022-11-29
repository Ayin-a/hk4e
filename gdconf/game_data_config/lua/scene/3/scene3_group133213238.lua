-- 基础信息
local base_info = {
	group_id = 133213238
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
	{ config_id = 238001, gadget_id = 70500000, pos = { x = -3287.642, y = 208.393, z = -3254.590 }, rot = { x = 283.470, y = 163.056, z = 342.973 }, level = 27, point_type = 9173, isOneoff = true, persistent = true, area_id = 12 },
	{ config_id = 238002, gadget_id = 70500000, pos = { x = -3554.125, y = 202.589, z = -2809.182 }, rot = { x = 280.687, y = 15.510, z = 289.367 }, level = 27, point_type = 9174, isOneoff = true, persistent = true, area_id = 13 },
	{ config_id = 238004, gadget_id = 70360089, pos = { x = -3287.648, y = 208.465, z = -3254.579 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, isOneoff = true, persistent = true, area_id = 12 },
	{ config_id = 238006, gadget_id = 70360089, pos = { x = -3554.101, y = 202.678, z = -2809.247 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, isOneoff = true, persistent = true, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1238003, name = "GATHER_238003", event = EventType.EVENT_GATHER, source = "238001", condition = "", action = "action_EVENT_GATHER_238003" },
	{ config_id = 1238005, name = "GATHER_238005", event = EventType.EVENT_GATHER, source = "238002", condition = "", action = "action_EVENT_GATHER_238005" }
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
		gadgets = { 238001, 238002, 238004, 238006 },
		regions = { },
		triggers = { "GATHER_238003", "GATHER_238005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GATHER_238003(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 238004 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_GATHER_238005(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 238006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end