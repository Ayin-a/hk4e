-- 基础信息
local base_info = {
	group_id = 133302255
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 255001, monster_id = 21010101, pos = { x = 140.954, y = 344.425, z = 2164.502 }, rot = { x = 0.000, y = 145.180, z = 0.000 }, level = 25, drop_id = 1000100, area_id = 20 },
	{ config_id = 255007, monster_id = 20011201, pos = { x = 142.123, y = 344.429, z = 2158.946 }, rot = { x = 0.000, y = 335.852, z = 0.000 }, level = 25, drop_id = 1000100, area_id = 20 },
	{ config_id = 255008, monster_id = 20011201, pos = { x = 143.480, y = 345.390, z = 2163.831 }, rot = { x = 0.000, y = 230.218, z = 0.000 }, level = 25, drop_id = 1000100, area_id = 20 },
	{ config_id = 255009, monster_id = 21010601, pos = { x = 139.984, y = 343.636, z = 2159.575 }, rot = { x = 0.000, y = 14.722, z = 0.000 }, level = 25, drop_id = 1000100, area_id = 20 },
	{ config_id = 255010, monster_id = 21010501, pos = { x = 144.490, y = 345.618, z = 2161.685 }, rot = { x = 0.000, y = 265.312, z = 0.000 }, level = 25, drop_id = 1000100, area_id = 20 },
	{ config_id = 255011, monster_id = 20011201, pos = { x = 139.350, y = 343.709, z = 2162.483 }, rot = { x = 0.000, y = 96.639, z = 0.000 }, level = 25, drop_id = 1000100, area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 255002, gadget_id = 70360001, pos = { x = 142.245, y = 344.840, z = 2161.957 }, rot = { x = 7.042, y = 309.955, z = 0.000 }, level = 1, persistent = true, area_id = 20 },
	{ config_id = 255003, gadget_id = 70310229, pos = { x = 142.247, y = 344.841, z = 2161.958 }, rot = { x = 12.964, y = 310.758, z = 15.222 }, level = 1, state = GadgetState.GearStart, persistent = true, area_id = 20 },
	{ config_id = 255005, gadget_id = 70310467, pos = { x = 141.611, y = 344.615, z = 2161.974 }, rot = { x = 0.000, y = 309.955, z = 0.000 }, level = 1, area_id = 20 },
	{ config_id = 255012, gadget_id = 70211001, pos = { x = 136.237, y = 342.046, z = 2161.257 }, rot = { x = 333.138, y = 72.361, z = 2.495 }, level = 26, drop_tag = "战斗低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1255004, name = "ANY_GADGET_DIE_255004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_255004", action = "action_EVENT_ANY_GADGET_DIE_255004", trigger_count = 0 },
	{ config_id = 1255006, name = "ANY_MONSTER_DIE_255006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_255006", action = "action_EVENT_ANY_MONSTER_DIE_255006", trigger_count = 0 },
	-- 通知勾爪group
	{ config_id = 1255013, name = "ANY_GADGET_DIE_255013", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_255013", action = "action_EVENT_ANY_GADGET_DIE_255013", trigger_count = 0 },
	-- finish后保底
	{ config_id = 1255014, name = "GROUP_LOAD_255014", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_255014", action = "action_EVENT_GROUP_LOAD_255014", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 2, name = "finish", value = 0, no_refresh = true }
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
		monsters = { 255001, 255007, 255008, 255009, 255010, 255011 },
		gadgets = { 255002, 255003, 255005 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_255004", "ANY_MONSTER_DIE_255006", "ANY_GADGET_DIE_255013", "GROUP_LOAD_255014" },
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
function condition_EVENT_ANY_GADGET_DIE_255004(context, evt)
	if 255003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_255004(context, evt)
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 255002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 255002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为255012的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 255012 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 255005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_255006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_255006(context, evt)
	-- 将configid为 255003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 255003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_255013(context, evt)
	if 255003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_255013(context, evt)
	-- 将本组内变量名为 "second" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "second", 1, 133302625) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_255014(context, evt)
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_255014(context, evt)
	-- 将configid为 255002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 255002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 255005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 创建id为255012的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 255012 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end