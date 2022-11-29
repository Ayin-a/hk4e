-- 基础信息
local base_info = {
	group_id = 133008228
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
	{ config_id = 228001, gadget_id = 70350006, pos = { x = 815.128, y = 329.451, z = -658.362 }, rot = { x = 0.069, y = 240.366, z = 181.115 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 228002, gadget_id = 70211131, pos = { x = 810.939, y = 325.135, z = -659.008 }, rot = { x = 0.000, y = 69.928, z = 0.000 }, level = 26, chest_drop_id = 2002400, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 },
	{ config_id = 228004, gadget_id = 70211145, pos = { x = 811.183, y = 325.059, z = -655.999 }, rot = { x = 0.000, y = 115.937, z = 0.000 }, level = 26, drop_tag = "雪山玉髓高级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 10 },
	{ config_id = 228006, gadget_id = 70350006, pos = { x = 814.289, y = 329.484, z = -656.887 }, rot = { x = 0.069, y = 240.366, z = 181.115 }, level = 30, persistent = true, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1228003, name = "GADGET_STATE_CHANGE_228003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_228003", action = "action_EVENT_GADGET_STATE_CHANGE_228003" },
	{ config_id = 1228005, name = "GADGET_STATE_CHANGE_228005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_228005", action = "action_EVENT_GADGET_STATE_CHANGE_228005" },
	{ config_id = 1228007, name = "GADGET_STATE_CHANGE_228007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_228007", action = "action_EVENT_GADGET_STATE_CHANGE_228007" },
	{ config_id = 1228008, name = "GADGET_CREATE_228008", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_228008", action = "action_EVENT_GADGET_CREATE_228008", trigger_count = 0 },
	{ config_id = 1228009, name = "GADGET_CREATE_228009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_228009", action = "action_EVENT_GADGET_CREATE_228009", trigger_count = 0 },
	{ config_id = 1228010, name = "GADGET_CREATE_228010", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_228010", action = "action_EVENT_GADGET_CREATE_228010", trigger_count = 0 }
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
		gadgets = { 228001, 228002, 228004, 228006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_228003", "GADGET_STATE_CHANGE_228005", "GADGET_STATE_CHANGE_228007", "GADGET_CREATE_228008", "GADGET_CREATE_228009", "GADGET_CREATE_228010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_228003(context, evt)
	if 228001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_228003(context, evt)
	-- 改变指定group组133008165中， configid为165001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133008165, 165001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_228005(context, evt)
	if 228001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_228005(context, evt)
	-- 将configid为 228002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 228002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_228007(context, evt)
	if 228001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_228007(context, evt)
	-- 将configid为 228004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 228004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_228008(context, evt)
	if 228001 ~= evt.param1 or GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_228008(context, evt)
	-- 将configid为 228002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 228002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_228009(context, evt)
	if 228001 ~= evt.param1 or GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_228009(context, evt)
	-- 将configid为 228004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 228004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_228010(context, evt)
	if 228001 ~= evt.param1 or GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_228010(context, evt)
	-- 改变指定group组133008165中， configid为165001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133008165, 165001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end