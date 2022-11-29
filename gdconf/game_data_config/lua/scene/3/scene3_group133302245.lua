-- 基础信息
local base_info = {
	group_id = 133302245
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 245001, monster_id = 21010101, pos = { x = -769.093, y = 225.373, z = 2218.520 }, rot = { x = 0.000, y = 107.182, z = 0.000 }, level = 25, drop_id = 1000100, pose_id = 9012, area_id = 24 },
	{ config_id = 245005, monster_id = 21010201, pos = { x = -764.331, y = 225.649, z = 2220.215 }, rot = { x = 0.000, y = 211.011, z = 0.000 }, level = 25, drop_id = 1000100, disableWander = true, pose_id = 9012, area_id = 24 },
	{ config_id = 245006, monster_id = 22010101, pos = { x = -766.950, y = 225.876, z = 2214.116 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 25, drop_id = 1000100, pose_id = 9013, area_id = 24 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 245002, gadget_id = 70360001, pos = { x = -766.158, y = 225.588, z = 2216.505 }, rot = { x = 356.859, y = 359.945, z = 1.994 }, level = 1, persistent = true, area_id = 24 },
	{ config_id = 245003, gadget_id = 70310229, pos = { x = -765.862, y = 225.538, z = 2217.052 }, rot = { x = 356.859, y = 359.945, z = 1.994 }, level = 1, state = GadgetState.GearStart, persistent = true, area_id = 24 },
	{ config_id = 245007, gadget_id = 70310467, pos = { x = -766.057, y = 227.462, z = 2216.910 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 245009, gadget_id = 70211001, pos = { x = -772.456, y = 225.602, z = 2216.294 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1245004, name = "ANY_GADGET_DIE_245004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_245004", action = "action_EVENT_ANY_GADGET_DIE_245004", trigger_count = 0 },
	{ config_id = 1245008, name = "ANY_MONSTER_DIE_245008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_245008", action = "action_EVENT_ANY_MONSTER_DIE_245008", trigger_count = 0 },
	-- 通知勾爪group
	{ config_id = 1245010, name = "ANY_GADGET_DIE_245010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_245010", action = "action_EVENT_ANY_GADGET_DIE_245010", trigger_count = 0 },
	-- finish后保底
	{ config_id = 1245011, name = "GROUP_LOAD_245011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_245011", action = "action_EVENT_GROUP_LOAD_245011", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 4, name = "finish", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 2,
	end_suite = 1,
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
		monsters = { 245001, 245005, 245006 },
		gadgets = { 245002, 245003, 245007 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_245004", "ANY_MONSTER_DIE_245008", "ANY_GADGET_DIE_245010", "GROUP_LOAD_245011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_245004(context, evt)
	if 245003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_245004(context, evt)
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 245002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 245002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为245009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 245009 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 245007 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_245008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_245008(context, evt)
	-- 将configid为 245003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 245003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_245010(context, evt)
	if 245003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_245010(context, evt)
	-- 将本组内变量名为 "first" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "first", 1, 133302621) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_245011(context, evt)
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_245011(context, evt)
	-- 将configid为 245002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 245002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 245007 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 创建id为245009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 245009 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end