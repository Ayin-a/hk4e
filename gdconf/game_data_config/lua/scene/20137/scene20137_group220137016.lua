-- 基础信息
local base_info = {
	group_id = 220137016
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
	{ config_id = 16001, gadget_id = 70310251, pos = { x = 700.984, y = 73.810, z = -134.529 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, arguments = { 29 } },
	{ config_id = 16002, gadget_id = 70310251, pos = { x = 701.147, y = 73.810, z = -150.323 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, arguments = { 30 } },
	{ config_id = 16003, gadget_id = 70310435, pos = { x = 698.916, y = 82.201, z = -142.631 }, rot = { x = 0.000, y = 270.839, z = 0.000 }, level = 1 },
	{ config_id = 16004, gadget_id = 70211101, pos = { x = 706.149, y = 95.503, z = -134.040 }, rot = { x = 0.000, y = 269.713, z = 0.000 }, level = 16, drop_tag = "解谜低级群岛", isOneoff = true, persistent = true },
	{ config_id = 16005, gadget_id = 70211101, pos = { x = 706.205, y = 95.628, z = -150.841 }, rot = { x = 0.000, y = 270.250, z = 0.000 }, level = 16, drop_tag = "解谜低级群岛", isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 鸦眼1成功切物件到201
	{ config_id = 1016006, name = "OBSERVATION_POINT_NOTIFY_16006", event = EventType.EVENT_OBSERVATION_POINT_NOTIFY, source = "", condition = "", action = "action_EVENT_OBSERVATION_POINT_NOTIFY_16006", trigger_count = 0 },
	-- 鸦眼2成功切物件到202
	{ config_id = 1016007, name = "OBSERVATION_POINT_NOTIFY_16007", event = EventType.EVENT_OBSERVATION_POINT_NOTIFY, source = "", condition = "", action = "action_EVENT_OBSERVATION_POINT_NOTIFY_16007", trigger_count = 0 },
	{ config_id = 1016008, name = "OBSERVATION_POINT_NOTIFY_16008", event = EventType.EVENT_OBSERVATION_POINT_NOTIFY, source = "", condition = "", action = "action_EVENT_OBSERVATION_POINT_NOTIFY_16008", trigger_count = 0 },
	{ config_id = 1016009, name = "OBSERVATION_POINT_NOTIFY_16009", event = EventType.EVENT_OBSERVATION_POINT_NOTIFY, source = "", condition = "", action = "action_EVENT_OBSERVATION_POINT_NOTIFY_16009", trigger_count = 0 },
	-- 运营埋点-连接道路
	{ config_id = 1016010, name = "GADGET_STATE_CHANGE_16010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_16010", action = "action_EVENT_GADGET_STATE_CHANGE_16010", trigger_count = 0 }
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
		gadgets = { 16001, 16002, 16003, 16004, 16005 },
		regions = { },
		triggers = { "OBSERVATION_POINT_NOTIFY_16006", "OBSERVATION_POINT_NOTIFY_16007", "OBSERVATION_POINT_NOTIFY_16008", "OBSERVATION_POINT_NOTIFY_16009", "GADGET_STATE_CHANGE_16010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_OBSERVATION_POINT_NOTIFY_16006(context, evt)
	if 16001 == evt.param1 or 205 == evt.param2 then
		ScriptLib.SetGadgetStateByConfigId(context,16003, GadgetState.GearStop)
		
		ScriptLib.SetGadgetStateByConfigId(context,16002, GadgetState.ChestLocked)
		
		ScriptLib.SetGadgetStateByConfigId(context,16001, 205)
	end
	
	return 0
end

-- 触发操作
function action_EVENT_OBSERVATION_POINT_NOTIFY_16007(context, evt)
	if 16002 == evt.param1 and 205 == evt.param2 then
		ScriptLib.SetGadgetStateByConfigId(context,16003, GadgetState.GearStart)
		
		ScriptLib.SetGadgetStateByConfigId(context,16001, GadgetState.ChestLocked)
		
		ScriptLib.SetGadgetStateByConfigId(context,16002, 205)
	end
	
	return 0
end

-- 触发操作
function action_EVENT_OBSERVATION_POINT_NOTIFY_16008(context, evt)
	if 16001 == evt.param1 and 0 == evt.param2 then
		ScriptLib.SetGadgetStateByConfigId(context,16002, GadgetState.Default)
		
		ScriptLib.SetGadgetStateByConfigId(context,16003, GadgetState.Default)
		
		ScriptLib.SetGadgetStateByConfigId(context,16001, GadgetState.Default)
	end
	
	return 0
end

-- 触发操作
function action_EVENT_OBSERVATION_POINT_NOTIFY_16009(context, evt)
	if 16002 == evt.param1 and 0 == evt.param2 then
		ScriptLib.SetGadgetStateByConfigId(context,16001, GadgetState.Default)
		
		ScriptLib.SetGadgetStateByConfigId(context,16003, GadgetState.Default)
		
		ScriptLib.SetGadgetStateByConfigId(context,16002, GadgetState.Default)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_16010(context, evt)
	if 16003 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_16010(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2802, 1, 0) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end