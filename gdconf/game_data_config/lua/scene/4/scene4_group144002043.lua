-- 基础信息
local base_info = {
	group_id = 144002043
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
	{ config_id = 43001, gadget_id = 70690026, pos = { x = 612.601, y = 122.440, z = -557.411 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 43002, gadget_id = 70220032, pos = { x = 612.804, y = 122.284, z = -558.280 }, rot = { x = 0.000, y = 134.588, z = 0.000 }, level = 1, area_id = 101 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1043003, name = "GADGET_STATE_CHANGE_43003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_43003", action = "action_EVENT_GADGET_STATE_CHANGE_43003", trigger_count = 0 },
	{ config_id = 1043004, name = "TIMER_EVENT_43004", event = EventType.EVENT_TIMER_EVENT, source = "duration", condition = "", action = "action_EVENT_TIMER_EVENT_43004", trigger_count = 0 }
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
		gadgets = { 43002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_43003", "TIMER_EVENT_43004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 43001 },
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
function condition_EVENT_GADGET_STATE_CHANGE_43003(context, evt)
	if 43002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_43003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144002043, 2)
	
	-- 延迟20秒后,向groupId为：144002043的对象,请求一次调用,并将string参数："duration" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 144002043, "duration", 20) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_43004(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144002043, 2)
	
	return 0
end