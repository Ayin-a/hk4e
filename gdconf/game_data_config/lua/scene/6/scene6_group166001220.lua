-- 基础信息
local base_info = {
	group_id = 166001220
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
	{ config_id = 220001, gadget_id = 70380303, pos = { x = 975.753, y = 841.471, z = 545.587 }, rot = { x = 0.000, y = 19.492, z = 0.000 }, level = 27, route_id = 600100015, start_route = false, persistent = true, server_global_value_config = { ["SGV_Elevator_Height"]= 966}, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1220002, name = "AVATAR_NEAR_PLATFORM_220002", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_220002", action = "action_EVENT_AVATAR_NEAR_PLATFORM_220002", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "pos", value = 0, no_refresh = false }
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
		gadgets = { 220001 },
		regions = { },
		triggers = { "AVATAR_NEAR_PLATFORM_220002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_220002(context, evt)
	if 220001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_AVATAR_NEAR_PLATFORM_220002(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 220001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end