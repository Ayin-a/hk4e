-- 基础信息
local base_info = {
	group_id = 133301634
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
	{ config_id = 634001, gadget_id = 70290540, pos = { x = -840.805, y = 74.731, z = 3335.675 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, route_id = 330100166, start_route = false, persistent = true, area_id = 23 },
	{ config_id = 634002, gadget_id = 70290539, pos = { x = -904.591, y = 74.350, z = 3148.789 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, route_id = 330100146, start_route = false, persistent = true, area_id = 23 },
	{ config_id = 634004, gadget_id = 70360001, pos = { x = -830.733, y = 82.541, z = 3329.281 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 机兵完成下降水面
	{ config_id = 1634003, name = "VARIABLE_CHANGE_634003", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_634003", action = "action_EVENT_VARIABLE_CHANGE_634003", trigger_count = 0 },
	{ config_id = 1634005, name = "GROUP_LOAD_634005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_634005", action = "action_EVENT_GROUP_LOAD_634005", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "down", value = 0, no_refresh = true }
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
		gadgets = { 634001, 634002 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_634003", "GROUP_LOAD_634005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 634004 },
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
function condition_EVENT_VARIABLE_CHANGE_634003(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"down"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "down", 133301634) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_634003(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 634002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 634001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_634005(context, evt)
	-- 判断变量"down"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "down", 133301634) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_634005(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133301634, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end