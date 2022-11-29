-- 基础信息
local base_info = {
	group_id = 220121008
}

-- Trigger变量
local defs = {
	point_sum = 11,
	route_2 = 2,
	gadget_seelie = 8002
}

-- DEFS_MISCS
defs.final_point = defs.point_sum - 1

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
	{ config_id = 8002, gadget_id = 70710010, pos = { x = -34.518, y = -255.698, z = 40.379 }, rot = { x = 0.000, y = 183.424, z = 0.000 }, level = 1, route_id = 2, start_route = false }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1008005, name = "PLATFORM_REACH_POINT_8005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_8005", action = "action_EVENT_PLATFORM_REACH_POINT_8005", trigger_count = 0 },
	{ config_id = 1008007, name = "QUEST_FINISH_8007", event = EventType.EVENT_QUEST_FINISH, source = "1101329", condition = "", action = "action_EVENT_QUEST_FINISH_8007", trigger_count = 0 }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 8002 },
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_8005", "QUEST_FINISH_8007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { },
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
function condition_EVENT_PLATFORM_REACH_POINT_8005(context, evt)
	-- 判断是gadgetid 为 8002的移动平台，是否到达了2 的路线中的 8 点
	
	if 8002 ~= evt.param1 then
	  return false
	end
	
	if 2 ~= evt.param2 then
	  return false
	end
	
	if 8 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_8005(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 8002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220121008, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_8007(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 8002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end