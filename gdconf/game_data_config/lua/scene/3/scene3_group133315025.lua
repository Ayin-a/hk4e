-- 基础信息
local base_info = {
	group_id = 133315025
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
	{ config_id = 25001, gadget_id = 70310190, pos = { x = 532.588, y = 94.842, z = 2494.200 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, route_id = 331500043, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1025002, name = "QUEST_START_25002", event = EventType.EVENT_QUEST_START, source = "7306641", condition = "", action = "action_EVENT_QUEST_START_25002" },
	{ config_id = 1025003, name = "PLATFORM_ARRIVAL_25003", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_25003", action = "action_EVENT_PLATFORM_ARRIVAL_25003" }
}

-- 变量
variables = {
	{ config_id = 1, name = "isfinished", value = 0, no_refresh = true }
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
		gadgets = { },
		regions = { },
		triggers = { "QUEST_START_25002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 25001 },
		regions = { },
		triggers = { "PLATFORM_ARRIVAL_25003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_START_25002(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133315025, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_25003(context, evt)
	-- 判断是gadgetid 为 25001的移动平台，是否到达了331500043 的路线中的 1 点
	
	if 25001 ~= evt.param1 then
	  return false
	end
	
	if 331500043 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_25003(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 25001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

require "V3_0/DeathFieldStandard"