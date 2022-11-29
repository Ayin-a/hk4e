-- 基础信息
local base_info = {
	group_id = 111101079
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
	{ config_id = 79001, gadget_id = 70900379, pos = { x = 2596.550, y = 211.433, z = -1381.856 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, talk_state = 6800004 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1079002, name = "GADGETTALK_DONE_79002", event = EventType.EVENT_GADGETTALK_DONE, source = "6800004", condition = "", action = "action_EVENT_GADGETTALK_DONE_79002" }
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
		gadgets = { 79001 },
		regions = { },
		triggers = { "GADGETTALK_DONE_79002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GADGETTALK_DONE_79002(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 79001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end