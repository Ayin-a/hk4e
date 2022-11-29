-- 基础信息
local base_info = {
	group_id = 240409017
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
	{ config_id = 17001, gadget_id = 70340011, pos = { x = 0.016, y = -0.438, z = -40.416 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 17002, gadget_id = 70350008, pos = { x = 0.169, y = 3.000, z = -36.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1017008, name = "DUNGEON_SETTLE_17008", event = EventType.EVENT_DUNGEON_SETTLE, source = "", condition = "condition_EVENT_DUNGEON_SETTLE_17008", action = "action_EVENT_DUNGEON_SETTLE_17008" },
	{ config_id = 1017009, name = "DUNGEON_REWARD_GET_17009", event = EventType.EVENT_DUNGEON_REWARD_GET, source = "", condition = "", action = "action_EVENT_DUNGEON_REWARD_GET_17009" }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 17001, 17002 },
		regions = { },
		triggers = { "DUNGEON_SETTLE_17008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_DUNGEON_SETTLE_17008(context, evt)
	-- 判断副本成功
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_DUNGEON_SETTLE_17008(context, evt)
	-- 将configid为 17001 的物件更改为状态 GadgetState.StatueActive
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 17001, GadgetState.StatueActive) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240409016, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 改变指定group组240409011中， configid为11003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240409011, 11003, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240409011中， configid为11004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240409011, 11004, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240409011中， configid为11005的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240409011, 11005, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240409011中， configid为11006的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240409011, 11006, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240409011中， configid为11007的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240409011, 11007, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240409011中， configid为11008的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240409011, 11008, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240409011中， configid为11009的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240409011, 11009, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240409011中， configid为11010的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240409011, 11010, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240409011中， configid为11011的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240409011, 11011, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 240409011, "Snow_Timer") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_DUNGEON_REWARD_GET_17009(context, evt)
	-- 将configid为 17001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 17001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end