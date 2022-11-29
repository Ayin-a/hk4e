-- 基础信息
local base_info = {
	group_id = 133301286
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 286001, monster_id = 22010401, pos = { x = -908.603, y = 333.655, z = 3352.152 }, rot = { x = 0.000, y = 123.448, z = 0.000 }, level = 28, drop_id = 1000100, pose_id = 9013, area_id = 23 },
	{ config_id = 286007, monster_id = 21030201, pos = { x = -905.106, y = 334.568, z = 3352.306 }, rot = { x = 0.000, y = 249.047, z = 0.000 }, level = 28, drop_id = 1000100, pose_id = 9012, area_id = 23 },
	{ config_id = 286008, monster_id = 21030601, pos = { x = -905.875, y = 333.887, z = 3348.223 }, rot = { x = 0.000, y = 345.686, z = 0.000 }, level = 28, drop_id = 1000100, disableWander = true, pose_id = 9012, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 286002, gadget_id = 70360001, pos = { x = -904.126, y = 335.234, z = 3351.711 }, rot = { x = 0.000, y = 264.152, z = 0.000 }, level = 1, persistent = true, area_id = 23 },
	{ config_id = 286003, gadget_id = 70310229, pos = { x = -906.263, y = 334.191, z = 3351.528 }, rot = { x = 10.840, y = 269.934, z = 7.977 }, level = 1, state = GadgetState.GearStart, persistent = true, area_id = 23 },
	{ config_id = 286005, gadget_id = 70310467, pos = { x = -907.539, y = 334.001, z = 3351.491 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 286009, gadget_id = 70211001, pos = { x = -902.007, y = 335.321, z = 3352.436 }, rot = { x = 353.982, y = 76.147, z = 354.788 }, level = 26, drop_tag = "战斗低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1286004, name = "ANY_GADGET_DIE_286004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_286004", action = "action_EVENT_ANY_GADGET_DIE_286004", trigger_count = 0 },
	{ config_id = 1286006, name = "ANY_MONSTER_DIE_286006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_286006", action = "action_EVENT_ANY_MONSTER_DIE_286006", trigger_count = 0 },
	-- 通知勾爪group
	{ config_id = 1286010, name = "ANY_GADGET_DIE_286010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_286010", action = "action_EVENT_ANY_GADGET_DIE_286010", trigger_count = 0 },
	-- finish后保底
	{ config_id = 1286011, name = "GROUP_LOAD_286011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_286011", action = "action_EVENT_GROUP_LOAD_286011", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 11, name = "finish", value = 0, no_refresh = true }
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
		monsters = { 286001, 286007, 286008 },
		gadgets = { 286002, 286003, 286005 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_286004", "ANY_MONSTER_DIE_286006", "ANY_GADGET_DIE_286010", "GROUP_LOAD_286011" },
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
function condition_EVENT_ANY_GADGET_DIE_286004(context, evt)
	if 286003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_286004(context, evt)
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 286002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 286002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为286009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 286009 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 286005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_286006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_286006(context, evt)
	-- 将configid为 286003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 286003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_286010(context, evt)
	if 286003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_286010(context, evt)
	-- 将本组内变量名为 "second" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "second", 1, 133301635) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_286011(context, evt)
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_286011(context, evt)
	-- 将configid为 286002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 286002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 286005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 创建id为286009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 286009 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end