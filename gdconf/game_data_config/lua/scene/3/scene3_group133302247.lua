-- 基础信息
local base_info = {
	group_id = 133302247
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 247001, monster_id = 20011301, pos = { x = -667.344, y = 222.778, z = 2437.464 }, rot = { x = 0.000, y = 13.319, z = 0.000 }, level = 25, drop_id = 1000100, disableWander = true, area_id = 24 },
	{ config_id = 247005, monster_id = 26090701, pos = { x = -667.038, y = 219.041, z = 2446.655 }, rot = { x = 0.000, y = 298.109, z = 0.000 }, level = 25, drop_id = 1000100, pose_id = 102, area_id = 24 },
	{ config_id = 247006, monster_id = 26090701, pos = { x = -670.878, y = 219.682, z = 2446.422 }, rot = { x = 0.000, y = 298.109, z = 0.000 }, level = 25, drop_id = 1000100, pose_id = 102, area_id = 24 },
	{ config_id = 247007, monster_id = 26090701, pos = { x = -663.617, y = 219.326, z = 2443.554 }, rot = { x = 0.000, y = 298.109, z = 0.000 }, level = 25, drop_id = 1000100, pose_id = 102, area_id = 24 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 247002, gadget_id = 70360001, pos = { x = -669.361, y = 221.260, z = 2441.679 }, rot = { x = 7.071, y = 359.559, z = 352.875 }, level = 1, persistent = true, area_id = 24 },
	{ config_id = 247003, gadget_id = 70310229, pos = { x = -669.833, y = 221.284, z = 2442.071 }, rot = { x = 24.468, y = 34.735, z = 358.191 }, level = 1, state = GadgetState.GearStart, persistent = true, area_id = 24 },
	{ config_id = 247008, gadget_id = 70310467, pos = { x = -669.952, y = 222.568, z = 2442.048 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 247010, gadget_id = 70211001, pos = { x = -668.797, y = 219.093, z = 2447.481 }, rot = { x = 337.184, y = 195.963, z = 359.653 }, level = 26, drop_tag = "战斗低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1247004, name = "ANY_GADGET_DIE_247004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_247004", action = "action_EVENT_ANY_GADGET_DIE_247004", trigger_count = 0 },
	{ config_id = 1247009, name = "ANY_MONSTER_DIE_247009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_247009", action = "action_EVENT_ANY_MONSTER_DIE_247009", trigger_count = 0 },
	-- 通知勾爪group
	{ config_id = 1247011, name = "ANY_GADGET_DIE_247011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_247011", action = "action_EVENT_ANY_GADGET_DIE_247011", trigger_count = 0 },
	-- finish后保底
	{ config_id = 1247012, name = "GROUP_LOAD_247012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_247012", action = "action_EVENT_GROUP_LOAD_247012", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 3, name = "finish", value = 0, no_refresh = true }
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
		monsters = { 247001, 247005, 247006, 247007 },
		gadgets = { 247002, 247003, 247008 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_247004", "ANY_MONSTER_DIE_247009", "ANY_GADGET_DIE_247011", "GROUP_LOAD_247012" },
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
function condition_EVENT_ANY_GADGET_DIE_247004(context, evt)
	if 247003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_247004(context, evt)
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 247002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 247002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为247010的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 247010 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 247008 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_247009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_247009(context, evt)
	-- 将configid为 247003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 247003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_247011(context, evt)
	if 247003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_247011(context, evt)
	-- 将本组内变量名为 "second" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "second", 1, 133302621) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_247012(context, evt)
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_247012(context, evt)
	-- 将configid为 247002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 247002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 247008 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 创建id为247010的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 247010 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end