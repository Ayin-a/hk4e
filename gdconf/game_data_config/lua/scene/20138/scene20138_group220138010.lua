-- 基础信息
local base_info = {
	group_id = 220138010
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
	{ config_id = 10001, gadget_id = 70310251, pos = { x = -0.867, y = 4.369, z = -92.147 }, rot = { x = 0.000, y = 257.212, z = 0.000 }, level = 1, state = GadgetState.ChestLocked, persistent = true, arguments = { 21 } },
	{ config_id = 10002, gadget_id = 70310378, pos = { x = 45.390, y = 13.378, z = -75.350 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 10006, gadget_id = 70310487, pos = { x = 41.664, y = 11.869, z = -75.532 }, rot = { x = 0.000, y = 0.000, z = 90.000 }, level = 1, persistent = true },
	{ config_id = 10007, gadget_id = 70310429, pos = { x = 41.830, y = 21.334, z = -75.532 }, rot = { x = 0.000, y = 180.000, z = 270.000 }, level = 1, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1010003, name = "OBSERVATION_POINT_NOTIFY_10003", event = EventType.EVENT_OBSERVATION_POINT_NOTIFY, source = "", condition = "", action = "action_EVENT_OBSERVATION_POINT_NOTIFY_10003", trigger_count = 0 },
	{ config_id = 1010004, name = "OBSERVATION_POINT_NOTIFY_10004", event = EventType.EVENT_OBSERVATION_POINT_NOTIFY, source = "", condition = "", action = "action_EVENT_OBSERVATION_POINT_NOTIFY_10004", trigger_count = 0 },
	-- 运营埋点-补全物件
	{ config_id = 1010005, name = "GADGET_STATE_CHANGE_10005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_10005", action = "action_EVENT_GADGET_STATE_CHANGE_10005", trigger_count = 0 }
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
		gadgets = { 10001, 10002, 10006, 10007 },
		regions = { },
		triggers = { "OBSERVATION_POINT_NOTIFY_10003", "OBSERVATION_POINT_NOTIFY_10004", "GADGET_STATE_CHANGE_10005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_OBSERVATION_POINT_NOTIFY_10003(context, evt)
	if 10001 == evt.param1 and 204 == evt.param2 then
		ScriptLib.SetGadgetStateByConfigId(context,10002, GadgetState.GearStart)
		
		ScriptLib.AddQuestProgress(context, "4007215")
		
		ScriptLib.SetGadgetStateByConfigId(context,10001, GadgetState.GearAction2)
		
		ScriptLib.KillEntityByConfigId(context, {group_id=220138010, config_id=10006, entity_type=EntityType.GADGET})
		
		ScriptLib.KillEntityByConfigId(context, {group_id=220138010, config_id=10007, entity_type=EntityType.GADGET})
	end
	
	return 0
end

-- 触发操作
function action_EVENT_OBSERVATION_POINT_NOTIFY_10004(context, evt)
	if 10001 == evt.param1 and 0 == evt.param2 then
		ScriptLib.SetGadgetStateByConfigId(context,10002, GadgetState.Default)
		
		ScriptLib.SetGadgetStateByConfigId(context,10001, GadgetState.Default)
		
		ScriptLib.CreateGadget(context, {config_id=10006})
		
		ScriptLib.CreateGadget(context, {config_id=10007})
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_10005(context, evt)
	if 10002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_10005(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2802, 2, 0) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end