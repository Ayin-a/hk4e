-- 基础信息
local base_info = {
	group_id = 111101091
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
	{ config_id = 91001, gadget_id = 70950022, pos = { x = 2588.801, y = 217.631, z = -1401.752 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStop, route_id = 110100022 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1091002, name = "GADGET_STATE_CHANGE_91002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_91002", action = "action_EVENT_GADGET_STATE_CHANGE_91002", trigger_count = 0 },
	{ config_id = 1091003, name = "GADGET_STATE_CHANGE_91003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_91003", action = "action_EVENT_GADGET_STATE_CHANGE_91003", trigger_count = 0 }
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
		gadgets = { 91001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_91002", "GADGET_STATE_CHANGE_91003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_91002(context, evt)
	if 91001 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_91002(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 91001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_91003(context, evt)
	if 91001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_91003(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 91001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end