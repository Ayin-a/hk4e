-- 基础信息
local base_info = {
	group_id = 133310613
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
	{ config_id = 613001, gadget_id = 70330404, pos = { x = -2464.644, y = 117.441, z = 4768.924 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 613002, gadget_id = 70330404, pos = { x = -2487.743, y = 114.363, z = 4773.642 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	-- 石头里
	{ config_id = 613003, gadget_id = 70330404, pos = { x = -2511.703, y = 118.428, z = 4763.228 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 27 },
	{ config_id = 613005, gadget_id = 70211151, pos = { x = -2469.167, y = 119.020, z = 4766.034 }, rot = { x = 8.450, y = 117.956, z = 352.292 }, level = 26, chest_drop_id = 21910100, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 },
	{ config_id = 613009, gadget_id = 70330340, pos = { x = -2512.956, y = 119.249, z = 4761.962 }, rot = { x = 344.672, y = 290.194, z = 346.410 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 613012, gadget_id = 70330435, pos = { x = -2483.672, y = 114.192, z = 4778.492 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1613006, name = "GADGET_STATE_CHANGE_613006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_613006", action = "action_EVENT_GADGET_STATE_CHANGE_613006", trigger_count = 0 },
	{ config_id = 1613010, name = "ANY_GADGET_DIE_613010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_613010", action = "action_EVENT_ANY_GADGET_DIE_613010" },
	-- 保底消除石头 保底开宝箱
	{ config_id = 1613011, name = "GROUP_LOAD_613011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_613011", action = "action_EVENT_GROUP_LOAD_613011", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "finished", value = 0, no_refresh = true }
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
		gadgets = { 613001, 613002, 613003, 613005, 613009, 613012 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_613006", "ANY_GADGET_DIE_613010", "GROUP_LOAD_613011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_613006(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133310613, 613001) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133310613, 613002) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133310613, 613003) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_613006(context, evt)
	-- 将本组内变量名为 "finished" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finished", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 613005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 613005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_613010(context, evt)
	if 613009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_613010(context, evt)
	-- 将configid为 613003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 613003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_613011(context, evt)
	-- 判断变量"finished"为1
	if ScriptLib.GetGroupVariableValue(context, "finished") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_613011(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 613009 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 613005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 613005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end