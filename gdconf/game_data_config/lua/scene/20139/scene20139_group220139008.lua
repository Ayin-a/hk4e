-- 基础信息
local base_info = {
	group_id = 220139008
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
	{ config_id = 8001, gadget_id = 70310251, pos = { x = -63.432, y = 89.900, z = -135.788 }, rot = { x = 0.000, y = 181.992, z = 0.000 }, level = 1, persistent = true, arguments = { 16 } },
	{ config_id = 8002, gadget_id = 70310282, pos = { x = -63.737, y = 87.609, z = -86.912 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1008003, name = "OBSERVATION_POINT_NOTIFY_8003", event = EventType.EVENT_OBSERVATION_POINT_NOTIFY, source = "", condition = "", action = "action_EVENT_OBSERVATION_POINT_NOTIFY_8003", trigger_count = 0 },
	-- 运营埋点-触发组件
	{ config_id = 1008004, name = "GADGET_STATE_CHANGE_8004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_8004", action = "action_EVENT_GADGET_STATE_CHANGE_8004", trigger_count = 0 }
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
		gadgets = { 8001, 8002 },
		regions = { },
		triggers = { "OBSERVATION_POINT_NOTIFY_8003", "GADGET_STATE_CHANGE_8004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_OBSERVATION_POINT_NOTIFY_8003(context, evt)
	if 8001 == evt.param1 and 405 == evt.param2 then
		ScriptLib.SetGroupGadgetStateByConfigId(context, 220139010, 10003, GadgetState.GearStart)
		
		ScriptLib.SetGroupGadgetStateByConfigId(context, 220139010, 10004, GadgetState.GearStart)
		
		ScriptLib.SetGroupGadgetStateByConfigId(context, 220139010, 10005, GadgetState.GearStart)
		
		ScriptLib.SetGadgetStateByConfigId(context,8001, GadgetState.ChestOpened)
		
		ScriptLib.SetGadgetStateByConfigId(context,8002, GadgetState.GearStart)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_8004(context, evt)
	if 8002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_8004(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2802, 3, 0) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end