-- 基础信息
local base_info = {
	group_id = 166001221
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
	{ config_id = 221001, gadget_id = 70290219, pos = { x = 951.581, y = 845.631, z = 546.723 }, rot = { x = 0.000, y = 346.745, z = 0.000 }, level = 32, area_id = 300 },
	{ config_id = 221002, gadget_id = 70290219, pos = { x = 949.862, y = 845.541, z = 545.165 }, rot = { x = 0.000, y = 60.629, z = 0.000 }, level = 32, area_id = 300 },
	{ config_id = 221003, gadget_id = 70290219, pos = { x = 949.787, y = 845.233, z = 543.202 }, rot = { x = 347.529, y = 37.053, z = 11.875 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 300 },
	{ config_id = 221005, gadget_id = 70211002, pos = { x = 947.471, y = 845.395, z = 548.881 }, rot = { x = 3.259, y = 70.667, z = 8.493 }, level = 26, drop_tag = "战斗低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 },
	{ config_id = 221006, gadget_id = 70290204, pos = { x = 938.586, y = 846.702, z = 538.616 }, rot = { x = 8.001, y = 359.875, z = 358.210 }, level = 36, area_id = 300 },
	{ config_id = 221007, gadget_id = 70290233, pos = { x = 939.707, y = 846.311, z = 541.247 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 221008, gadget_id = 70360342, pos = { x = 949.257, y = 845.645, z = 543.040 }, rot = { x = 0.000, y = 0.000, z = 355.021 }, level = 36, isOneoff = true, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1221004, name = "GADGET_STATE_CHANGE_221004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_221004", action = "action_EVENT_GADGET_STATE_CHANGE_221004", trigger_count = 0 },
	{ config_id = 1221009, name = "ANY_GADGET_DIE_221009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_221009", action = "action_EVENT_ANY_GADGET_DIE_221009" },
	{ config_id = 1221011, name = "GROUP_LOAD_221011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_221011", action = "action_EVENT_GROUP_LOAD_221011", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "done", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1221010, name = "GADGET_STATE_CHANGE_221010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_221010", action = "action_EVENT_GADGET_STATE_CHANGE_221010" }
	}
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
		gadgets = { 221001, 221002, 221003, 221005, 221006, 221007, 221008 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_221004", "ANY_GADGET_DIE_221009", "GROUP_LOAD_221011" },
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
function condition_EVENT_GADGET_STATE_CHANGE_221004(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 166001221, 221001) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 166001221, 221002) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 166001221, 221003) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_221004(context, evt)
	-- 将configid为 221005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 221005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_221009(context, evt)
	if 221006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_221009(context, evt)
	-- 将本组内变量名为 "done" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "done", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 221007 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 221003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 221003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 221008 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_221011(context, evt)
	-- 判断变量"done"为1
	if ScriptLib.GetGroupVariableValue(context, "done") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_221011(context, evt)
	-- 将configid为 221003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 221003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end