-- 基础信息
local base_info = {
	group_id = 220139009
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
	{ config_id = 9001, gadget_id = 70310251, pos = { x = -80.915, y = 87.999, z = -84.105 }, rot = { x = 0.000, y = 267.162, z = 0.000 }, level = 1, state = GadgetState.ChestLocked, persistent = true, arguments = { 17 } },
	{ config_id = 9002, gadget_id = 70310282, pos = { x = -26.855, y = 87.896, z = -83.091 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1009003, name = "OBSERVATION_POINT_NOTIFY_9003", event = EventType.EVENT_OBSERVATION_POINT_NOTIFY, source = "", condition = "", action = "action_EVENT_OBSERVATION_POINT_NOTIFY_9003", trigger_count = 0 },
	-- 运营埋点-触发组件
	{ config_id = 1009004, name = "GADGET_STATE_CHANGE_9004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_9004", action = "action_EVENT_GADGET_STATE_CHANGE_9004", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 9005, gadget_id = 70310490, pos = { x = -26.029, y = 87.615, z = -78.744 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
	}
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
		gadgets = { 9001, 9002 },
		regions = { },
		triggers = { "OBSERVATION_POINT_NOTIFY_9003", "GADGET_STATE_CHANGE_9004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_OBSERVATION_POINT_NOTIFY_9003(context, evt)
	if 9001 == evt.param1 and 405 == evt.param2 then
		ScriptLib.SetGroupGadgetStateByConfigId(context, 220139010, 10003, GadgetState.GearStop)
		
		ScriptLib.SetGroupGadgetStateByConfigId(context, 220139010, 10004, GadgetState.GearStop)
		
		ScriptLib.SetGadgetStateByConfigId(context,9001, GadgetState.ChestOpened)
		
		ScriptLib.SetGadgetStateByConfigId(context,9002, GadgetState.GearStart)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_9004(context, evt)
	if 9002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_9004(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2802, 3, 0) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end