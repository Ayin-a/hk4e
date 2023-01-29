-- 基础信息
local base_info = {
	group_id = 220137012
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
	{ config_id = 12001, gadget_id = 70310251, pos = { x = 700.749, y = 73.752, z = -96.011 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, arguments = { 9 } },
	{ config_id = 12002, gadget_id = 70310357, pos = { x = 694.087, y = 60.607, z = -92.059 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1012003, name = "OBSERVATION_POINT_NOTIFY_12003", event = EventType.EVENT_OBSERVATION_POINT_NOTIFY, source = "", condition = "", action = "action_EVENT_OBSERVATION_POINT_NOTIFY_12003", trigger_count = 0 },
	-- 运营埋点-连接道路
	{ config_id = 1012005, name = "GADGET_STATE_CHANGE_12005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_12005", action = "action_EVENT_GADGET_STATE_CHANGE_12005", trigger_count = 0 }
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
		gadgets = { 12001, 12002 },
		regions = { },
		triggers = { "OBSERVATION_POINT_NOTIFY_12003", "GADGET_STATE_CHANGE_12005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_OBSERVATION_POINT_NOTIFY_12003(context, evt)
	if 12001 == evt.param1 and 605 == evt.param2 then
		ScriptLib.SetGadgetStateByConfigId(context,12002, GadgetState.GearStart)
		
		ScriptLib.SetGroupVariableValueByGroup(context, "eyefinish3", 1, 220137021)
		
		ScriptLib.SetGadgetStateByConfigId(context,12001, GadgetState.ChestOpened)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_12005(context, evt)
	if 12002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_12005(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2802, 1, 0) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end