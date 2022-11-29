-- 基础信息
local base_info = {
	group_id = 133301285
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 285001, monster_id = 26120101, pos = { x = -734.597, y = 299.831, z = 3270.384 }, rot = { x = 0.000, y = 293.804, z = 0.000 }, level = 28, drop_id = 1000100, disableWander = true, pose_id = 103, area_id = 23 },
	{ config_id = 285007, monster_id = 26120101, pos = { x = -740.542, y = 299.340, z = 3267.484 }, rot = { x = 0.000, y = 37.773, z = 0.000 }, level = 28, drop_id = 1000100, disableWander = true, pose_id = 102, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 285002, gadget_id = 70360001, pos = { x = -740.205, y = 300.328, z = 3271.219 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 23 },
	{ config_id = 285003, gadget_id = 70310229, pos = { x = -737.816, y = 299.977, z = 3272.069 }, rot = { x = 1.694, y = 286.100, z = 4.929 }, level = 1, state = GadgetState.GearStart, persistent = true, area_id = 23 },
	{ config_id = 285005, gadget_id = 70310467, pos = { x = -739.390, y = 299.866, z = 3271.692 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 285008, gadget_id = 70211001, pos = { x = -744.146, y = 299.536, z = 3272.026 }, rot = { x = 354.348, y = 359.825, z = 3.538 }, level = 26, drop_tag = "战斗低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1285004, name = "ANY_GADGET_DIE_285004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_285004", action = "action_EVENT_ANY_GADGET_DIE_285004", trigger_count = 0 },
	{ config_id = 1285006, name = "ANY_MONSTER_DIE_285006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_285006", action = "action_EVENT_ANY_MONSTER_DIE_285006", trigger_count = 0 },
	-- 通知勾爪group
	{ config_id = 1285009, name = "ANY_GADGET_DIE_285009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_285009", action = "action_EVENT_ANY_GADGET_DIE_285009", trigger_count = 0 },
	-- finish后保底
	{ config_id = 1285010, name = "GROUP_LOAD_285010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_285010", action = "action_EVENT_GROUP_LOAD_285010", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 12, name = "finish", value = 0, no_refresh = true }
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
		monsters = { 285001, 285007 },
		gadgets = { 285002, 285003, 285005 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_285004", "ANY_MONSTER_DIE_285006", "ANY_GADGET_DIE_285009", "GROUP_LOAD_285010" },
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
function condition_EVENT_ANY_GADGET_DIE_285004(context, evt)
	if 285003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_285004(context, evt)
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 285002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 285002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为285008的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 285008 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 285005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_285006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_285006(context, evt)
	-- 将configid为 285003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 285003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_285009(context, evt)
	if 285003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_285009(context, evt)
	-- 将本组内变量名为 "first" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "first", 1, 133301635) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_285010(context, evt)
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_285010(context, evt)
	-- 将configid为 285002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 285002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 285005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 创建id为285008的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 285008 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end