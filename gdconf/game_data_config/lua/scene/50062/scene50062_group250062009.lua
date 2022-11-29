-- 基础信息
local base_info = {
	group_id = 250062009
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
	{ config_id = 9001, gadget_id = 70360280, pos = { x = 3.118, y = 21.399, z = 397.627 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 9002, gadget_id = 70360280, pos = { x = 1.543, y = 21.400, z = 397.627 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 9003, gadget_id = 70360280, pos = { x = 0.024, y = 21.453, z = 397.627 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 9004, gadget_id = 70360280, pos = { x = 17.658, y = 22.435, z = 367.655 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 9005, gadget_id = 70360280, pos = { x = 16.248, y = 22.367, z = 367.599 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 9006, gadget_id = 70360280, pos = { x = -60.802, y = 26.604, z = 294.465 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 9007, gadget_id = 70360280, pos = { x = -20.802, y = 27.171, z = 300.213 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 9009, shape = RegionShape.SPHERE, radius = 8, pos = { x = -110.359, y = 30.720, z = 402.500 } }
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
		gadgets = { 9001, 9002, 9003, 9004, 9005, 9006, 9007 },
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
	-- 延迟1秒后,向groupId为：250062009的对象,请求一次调用,并将string参数："AA1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 250062009, "AA1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_9010(context, evt)
	-- 延迟4秒后,向groupId为：250062009的对象,请求一次调用,并将string参数："AA2" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 250062009, "AA2", 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 改变指定group组250062009中， configid为9001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 250062009, 9001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组250062009中， configid为9003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 250062009, 9003, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组250062009中， configid为9005的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 250062009, 9005, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组250062009中， configid为9007的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 250062009, 9007, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组250062009中， configid为9002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 250062009, 9002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组250062009中， configid为9004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 250062009, 9004, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组250062009中， configid为9006的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 250062009, 9006, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_9011(context, evt)
	-- 延迟4秒后,向groupId为：250062009的对象,请求一次调用,并将string参数："AA1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 250062009, "AA1", 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 改变指定group组250062009中， configid为9001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 250062009, 9001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组250062009中， configid为9003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 250062009, 9003, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组250062009中， configid为9005的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 250062009, 9005, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组250062009中， configid为9007的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 250062009, 9007, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组250062009中， configid为9002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 250062009, 9002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组250062009中， configid为9004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 250062009, 9004, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组250062009中， configid为9006的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 250062009, 9006, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end