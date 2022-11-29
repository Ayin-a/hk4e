-- 基础信息
local base_info = {
	group_id = 250015063
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 63005, monster_id = 21010101, pos = { x = 54.088, y = 0.500, z = 119.131 }, rot = { x = 0.000, y = 157.386, z = 0.000 }, level = 1 },
	{ config_id = 63006, monster_id = 21010101, pos = { x = 59.794, y = 0.500, z = 118.837 }, rot = { x = 0.000, y = 207.910, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 63001, gadget_id = 70380019, pos = { x = 56.397, y = 0.500, z = 92.800 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 33, start_route = false },
	{ config_id = 63002, gadget_id = 70360002, pos = { x = 60.843, y = 0.500, z = 90.244 }, rot = { x = 0.000, y = 181.679, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1063003, name = "GADGET_CREATE_63003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_63003", action = "action_EVENT_GADGET_CREATE_63003", trigger_count = 0 },
	{ config_id = 1063004, name = "PLATFORM_REACH_POINT_63004", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_63004", action = "action_EVENT_PLATFORM_REACH_POINT_63004" },
	{ config_id = 1063007, name = "SELECT_OPTION_63007", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_63007", action = "action_EVENT_SELECT_OPTION_63007" }
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
		gadgets = { 63001, 63002 },
		regions = { },
		triggers = { "GADGET_CREATE_63003", "PLATFORM_REACH_POINT_63004", "SELECT_OPTION_63007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_63003(context, evt)
	if 63002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_63003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 250015063, 63002, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_63004(context, evt)
	-- 判断是gadgetid 为 63001的移动平台，是否到达了33 的路线中的 1 点
	
	if 63001 ~= evt.param1 then
	  return false
	end
	
	if 33 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_63004(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 63005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 63006, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_63007(context, evt)
	-- 判断是gadgetid 63002 option_id 7
	if 63002 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_63007(context, evt)
	-- 删除指定group： 250015063 ；指定config：63002；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 250015063, 63002, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 63002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 63001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end