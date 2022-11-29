-- 基础信息
local base_info = {
	group_id = 133302256
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 256001, monster_id = 26090901, pos = { x = 19.784, y = 306.887, z = 2292.302 }, rot = { x = 0.000, y = 317.448, z = 0.000 }, level = 25, drop_id = 1000100, disableWander = true, pose_id = 102, area_id = 20 },
	{ config_id = 256007, monster_id = 26090201, pos = { x = 17.665, y = 306.431, z = 2291.948 }, rot = { x = 0.000, y = 317.448, z = 0.000 }, level = 25, drop_id = 1000100, disableWander = true, pose_id = 102, area_id = 20 },
	{ config_id = 256008, monster_id = 26090201, pos = { x = 16.709, y = 306.641, z = 2288.019 }, rot = { x = 0.000, y = 317.448, z = 0.000 }, level = 25, drop_id = 1000100, disableWander = true, pose_id = 102, area_id = 20 },
	{ config_id = 256009, monster_id = 26090201, pos = { x = 21.562, y = 306.745, z = 2291.018 }, rot = { x = 0.000, y = 317.448, z = 0.000 }, level = 25, drop_id = 1000100, disableWander = true, pose_id = 102, area_id = 20 },
	{ config_id = 256010, monster_id = 26090901, pos = { x = 16.569, y = 306.220, z = 2290.220 }, rot = { x = 0.000, y = 317.448, z = 0.000 }, level = 25, drop_id = 1000100, disableWander = true, pose_id = 102, area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 256002, gadget_id = 70360001, pos = { x = 19.207, y = 306.418, z = 2289.793 }, rot = { x = 4.154, y = 317.998, z = 7.557 }, level = 1, persistent = true, area_id = 20 },
	{ config_id = 256003, gadget_id = 70310229, pos = { x = 19.207, y = 306.418, z = 2289.793 }, rot = { x = 4.154, y = 317.998, z = 7.557 }, level = 1, state = GadgetState.GearStart, persistent = true, area_id = 20 },
	{ config_id = 256005, gadget_id = 70310467, pos = { x = 19.207, y = 306.418, z = 2289.793 }, rot = { x = 4.154, y = 317.998, z = 7.557 }, level = 1, area_id = 20 },
	{ config_id = 256011, gadget_id = 70211001, pos = { x = 14.830, y = 306.374, z = 2288.479 }, rot = { x = 5.809, y = 332.665, z = 354.212 }, level = 26, drop_tag = "战斗低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1256004, name = "ANY_GADGET_DIE_256004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_256004", action = "action_EVENT_ANY_GADGET_DIE_256004", trigger_count = 0 },
	{ config_id = 1256006, name = "ANY_MONSTER_DIE_256006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_256006", action = "action_EVENT_ANY_MONSTER_DIE_256006", trigger_count = 0 },
	-- 通知勾爪group
	{ config_id = 1256012, name = "ANY_GADGET_DIE_256012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_256012", action = "action_EVENT_ANY_GADGET_DIE_256012", trigger_count = 0 },
	-- finish后保底
	{ config_id = 1256013, name = "GROUP_LOAD_256013", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_256013", action = "action_EVENT_GROUP_LOAD_256013", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "finish", value = 0, no_refresh = true }
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
		monsters = { 256001, 256007, 256008, 256009, 256010 },
		gadgets = { 256002, 256003, 256005 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_256004", "ANY_MONSTER_DIE_256006", "ANY_GADGET_DIE_256012", "GROUP_LOAD_256013" },
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
function condition_EVENT_ANY_GADGET_DIE_256004(context, evt)
	if 256003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_256004(context, evt)
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 256002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 256002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为256011的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 256011 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 256005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_256006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_256006(context, evt)
	-- 将configid为 256003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 256003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_256012(context, evt)
	if 256003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_256012(context, evt)
	-- 将本组内变量名为 "first" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "first", 1, 133302625) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_256013(context, evt)
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_256013(context, evt)
	-- 将configid为 256002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 256002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 256005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 创建id为256011的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 256011 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end