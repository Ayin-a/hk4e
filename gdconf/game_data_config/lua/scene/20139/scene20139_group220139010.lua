-- 基础信息
local base_info = {
	group_id = 220139010
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
	{ config_id = 10001, gadget_id = 70310251, pos = { x = -25.020, y = 88.230, z = -72.138 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.ChestLocked, persistent = true, arguments = { 18 } },
	{ config_id = 10002, gadget_id = 70310282, pos = { x = -24.358, y = 88.021, z = -127.895 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 10003, gadget_id = 70310338, pos = { x = -24.857, y = 87.674, z = -127.926 }, rot = { x = 0.000, y = 179.464, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 10004, gadget_id = 70310335, pos = { x = -27.153, y = 88.073, z = -82.731 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 10005, gadget_id = 70310336, pos = { x = -63.636, y = 87.906, z = -85.440 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1010006, name = "OBSERVATION_POINT_NOTIFY_10006", event = EventType.EVENT_OBSERVATION_POINT_NOTIFY, source = "", condition = "", action = "action_EVENT_OBSERVATION_POINT_NOTIFY_10006", trigger_count = 0 },
	-- 检测2号方块完成后解锁2号鸦眼
	{ config_id = 1010008, name = "GADGET_STATE_CHANGE_10008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_10008", action = "action_EVENT_GADGET_STATE_CHANGE_10008", trigger_count = 0 },
	-- 检测3号方块完成解锁3号鸦眼
	{ config_id = 1010009, name = "GADGET_STATE_CHANGE_10009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_10009", action = "action_EVENT_GADGET_STATE_CHANGE_10009", trigger_count = 0 },
	-- 运营埋点-触发组件
	{ config_id = 1010011, name = "GADGET_STATE_CHANGE_10011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_10011", action = "action_EVENT_GADGET_STATE_CHANGE_10011", trigger_count = 0 }
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
		gadgets = { 10001, 10002, 10003, 10004, 10005 },
		regions = { },
		triggers = { "OBSERVATION_POINT_NOTIFY_10006", "GADGET_STATE_CHANGE_10008", "GADGET_STATE_CHANGE_10009", "GADGET_STATE_CHANGE_10011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_OBSERVATION_POINT_NOTIFY_10006(context, evt)
	if 10001 == evt.param1 and 405 == evt.param2 then
		ScriptLib.SetGadgetStateByConfigId(context,10003, GadgetState.GearAction1)
		
		ScriptLib.SetGadgetStateByConfigId(context,10001, GadgetState.ChestOpened)
		
		ScriptLib.SetGadgetStateByConfigId(context,10002, GadgetState.GearStart)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_10008(context, evt)
	-- 检测config_id为10004的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 10004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_10008(context, evt)
	-- 改变指定group组220139009中， configid为9001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220139009, 9001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_10009(context, evt)
	-- 检测config_id为10003的gadget是否从GadgetState.GearStart变为GadgetState.GearStop
	if 10003 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_10009(context, evt)
	-- 改变指定group组220139010中， configid为10001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220139010, 10001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_10011(context, evt)
	if 10005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_10011(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2802, 3, 0) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end