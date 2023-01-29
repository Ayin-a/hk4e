-- 基础信息
local base_info = {
	group_id = 220137013
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
	{ config_id = 13001, gadget_id = 70310251, pos = { x = 669.019, y = 58.420, z = -45.045 }, rot = { x = 0.000, y = 243.699, z = 0.000 }, level = 1, persistent = true, arguments = { 10 } },
	{ config_id = 13002, gadget_id = 70310361, pos = { x = 739.638, y = 78.834, z = 18.430 }, rot = { x = 0.000, y = 359.899, z = 0.000 }, level = 1, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1013003, name = "OBSERVATION_POINT_NOTIFY_13003", event = EventType.EVENT_OBSERVATION_POINT_NOTIFY, source = "", condition = "", action = "action_EVENT_OBSERVATION_POINT_NOTIFY_13003", trigger_count = 0 },
	-- 运营埋点-连接道路
	{ config_id = 1013005, name = "GADGET_STATE_CHANGE_13005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_13005", action = "action_EVENT_GADGET_STATE_CHANGE_13005", trigger_count = 0 }
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
		gadgets = { 13001, 13002 },
		regions = { },
		triggers = { "OBSERVATION_POINT_NOTIFY_13003", "GADGET_STATE_CHANGE_13005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_OBSERVATION_POINT_NOTIFY_13003(context, evt)
	if 13001 == evt.param1 and 205 == evt.param2 then
		ScriptLib.SetGadgetStateByConfigId(context,13002, GadgetState.GearStart)
		
		ScriptLib.AddQuestProgress(context, "4007116")
		
		ScriptLib.SetGadgetStateByConfigId(context,13001, GadgetState.ChestOpened)
		
		ScriptLib.SetGroupVariableValueByGroup(context, "towerPosition", 1, 220137005)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_13005(context, evt)
	if 13002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_13005(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2802, 1, 0) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end