-- 基础信息
local base_info = {
	group_id = 133213039
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
	{ config_id = 39001, gadget_id = 70380031, pos = { x = -3570.226, y = 218.576, z = -3129.254 }, rot = { x = 0.000, y = 262.116, z = 0.000 }, level = 27, route_id = 321300051, start_route = false, persistent = true, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1039006, name = "AVATAR_NEAR_PLATFORM_39006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_39006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_39006", trigger_count = 0 }
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
		gadgets = { 39001 },
		regions = { },
		triggers = { "AVATAR_NEAR_PLATFORM_39006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_39006(context, evt)
	if 39001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_AVATAR_NEAR_PLATFORM_39006(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 39001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end