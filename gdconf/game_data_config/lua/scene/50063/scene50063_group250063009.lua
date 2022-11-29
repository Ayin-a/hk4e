-- 基础信息
local base_info = {
	group_id = 250063009
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
	{ config_id = 9001, gadget_id = 70360280, pos = { x = 82.240, y = 10.969, z = 174.069 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 9002, gadget_id = 70360280, pos = { x = 80.191, y = 10.969, z = 174.069 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 9003, gadget_id = 70360280, pos = { x = 78.321, y = 10.969, z = 174.069 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 9004, gadget_id = 70360280, pos = { x = 76.271, y = 10.969, z = 174.069 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 9005, gadget_id = 70360280, pos = { x = 73.829, y = 10.969, z = 174.069 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 9006, gadget_id = 70360280, pos = { x = 70.872, y = 10.969, z = 174.069 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 9007, gadget_id = 70360280, pos = { x = 68.051, y = 10.969, z = 174.069 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 9008, gadget_id = 70320001, pos = { x = 84.565, y = 9.190, z = 186.445 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 9012, gadget_id = 70320001, pos = { x = 67.171, y = 9.190, z = 186.634 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 9013, gadget_id = 70220055, pos = { x = 74.989, y = 9.190, z = 181.173 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 9014, gadget_id = 70220055, pos = { x = 74.989, y = 9.190, z = 195.542 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 9015, gadget_id = 70220055, pos = { x = 90.819, y = 9.190, z = 195.542 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 9016, gadget_id = 70220055, pos = { x = 90.819, y = 9.190, z = 191.732 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 9017, gadget_id = 70220055, pos = { x = 90.819, y = 9.190, z = 187.478 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 9018, gadget_id = 70900380, pos = { x = 74.180, y = 27.040, z = 169.570 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 9009, shape = RegionShape.SPHERE, radius = 8, pos = { x = 33.578, y = 25.883, z = 223.891 } }
}

-- 触发器
triggers = {
	{ config_id = 1009009, name = "ENTER_REGION_9009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_9009", action = "action_EVENT_ENTER_REGION_9009" },
	{ config_id = 1009010, name = "TIMER_EVENT_9010", event = EventType.EVENT_TIMER_EVENT, source = "AA1", condition = "", action = "action_EVENT_TIMER_EVENT_9010", trigger_count = 0 },
	{ config_id = 1009011, name = "TIMER_EVENT_9011", event = EventType.EVENT_TIMER_EVENT, source = "AA2", condition = "", action = "action_EVENT_TIMER_EVENT_9011", trigger_count = 0 }
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
		gadgets = { 9001, 9002, 9003, 9004, 9005, 9006, 9007, 9008, 9012, 9013, 9014, 9015, 9016, 9017, 9018 },
		regions = { 9009 },
		triggers = { "ENTER_REGION_9009", "TIMER_EVENT_9010", "TIMER_EVENT_9011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_9009(context, evt)
	if evt.param1 ~= 9009 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_9009(context, evt)
	-- 延迟1秒后,向groupId为：250063009的对象,请求一次调用,并将string参数："AA1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 250063009, "AA1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_9010(context, evt)
	-- 延迟4秒后,向groupId为：250063009的对象,请求一次调用,并将string参数："AA2" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 250063009, "AA2", 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 改变指定group组250063009中， configid为9001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 250063009, 9001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组250063009中， configid为9003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 250063009, 9003, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组250063009中， configid为9005的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 250063009, 9005, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组250063009中， configid为9007的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 250063009, 9007, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组250063009中， configid为9002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 250063009, 9002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组250063009中， configid为9004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 250063009, 9004, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组250063009中， configid为9006的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 250063009, 9006, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_9011(context, evt)
	-- 延迟4秒后,向groupId为：250063009的对象,请求一次调用,并将string参数："AA1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 250063009, "AA1", 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 改变指定group组250063009中， configid为9001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 250063009, 9001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组250063009中， configid为9003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 250063009, 9003, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组250063009中， configid为9005的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 250063009, 9005, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组250063009中， configid为9007的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 250063009, 9007, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组250063009中， configid为9002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 250063009, 9002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组250063009中， configid为9004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 250063009, 9004, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组250063009中， configid为9006的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 250063009, 9006, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end