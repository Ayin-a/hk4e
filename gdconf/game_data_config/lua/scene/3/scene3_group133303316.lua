-- 基础信息
local base_info = {
	group_id = 133303316
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 316001, monster_id = 26120101, pos = { x = -1337.795, y = 235.649, z = 3310.382 }, rot = { x = 0.000, y = 206.872, z = 0.000 }, level = 28, drop_id = 1000100, disableWander = true, pose_id = 104, area_id = 23 },
	{ config_id = 316008, monster_id = 26090201, pos = { x = -1337.922, y = 235.211, z = 3312.384 }, rot = { x = 0.000, y = 181.241, z = 0.000 }, level = 28, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 23 },
	{ config_id = 316009, monster_id = 26090201, pos = { x = -1337.391, y = 234.943, z = 3314.278 }, rot = { x = 0.000, y = 134.157, z = 0.000 }, level = 28, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 316002, gadget_id = 70360001, pos = { x = -1330.952, y = 234.189, z = 3294.027 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 23 },
	{ config_id = 316003, gadget_id = 70310229, pos = { x = -1340.553, y = 235.738, z = 3308.263 }, rot = { x = 349.240, y = 52.732, z = 358.806 }, level = 1, state = GadgetState.GearStart, persistent = true, area_id = 23 },
	{ config_id = 316005, gadget_id = 70310467, pos = { x = -1326.666, y = 234.901, z = 3288.194 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 316007, gadget_id = 70211001, pos = { x = -1334.384, y = 235.279, z = 3306.143 }, rot = { x = 1.779, y = 13.850, z = 352.245 }, level = 26, drop_tag = "战斗低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1316004, name = "ANY_GADGET_DIE_316004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_316004", action = "action_EVENT_ANY_GADGET_DIE_316004", trigger_count = 0 },
	{ config_id = 1316006, name = "ANY_MONSTER_DIE_316006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_316006", action = "action_EVENT_ANY_MONSTER_DIE_316006", trigger_count = 0 },
	-- finish后保底
	{ config_id = 1316010, name = "GROUP_LOAD_316010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_316010", action = "action_EVENT_GROUP_LOAD_316010", trigger_count = 0 },
	-- 通知勾爪group
	{ config_id = 1316011, name = "ANY_GADGET_DIE_316011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_316011", action = "action_EVENT_ANY_GADGET_DIE_316011", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 5, name = "finish", value = 0, no_refresh = true }
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
		monsters = { 316001, 316008, 316009 },
		gadgets = { 316002, 316003, 316005 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_316004", "ANY_MONSTER_DIE_316006", "GROUP_LOAD_316010", "ANY_GADGET_DIE_316011" },
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
function condition_EVENT_ANY_GADGET_DIE_316004(context, evt)
	if 316003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_316004(context, evt)
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 316002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 316002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为316007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 316007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 316005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_316006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_316006(context, evt)
	-- 将configid为 316003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 316003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_316010(context, evt)
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_316010(context, evt)
	-- 将configid为 316002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 316002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 316005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 创建id为316007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 316007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_316011(context, evt)
	if 316003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_316011(context, evt)
	-- 将本组内变量名为 "second" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "second", 1, 133303062) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end