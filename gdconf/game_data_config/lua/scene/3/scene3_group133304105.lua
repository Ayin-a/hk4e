-- 基础信息
local base_info = {
	group_id = 133304105
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 105001, monster_id = 26120101, pos = { x = -1367.205, y = 253.655, z = 2737.831 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_id = 1000100, pose_id = 201, area_id = 21 },
	{ config_id = 105008, monster_id = 26090201, pos = { x = -1364.707, y = 253.646, z = 2736.567 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_id = 1000100, pose_id = 101, area_id = 21 },
	{ config_id = 105009, monster_id = 26090201, pos = { x = -1369.791, y = 253.396, z = 2739.087 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_id = 1000100, pose_id = 101, area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 105002, gadget_id = 70360001, pos = { x = -1366.447, y = 253.937, z = 2739.810 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 21 },
	{ config_id = 105004, gadget_id = 70310229, pos = { x = -1367.516, y = 254.151, z = 2742.386 }, rot = { x = 358.702, y = 123.645, z = 349.564 }, level = 1, state = GadgetState.GearStart, persistent = true, area_id = 21 },
	{ config_id = 105006, gadget_id = 70310467, pos = { x = -1367.516, y = 254.151, z = 2742.386 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 105007, gadget_id = 70211001, pos = { x = -1362.128, y = 253.465, z = 2736.901 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1105003, name = "ANY_GADGET_DIE_105003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_105003", action = "action_EVENT_ANY_GADGET_DIE_105003", trigger_count = 0 },
	{ config_id = 1105005, name = "ANY_MONSTER_DIE_105005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_105005", action = "action_EVENT_ANY_MONSTER_DIE_105005", trigger_count = 0 },
	-- 通知勾爪group
	{ config_id = 1105010, name = "ANY_GADGET_DIE_105010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_105010", action = "action_EVENT_ANY_GADGET_DIE_105010", trigger_count = 0 },
	{ config_id = 1105011, name = "GROUP_LOAD_105011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_105011", action = "action_EVENT_GROUP_LOAD_105011", trigger_count = 0 }
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
		monsters = { 105001, 105008, 105009 },
		gadgets = { 105002, 105004, 105006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_105003", "ANY_MONSTER_DIE_105005", "ANY_GADGET_DIE_105010", "GROUP_LOAD_105011" },
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
function condition_EVENT_ANY_GADGET_DIE_105003(context, evt)
	if 105004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_105003(context, evt)
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建id为105007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 105007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 105002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 105002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 105006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_105005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_105005(context, evt)
	-- 将configid为 105004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 105004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_105010(context, evt)
	if 105004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_105010(context, evt)
	-- 将本组内变量名为 "second" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "second", 1, 133304218) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_105011(context, evt)
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_105011(context, evt)
	-- 将configid为 105002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 105002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 105006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 创建id为105007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 105007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end