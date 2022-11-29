-- 基础信息
local base_info = {
	group_id = 133304134
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 134001, monster_id = 21010601, pos = { x = -1048.416, y = 282.226, z = 2959.125 }, rot = { x = 0.000, y = 22.068, z = 0.000 }, level = 28, drop_id = 1000100, area_id = 23 },
	{ config_id = 134003, monster_id = 21010601, pos = { x = -1044.234, y = 282.624, z = 2962.721 }, rot = { x = 0.000, y = 230.417, z = 0.000 }, level = 28, drop_id = 1000100, area_id = 23 },
	{ config_id = 134008, monster_id = 21030201, pos = { x = -1044.330, y = 282.771, z = 2958.775 }, rot = { x = 0.000, y = 300.961, z = 0.000 }, level = 28, drop_id = 1000100, area_id = 23 },
	{ config_id = 134009, monster_id = 21010601, pos = { x = -1048.231, y = 282.057, z = 2962.490 }, rot = { x = 0.000, y = 145.348, z = 0.000 }, level = 28, drop_id = 1000100, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 134002, gadget_id = 70360001, pos = { x = -1045.396, y = 283.119, z = 2955.684 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 23 },
	{ config_id = 134004, gadget_id = 70310229, pos = { x = -1046.106, y = 282.437, z = 2961.219 }, rot = { x = 7.308, y = 313.550, z = 2.750 }, level = 1, state = GadgetState.GearStart, persistent = true, area_id = 23 },
	{ config_id = 134007, gadget_id = 70310467, pos = { x = -1047.558, y = 281.995, z = 2964.401 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 134010, gadget_id = 70211001, pos = { x = -1045.773, y = 282.179, z = 2965.111 }, rot = { x = 349.825, y = 173.750, z = 352.741 }, level = 26, drop_tag = "战斗低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1134005, name = "ANY_MONSTER_DIE_134005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_134005", action = "action_EVENT_ANY_MONSTER_DIE_134005", trigger_count = 0 },
	{ config_id = 1134006, name = "ANY_GADGET_DIE_134006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_134006", action = "action_EVENT_ANY_GADGET_DIE_134006", trigger_count = 0 },
	-- 通知勾爪group
	{ config_id = 1134011, name = "ANY_GADGET_DIE_134011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_134011", action = "action_EVENT_ANY_GADGET_DIE_134011", trigger_count = 0 },
	{ config_id = 1134012, name = "GROUP_LOAD_134012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_134012", action = "action_EVENT_GROUP_LOAD_134012", trigger_count = 0 }
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
		monsters = { 134001, 134003, 134008, 134009 },
		gadgets = { 134002, 134004, 134007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_134005", "ANY_GADGET_DIE_134006", "ANY_GADGET_DIE_134011", "GROUP_LOAD_134012" },
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
function condition_EVENT_ANY_MONSTER_DIE_134005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_134005(context, evt)
	-- 将configid为 134004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 134004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_134006(context, evt)
	if 134004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_134006(context, evt)
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建id为134010的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 134010 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 134002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 134002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 134007 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_134011(context, evt)
	if 134004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_134011(context, evt)
	-- 将本组内变量名为 "first" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "first", 1, 133304054) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_134012(context, evt)
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_134012(context, evt)
	-- 将configid为 134002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 134002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 134007 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 创建id为134010的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 134010 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end