-- 基础信息
local base_info = {
	group_id = 220137007
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
	{ config_id = 7001, gadget_id = 70310251, pos = { x = 550.410, y = 62.420, z = -200.620 }, rot = { x = 0.000, y = 133.591, z = 0.000 }, level = 1, persistent = true, arguments = { 4 } },
	{ config_id = 7002, gadget_id = 70310359, pos = { x = 535.372, y = 64.336, z = -182.366 }, rot = { x = 0.000, y = 44.568, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 7003, gadget_id = 70310360, pos = { x = 539.074, y = 70.672, z = -193.781 }, rot = { x = 0.000, y = 314.959, z = 0.000 }, level = 1, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1007004, name = "OBSERVATION_POINT_NOTIFY_7004", event = EventType.EVENT_OBSERVATION_POINT_NOTIFY, source = "", condition = "", action = "action_EVENT_OBSERVATION_POINT_NOTIFY_7004", trigger_count = 0 },
	{ config_id = 1007005, name = "OBSERVATION_POINT_NOTIFY_7005", event = EventType.EVENT_OBSERVATION_POINT_NOTIFY, source = "", condition = "", action = "action_EVENT_OBSERVATION_POINT_NOTIFY_7005", trigger_count = 0 },
	{ config_id = 1007006, name = "OBSERVATION_POINT_NOTIFY_7006", event = EventType.EVENT_OBSERVATION_POINT_NOTIFY, source = "", condition = "", action = "action_EVENT_OBSERVATION_POINT_NOTIFY_7006", trigger_count = 0 },
	-- 运营埋点-连接道路
	{ config_id = 1007007, name = "GADGET_STATE_CHANGE_7007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_7007", action = "action_EVENT_GADGET_STATE_CHANGE_7007", trigger_count = 0 }
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
		gadgets = { 7001, 7002, 7003 },
		regions = { },
		triggers = { "OBSERVATION_POINT_NOTIFY_7004", "OBSERVATION_POINT_NOTIFY_7005", "OBSERVATION_POINT_NOTIFY_7006", "GADGET_STATE_CHANGE_7007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_OBSERVATION_POINT_NOTIFY_7004(context, evt)
	if 7001 == evt.param1 and 305 == evt.param2 then
		ScriptLib.SetGadgetStateByConfigId(context,7002, GadgetState.GearStart)
		
		ScriptLib.SetGadgetStateByConfigId(context,7003, GadgetState.Default)
		
		ScriptLib.SetGadgetStateByConfigId(context,7001, 305)
	end
	
	return 0
end

-- 触发操作
function action_EVENT_OBSERVATION_POINT_NOTIFY_7005(context, evt)
	if 7001 == evt.param1 and 205 == evt.param2 then
		ScriptLib.SetGadgetStateByConfigId(context,7003, GadgetState.GearStart)
		
		ScriptLib.SetGadgetStateByConfigId(context,7002, GadgetState.Default)
		
		ScriptLib.SetGadgetStateByConfigId(context,7001, 205)
	end
	
	return 0
end

-- 触发操作
function action_EVENT_OBSERVATION_POINT_NOTIFY_7006(context, evt)
	if 7001 == evt.param1 and 0 == evt.param2 then
		ScriptLib.SetGadgetStateByConfigId(context,7003, GadgetState.Default)
		
		ScriptLib.SetGadgetStateByConfigId(context,7002, GadgetState.Default)
		
		ScriptLib.SetGadgetStateByConfigId(context,7001, GadgetState.Default)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_7007(context, evt)
	if 7003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_7007(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2802, 1, 0) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end