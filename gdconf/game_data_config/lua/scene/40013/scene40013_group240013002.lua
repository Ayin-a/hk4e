-- 基础信息
local base_info = {
	group_id = 240013002
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1, monster_id = 22010201, pos = { x = -147.099, y = 18.017, z = 43.655 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2, monster_id = 20010801, pos = { x = -146.686, y = 18.017, z = 42.049 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3, monster_id = 20010801, pos = { x = -143.066, y = 17.945, z = 46.382 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4, monster_id = 20010801, pos = { x = -150.456, y = 17.881, z = 45.061 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5, monster_id = 20010901, pos = { x = -147.341, y = 18.017, z = 45.535 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6, monster_id = 20010801, pos = { x = -81.347, y = -15.433, z = 117.899 }, rot = { x = 0.000, y = 308.850, z = 0.000 }, level = 1, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 31, gadget_id = 70900037, pos = { x = -136.305, y = 19.023, z = 45.904 }, rot = { x = 0.000, y = 266.904, z = 0.000 }, level = 1 },
	{ config_id = 76, gadget_id = 70900037, pos = { x = -147.044, y = 19.023, z = 35.217 }, rot = { x = 0.000, y = 357.025, z = 0.000 }, level = 1 },
	{ config_id = 77, gadget_id = 70900037, pos = { x = -157.590, y = 19.023, z = 45.685 }, rot = { x = 0.000, y = 90.538, z = 0.000 }, level = 1 },
	{ config_id = 79, gadget_id = 70350001, pos = { x = -147.173, y = 17.942, z = 56.268 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 86, gadget_id = 70900007, pos = { x = -143.762, y = 18.212, z = 39.890 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 89, gadget_id = 70900007, pos = { x = -152.580, y = 18.184, z = 49.022 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 91, gadget_id = 70900007, pos = { x = -140.838, y = 18.155, z = 49.168 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 12, shape = RegionShape.SPHERE, radius = 3.1, pos = { x = -147.229, y = 18.016, z = 46.250 } }
}

-- 触发器
triggers = {
	{ config_id = 1000012, name = "ENTER_REGION_12", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_12", action = "action_EVENT_ENTER_REGION_12" },
	{ config_id = 1000013, name = "GADGET_STATE_CHANGE_13", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_13", action = "action_EVENT_GADGET_STATE_CHANGE_13", trigger_count = 0 },
	{ config_id = 1000014, name = "GADGET_STATE_CHANGE_14", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_14", action = "action_EVENT_GADGET_STATE_CHANGE_14", trigger_count = 0 },
	{ config_id = 1000015, name = "GADGET_STATE_CHANGE_15", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_15", action = "action_EVENT_GADGET_STATE_CHANGE_15", trigger_count = 0 },
	{ config_id = 1000019, name = "TIMER_EVENT_19", event = EventType.EVENT_TIMER_EVENT, source = "31", condition = "", action = "action_EVENT_TIMER_EVENT_19", trigger_count = 0 },
	{ config_id = 1000020, name = "TIMER_EVENT_20", event = EventType.EVENT_TIMER_EVENT, source = "76", condition = "", action = "action_EVENT_TIMER_EVENT_20", trigger_count = 0 },
	{ config_id = 1000021, name = "TIMER_EVENT_21", event = EventType.EVENT_TIMER_EVENT, source = "77", condition = "", action = "action_EVENT_TIMER_EVENT_21", trigger_count = 0 },
	{ config_id = 1000022, name = "ANY_MONSTER_DIE_22", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_22", action = "action_EVENT_ANY_MONSTER_DIE_22" },
	{ config_id = 1000023, name = "ANY_MONSTER_DIE_23", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_23", action = "action_EVENT_ANY_MONSTER_DIE_23" },
	{ config_id = 1000024, name = "ANY_MONSTER_DIE_24", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_24", action = "action_EVENT_ANY_MONSTER_DIE_24" },
	{ config_id = 1000025, name = "ANY_MONSTER_DIE_25", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_25", action = "action_EVENT_ANY_MONSTER_DIE_25" },
	{ config_id = 1000026, name = "VARIABLE_CHANGE_26", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_26", action = "action_EVENT_VARIABLE_CHANGE_26" },
	{ config_id = 1000027, name = "ANY_MONSTER_DIE_27", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_27", action = "action_EVENT_ANY_MONSTER_DIE_27" }
}

-- 变量
variables = {
	{ config_id = 1, name = "Boss", value = 0, no_refresh = false }
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
		gadgets = { 31, 76, 77, 79, 86, 89, 91 },
		regions = { 12 },
		triggers = { "ENTER_REGION_12", "GADGET_STATE_CHANGE_13", "GADGET_STATE_CHANGE_14", "GADGET_STATE_CHANGE_15", "TIMER_EVENT_19", "TIMER_EVENT_20", "TIMER_EVENT_21", "ANY_MONSTER_DIE_22", "ANY_MONSTER_DIE_23", "ANY_MONSTER_DIE_24", "ANY_MONSTER_DIE_25", "VARIABLE_CHANGE_26", "ANY_MONSTER_DIE_27" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_12(context, evt)
	if evt.param1 ~= 12 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_12(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 240013001, monsters = {}, gadgets = {1049} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	-- 改变指定group组240013002中， configid为79的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240013002, 79, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 2, delay_time = 2 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3, delay_time = 2 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 4, delay_time = 2 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 5, delay_time = 2 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 6, delay_time = 2 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_13(context, evt)
	if 86 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_13(context, evt)
	-- 改变指定group组240013002中， configid为76的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240013002, 76, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 延迟8秒后,向groupId为：240013002的对象,请求一次调用,并将string参数："76" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 240013002, "76", 8) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_14(context, evt)
	if 89 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_14(context, evt)
	-- 改变指定group组240013002中， configid为77的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240013002, 77, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 延迟8秒后,向groupId为：240013002的对象,请求一次调用,并将string参数："77" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 240013002, "77", 8) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_15(context, evt)
	if 91 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_15(context, evt)
	-- 改变指定group组240013002中， configid为31的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240013002, 31, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 延迟8秒后,向groupId为：240013002的对象,请求一次调用,并将string参数："31" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 240013002, "31", 8) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_19(context, evt)
	-- 改变指定group组240013002中， configid为31的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240013002, 31, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240013002中， configid为91的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240013002, 91, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_20(context, evt)
	-- 改变指定group组240013002中， configid为76的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240013002, 76, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240013002中， configid为86的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240013002, 86, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_21(context, evt)
	-- 改变指定group组240013002中， configid为77的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240013002, 77, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240013002中， configid为89的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240013002, 89, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_22(context, evt)
	if 5 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_22(context, evt)
	-- 针对当前group内变量名为 "Boss" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Boss", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_23(context, evt)
	if 4 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_23(context, evt)
	-- 针对当前group内变量名为 "Boss" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Boss", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_24(context, evt)
	if 1002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_24(context, evt)
	-- 针对当前group内变量名为 "Boss" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Boss", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_25(context, evt)
	if 1001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_25(context, evt)
	-- 针对当前group内变量名为 "Boss" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Boss", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_26(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Boss"为4
	if ScriptLib.GetGroupVariableValue(context, "Boss") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_26(context, evt)
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1, delay_time = 2 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_27(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_27(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 240013002, monsters = {6}, gadgets = {} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	return 0
end