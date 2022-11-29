-- 基础信息
local base_info = {
	group_id = 133303164
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 164001, monster_id = 22010101, pos = { x = -1458.710, y = 281.226, z = 3892.776 }, rot = { x = 0.000, y = 165.862, z = 0.000 }, level = 28, drop_id = 1000100, disableWander = true, pose_id = 9013, area_id = 23 },
	{ config_id = 164008, monster_id = 21010501, pos = { x = -1454.386, y = 280.316, z = 3890.631 }, rot = { x = 0.000, y = 264.625, z = 0.000 }, level = 28, drop_id = 1000100, disableWander = true, pose_id = 9012, area_id = 23 },
	{ config_id = 164009, monster_id = 21010501, pos = { x = -1460.840, y = 280.847, z = 3890.217 }, rot = { x = 0.000, y = 89.873, z = 0.000 }, level = 28, drop_id = 1000100, disableWander = true, pose_id = 9012, area_id = 23 },
	{ config_id = 164010, monster_id = 21010601, pos = { x = -1456.887, y = 279.619, z = 3886.315 }, rot = { x = 0.000, y = 345.919, z = 0.000 }, level = 28, drop_id = 1000100, disableWander = true, pose_id = 9012, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 164002, gadget_id = 70360001, pos = { x = -1464.627, y = 279.921, z = 3891.271 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 23 },
	{ config_id = 164003, gadget_id = 70310229, pos = { x = -1457.171, y = 280.235, z = 3889.081 }, rot = { x = 348.579, y = 0.809, z = 355.461 }, level = 1, state = GadgetState.GearStart, persistent = true, area_id = 23 },
	{ config_id = 164005, gadget_id = 70310467, pos = { x = -1457.171, y = 280.235, z = 3889.081 }, rot = { x = 348.551, y = 0.448, z = 355.533 }, level = 1, area_id = 23 },
	{ config_id = 164007, gadget_id = 70211001, pos = { x = -1461.442, y = 281.577, z = 3892.536 }, rot = { x = 340.304, y = 312.797, z = 9.599 }, level = 26, drop_tag = "战斗低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1164004, name = "ANY_GADGET_DIE_164004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_164004", action = "action_EVENT_ANY_GADGET_DIE_164004", trigger_count = 0 },
	{ config_id = 1164006, name = "ANY_MONSTER_DIE_164006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_164006", action = "action_EVENT_ANY_MONSTER_DIE_164006", trigger_count = 0 },
	-- 通知勾爪group
	{ config_id = 1164011, name = "ANY_GADGET_DIE_164011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_164011", action = "action_EVENT_ANY_GADGET_DIE_164011", trigger_count = 0 },
	-- finish后保底
	{ config_id = 1164012, name = "GROUP_LOAD_164012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_164012", action = "action_EVENT_GROUP_LOAD_164012", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 8, name = "finish", value = 0, no_refresh = true }
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
		monsters = { 164001, 164008, 164009, 164010 },
		gadgets = { 164002, 164003, 164005 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_164004", "ANY_MONSTER_DIE_164006", "ANY_GADGET_DIE_164011", "GROUP_LOAD_164012" },
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
function condition_EVENT_ANY_GADGET_DIE_164004(context, evt)
	if 164003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_164004(context, evt)
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 164002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 164002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为164007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 164007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 164005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_164006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_164006(context, evt)
	-- 将configid为 164003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 164003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_164011(context, evt)
	if 164003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_164011(context, evt)
	-- 将本组内变量名为 "first" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "first", 1, 133303059) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_164012(context, evt)
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_164012(context, evt)
	-- 将configid为 164002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 164002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 164005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 创建id为164007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 164007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end