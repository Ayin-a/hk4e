-- 基础信息
local base_info = {
	group_id = 133307096
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 96001, gadget_id = 70211101, pos = { x = -2493.453, y = 190.949, z = 4520.597 }, rot = { x = 0.000, y = 180.000, z = 9.708 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 26 },
	{ config_id = 96002, gadget_id = 70330266, pos = { x = -2493.411, y = 190.790, z = 4520.385 }, rot = { x = 7.829, y = 33.434, z = 345.291 }, level = 19, isOneoff = true, persistent = true, area_id = 26 },
	{ config_id = 96006, gadget_id = 70330430, pos = { x = -2493.416, y = 191.064, z = 4520.217 }, rot = { x = 357.013, y = 355.943, z = 343.641 }, level = 1, isOneoff = true, persistent = true, area_id = 26 },
	{ config_id = 96007, gadget_id = 70360001, pos = { x = -2493.761, y = 192.875, z = 4520.734 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1096003, name = "ANY_GADGET_DIE_96003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_96003", action = "action_EVENT_ANY_GADGET_DIE_96003" },
	{ config_id = 1096004, name = "GADGET_STATE_CHANGE_96004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_96004", action = "action_EVENT_GADGET_STATE_CHANGE_96004", trigger_count = 0 },
	{ config_id = 1096005, name = "ANY_GADGET_DIE_96005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_96005", action = "action_EVENT_ANY_GADGET_DIE_96005" },
	{ config_id = 1096008, name = "GROUP_LOAD_96008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_96008", action = "action_EVENT_GROUP_LOAD_96008", trigger_count = 0 }
}

-- 变量
variables = {
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 0,
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
		monsters = { },
		gadgets = { 96001, 96006, 96007 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_96003", "GADGET_STATE_CHANGE_96004", "ANY_GADGET_DIE_96005", "GROUP_LOAD_96008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_96003(context, evt)
	if 96002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_96003(context, evt)
	-- 将configid为 96001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 96001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_96004(context, evt)
	if 96001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_96004(context, evt)
	-- 将configid为 96007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 96007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_96005(context, evt)
	if 96006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_96005(context, evt)
	-- 创建id为96002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 96002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_96008(context, evt)
	-- 判断指定group组指定gadget是否存在 
	return not ScriptLib.CheckIsInGroup(context, 133307096, 96001)
end

-- 触发操作
function action_EVENT_GROUP_LOAD_96008(context, evt)
	-- 将configid为 96007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 96007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end