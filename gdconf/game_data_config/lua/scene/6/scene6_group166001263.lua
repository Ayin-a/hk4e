-- 基础信息
local base_info = {
	group_id = 166001263
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
	{ config_id = 263001, gadget_id = 70500000, pos = { x = 1167.565, y = 969.108, z = 521.836 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 9286, isOneoff = true, persistent = true, area_id = 300 },
	{ config_id = 263002, gadget_id = 70360089, pos = { x = 1167.626, y = 969.217, z = 521.817 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1263003, name = "GATHER_263003", event = EventType.EVENT_GATHER, source = "", condition = "", action = "action_EVENT_GATHER_263003", trigger_count = 0 }
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
		gadgets = { 263001, 263002 },
		regions = { },
		triggers = { "GATHER_263003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GATHER_263003(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 263002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end