-- 基础信息
local base_info = {
	group_id = 133303315
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 315001, monster_id = 22010101, pos = { x = -1195.222, y = 263.931, z = 3269.063 }, rot = { x = 0.000, y = 325.869, z = 0.000 }, level = 28, drop_id = 1000100, disableWander = true, area_id = 23 },
	{ config_id = 315008, monster_id = 21010401, pos = { x = -1199.405, y = 263.280, z = 3270.060 }, rot = { x = 0.000, y = 108.860, z = 0.000 }, level = 28, drop_id = 1000100, disableWander = true, pose_id = 9003, area_id = 23 },
	{ config_id = 315009, monster_id = 21010401, pos = { x = -1194.910, y = 262.696, z = 3273.383 }, rot = { x = 0.000, y = 201.391, z = 0.000 }, level = 28, drop_id = 1000100, disableWander = true, pose_id = 9003, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 315002, gadget_id = 70360001, pos = { x = -1199.450, y = 263.864, z = 3270.869 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 23 },
	{ config_id = 315003, gadget_id = 70310229, pos = { x = -1196.369, y = 263.516, z = 3270.328 }, rot = { x = 15.421, y = 357.722, z = 8.552 }, level = 1, state = GadgetState.GearStart, persistent = true, area_id = 23 },
	{ config_id = 315005, gadget_id = 70310467, pos = { x = -1196.916, y = 263.806, z = 3270.493 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 315007, gadget_id = 70211001, pos = { x = -1192.994, y = 263.689, z = 3269.952 }, rot = { x = 0.851, y = 271.102, z = 344.733 }, level = 26, drop_tag = "战斗低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1315004, name = "ANY_GADGET_DIE_315004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_315004", action = "action_EVENT_ANY_GADGET_DIE_315004", trigger_count = 0 },
	{ config_id = 1315006, name = "ANY_MONSTER_DIE_315006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_315006", action = "action_EVENT_ANY_MONSTER_DIE_315006", trigger_count = 0 },
	-- 通知勾爪group
	{ config_id = 1315010, name = "ANY_GADGET_DIE_315010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_315010", action = "action_EVENT_ANY_GADGET_DIE_315010", trigger_count = 0 },
	-- finish后保底
	{ config_id = 1315011, name = "GROUP_LOAD_315011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_315011", action = "action_EVENT_GROUP_LOAD_315011", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 6, name = "finish", value = 0, no_refresh = true }
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
		monsters = { 315001, 315008, 315009 },
		gadgets = { 315002, 315003, 315005 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_315004", "ANY_MONSTER_DIE_315006", "ANY_GADGET_DIE_315010", "GROUP_LOAD_315011" },
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
function condition_EVENT_ANY_GADGET_DIE_315004(context, evt)
	if 315003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_315004(context, evt)
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 315002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 315002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为315007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 315007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 315005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_315006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_315006(context, evt)
	-- 将configid为 315003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 315003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_315010(context, evt)
	if 315003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_315010(context, evt)
	-- 将本组内变量名为 "first" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "first", 1, 133303062) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_315011(context, evt)
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_315011(context, evt)
	-- 将configid为 315002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 315002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 315005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 创建id为315007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 315007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end