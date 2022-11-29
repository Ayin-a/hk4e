-- 基础信息
local base_info = {
	group_id = 133304326
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
	{ config_id = 326002, gadget_id = 70310011, pos = { x = -1214.295, y = 153.393, z = 2160.899 }, rot = { x = 6.344, y = 279.547, z = 349.159 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 326003, gadget_id = 70320005, pos = { x = -1224.676, y = 156.137, z = 2167.518 }, rot = { x = 346.738, y = 317.500, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 326004, gadget_id = 70310011, pos = { x = -1239.967, y = 158.912, z = 2154.561 }, rot = { x = 335.508, y = 257.600, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 326005, gadget_id = 70310011, pos = { x = -1224.989, y = 154.829, z = 2145.902 }, rot = { x = 0.000, y = 14.100, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 326006, gadget_id = 70211102, pos = { x = -1215.508, y = 153.734, z = 2163.083 }, rot = { x = 0.000, y = 314.970, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1326010, name = "GADGET_STATE_CHANGE_326010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_326010", action = "action_EVENT_GADGET_STATE_CHANGE_326010", trigger_count = 0 },
	{ config_id = 1326011, name = "GROUP_LOAD_326011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_326011", action = "action_EVENT_GROUP_LOAD_326011", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 326001, gadget_id = 70310012, pos = { x = -1220.708, y = 150.801, z = 2164.409 }, rot = { x = 0.000, y = 190.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 }
	},
	triggers = {
		{ config_id = 1326007, name = "GADGET_STATE_CHANGE_326007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_326007", action = "action_EVENT_GADGET_STATE_CHANGE_326007", trigger_count = 0 },
		{ config_id = 1326008, name = "VARIABLE_CHANGE_326008", event = EventType.EVENT_VARIABLE_CHANGE, source = "State_Flag", condition = "condition_EVENT_VARIABLE_CHANGE_326008", action = "action_EVENT_VARIABLE_CHANGE_326008", trigger_count = 0 },
		{ config_id = 1326009, name = "GROUP_LOAD_326009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_326009", trigger_count = 0 }
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
		gadgets = { 326002, 326003, 326004, 326005, 326006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_326010", "GROUP_LOAD_326011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_326010(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133304326, 326002) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133304326, 326004) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133304326, 326005) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133304326, 326003) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_326010(context, evt)
	-- 将configid为 326006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 326006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_326011(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133304326, 326002) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133304326, 326004) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133304326, 326005) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133304326, 326003) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_326011(context, evt)
	-- 将configid为 326006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 326006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V3_0/DeathFieldStandard"