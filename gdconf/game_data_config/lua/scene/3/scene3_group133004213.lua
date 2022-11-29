-- 基础信息
local base_info = {
	group_id = 133004213
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
	{ config_id = 1187, gadget_id = 70620001, pos = { x = 2630.906, y = 260.824, z = -385.500 }, rot = { x = 0.000, y = 26.540, z = 0.000 }, level = 20, isOneoff = true, area_id = 4 },
	{ config_id = 1188, gadget_id = 70500000, pos = { x = 2630.906, y = 261.882, z = -385.500 }, rot = { x = 0.000, y = 234.085, z = 0.000 }, level = 20, point_type = 4001001, isOneoff = true, explore = { name = "gather", exp = 3 }, area_id = 4 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000229, name = "GATHER_229", event = EventType.EVENT_GATHER, source = "1188", condition = "", action = "action_EVENT_GATHER_229" }
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
		gadgets = { 1187, 1188 },
		regions = { },
		triggers = { "GATHER_229" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GATHER_229(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 1187 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end