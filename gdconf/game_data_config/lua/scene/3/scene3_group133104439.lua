-- 基础信息
local base_info = {
	group_id = 133104439
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
	{ config_id = 439001, gadget_id = 70330019, pos = { x = 763.075, y = 261.567, z = 951.824 }, rot = { x = 3.888, y = 344.868, z = 359.808 }, level = 19, persistent = true, area_id = 6 },
	{ config_id = 439002, gadget_id = 70211112, pos = { x = 754.216, y = 268.738, z = 938.752 }, rot = { x = 0.000, y = 75.510, z = 0.000 }, level = 21, drop_tag = "解谜中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 439004, gadget_id = 70350004, pos = { x = 758.429, y = 273.859, z = 939.993 }, rot = { x = 0.094, y = 74.930, z = 180.094 }, level = 24, isOneoff = true, persistent = true, area_id = 6 },
	{ config_id = 439008, gadget_id = 70330019, pos = { x = 764.959, y = 267.033, z = 939.867 }, rot = { x = 0.747, y = 346.597, z = 356.137 }, level = 19, persistent = true, area_id = 6 },
	{ config_id = 439009, gadget_id = 70350004, pos = { x = 755.029, y = 273.829, z = 935.126 }, rot = { x = 359.604, y = 345.998, z = 180.031 }, level = 24, isOneoff = true, persistent = true, area_id = 6 }
}

-- 区域
regions = {
	{ config_id = 439011, shape = RegionShape.SPHERE, radius = 3, pos = { x = 754.311, y = 270.056, z = 938.969 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1439003, name = "GADGET_STATE_CHANGE_439003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_439003", action = "action_EVENT_GADGET_STATE_CHANGE_439003", trigger_count = 0 },
	{ config_id = 1439005, name = "GADGET_STATE_CHANGE_439005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_439005", action = "action_EVENT_GADGET_STATE_CHANGE_439005" },
	{ config_id = 1439007, name = "GROUP_LOAD_439007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_439007", action = "action_EVENT_GROUP_LOAD_439007", trigger_count = 0 },
	{ config_id = 1439011, name = "ENTER_REGION_439011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_439011", action = "action_EVENT_ENTER_REGION_439011" },
	{ config_id = 1439012, name = "TIMER_EVENT_439012", event = EventType.EVENT_TIMER_EVENT, source = "DestroyGate", condition = "", action = "action_EVENT_TIMER_EVENT_439012" }
}

-- 变量
variables = {
	{ config_id = 1, name = "flag", value = 0, no_refresh = true }
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
		gadgets = { 439001, 439002, 439004, 439008, 439009 },
		regions = { 439011 },
		triggers = { "GADGET_STATE_CHANGE_439003", "GROUP_LOAD_439007", "ENTER_REGION_439011", "TIMER_EVENT_439012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_439003(context, evt)
	-- 判断变量"flag"为0
	if ScriptLib.GetGroupVariableValue(context, "flag") ~= 0 then
	                return false
	end
	
	if 439001 ~= evt.param2 and 439008 ~= evt.param2 then
	        return false
	end
	
	if ScriptLib.GetGadgetStateByConfigId(context, 0, 439001) ~= GadgetState.GearStart then
	        return false
	end 
	
	if ScriptLib.GetGadgetStateByConfigId(context, 0, 439008) ~= GadgetState.GearStart then
	        return false
	end        
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_439003(context, evt)
	-- 将configid为 439002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 439002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 439004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 439004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 439009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 439009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "flag" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "flag", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 延迟3秒后,向groupId为：133104439的对象,请求一次调用,并将string参数："DestroyGate" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133104439, "DestroyGate", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_439005(context, evt)
	if 439004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_439005(context, evt)
	-- 通知场景上的所有玩家播放名字为133104440 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 133104440, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	-- 改变指定group组133104440中， configid为440006的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133104440, 440006, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_439007(context, evt)
	if ScriptLib.GetGadgetStateByConfigId(context, 0, 439001) ~= GadgetState.GearStart then
	        return false
	end 
	
	if ScriptLib.GetGadgetStateByConfigId(context, 0, 439008) ~= GadgetState.GearStart then
	        return false
	end        
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_439007(context, evt)
	-- 将configid为 439002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 439002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 439004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 439004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 439009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 439009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_439011(context, evt)
	if evt.param1 ~= 439011 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_439011(context, evt)
	-- 将configid为 439004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 439004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 439009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 439009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 延迟3秒后,向groupId为：133104439的对象,请求一次调用,并将string参数："DestroyGate" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133104439, "DestroyGate", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_439012(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 439004 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 439009 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end