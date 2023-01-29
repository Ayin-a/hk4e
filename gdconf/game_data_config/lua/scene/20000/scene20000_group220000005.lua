-- 基础信息
local base_info = {
	group_id = 220000005
}

-- Trigger变量
local defs = {
	gadget_id_1 = 5006,
	gadget_id_2 = 5002,
	gadget_id_3 = 5003,
	gadget_id_4 = 5001,
	gadget_id_5 = 5007,
	gadget_id_6 = 7001
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
	{ config_id = 5001, gadget_id = 70900007, pos = { x = 67.167, y = 0.587, z = -40.812 }, rot = { x = 0.000, y = 305.180, z = 0.000 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 5002, gadget_id = 70900008, pos = { x = 73.981, y = 0.547, z = -48.492 }, rot = { x = 0.000, y = 159.915, z = 0.000 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 5003, gadget_id = 70900009, pos = { x = 76.723, y = 0.500, z = -32.653 }, rot = { x = 0.000, y = 29.283, z = 0.000 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 5004, gadget_id = 70350003, pos = { x = 73.703, y = 1.529, z = -53.205 }, rot = { x = 0.000, y = 15.515, z = 0.000 }, level = 1 },
	{ config_id = 5005, gadget_id = 70350003, pos = { x = 75.804, y = 1.433, z = -28.966 }, rot = { x = 0.000, y = 135.560, z = 0.000 }, level = 1 },
	{ config_id = 5006, gadget_id = 70211012, pos = { x = 87.927, y = 0.500, z = -61.169 }, rot = { x = 0.000, y = 5.447, z = 0.000 }, level = 1, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, showcutscene = true, isOneoff = true },
	{ config_id = 5007, gadget_id = 70360001, pos = { x = 84.636, y = 1.323, z = -51.203 }, rot = { x = 0.000, y = 206.115, z = 0.000 }, level = 1 },
	{ config_id = 5008, gadget_id = 70500000, pos = { x = 88.057, y = 0.500, z = -27.508 }, rot = { x = 0.000, y = 104.057, z = 0.000 }, level = 1, point_type = 2019 },
	{ config_id = 5009, gadget_id = 70211011, pos = { x = 85.100, y = 0.500, z = -30.860 }, rot = { x = 0.000, y = 168.034, z = 0.000 }, level = 1, drop_tag = "战斗中级蒙德", showcutscene = true, isOneoff = true }
}

-- 区域
regions = {
	{ config_id = 21, shape = RegionShape.SPHERE, radius = 5, pos = { x = 65.644, y = 0.500, z = -41.466 } },
	{ config_id = 69, shape = RegionShape.SPHERE, radius = 11.6, pos = { x = 87.168, y = 0.500, z = -62.278 } }
}

-- 触发器
triggers = {
	{ config_id = 1000016, name = "GADGET_STATE_CHANGE_16", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_16", action = "action_EVENT_GADGET_STATE_CHANGE_16", trigger_count = 0 },
	{ config_id = 1000017, name = "GADGET_STATE_CHANGE_17", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_17", action = "action_EVENT_GADGET_STATE_CHANGE_17", trigger_count = 0 },
	{ config_id = 1000018, name = "GADGET_STATE_CHANGE_18", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_18", action = "action_EVENT_GADGET_STATE_CHANGE_18", trigger_count = 0 },
	{ config_id = 1000019, name = "GADGET_STATE_CHANGE_19", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_19", action = "action_EVENT_GADGET_STATE_CHANGE_19", trigger_count = 0 },
	{ config_id = 1000020, name = "GADGET_STATE_CHANGE_20", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_20", action = "action_EVENT_GADGET_STATE_CHANGE_20", trigger_count = 0 },
	{ config_id = 1000021, name = "ENTER_REGION_21", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_21", action = "action_EVENT_ENTER_REGION_21", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000022, name = "GADGET_CREATE_22", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_22", action = "action_EVENT_GADGET_CREATE_22" },
	{ config_id = 1000023, name = "SELECT_OPTION_23", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_23", action = "action_EVENT_SELECT_OPTION_23", forbid_guest = false },
	{ config_id = 1000024, name = "GATHER_24", event = EventType.EVENT_GATHER, source = "21", condition = "", action = "action_EVENT_GATHER_24", forbid_guest = false },
	{ config_id = 1000069, name = "ENTER_REGION_69", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_69", action = "action_EVENT_ENTER_REGION_69", forbid_guest = false }
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
	rand_suite = true
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
		gadgets = { 5001, 5002, 5003, 5004, 5005, 5006, 5007, 5008 },
		regions = { 21, 69 },
		triggers = { "GADGET_STATE_CHANGE_16", "GADGET_STATE_CHANGE_17", "GADGET_STATE_CHANGE_18", "GADGET_STATE_CHANGE_19", "GADGET_STATE_CHANGE_20", "ENTER_REGION_21", "GADGET_CREATE_22", "SELECT_OPTION_23", "GATHER_24", "ENTER_REGION_69" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_16(context, evt)
	if GadgetState.GearStart ~= evt.param1 or defs.gadget_id_2 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_16(context, evt)
	-- 将configid为 5004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_17(context, evt)
	if GadgetState.GearStart ~= evt.param1 or defs.gadget_id_3 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_17(context, evt)
	-- 将configid为 5005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_18(context, evt)
	if GadgetState.GearStart ~= evt.param1 or defs.gadget_id_4 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_18(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220000018, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_19(context, evt)
	ScriptLib.PrintLog("enter condition judge")
	if GadgetState.GearStop ~= evt.param1 or defs.gadget_id_2 ~= evt.param2 then
	ScriptLib.PrintLog("judge false")
		return false
	end
	
	ScriptLib.PrintLog("judge true")
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_19(context, evt)
	-- 将configid为 5004 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5004, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_20(context, evt)
	ScriptLib.PrintLog("enter condition judge")
	if GadgetState.GearStop ~= evt.param1 or defs.gadget_id_3 ~= evt.param2 then
	ScriptLib.PrintLog("judge false")
		return false
	
	end
	
	ScriptLib.PrintLog("judge true")
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_20(context, evt)
	-- 将configid为 5005 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5005, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_21(context, evt)
	ScriptLib.PrintLog("Enter condition judge")
	if GadgetState.GearStop ~= evt.param1 or defs.gadget_id_4 ~= evt.param2 then
	ScriptLib.PrintLog("judge false")
		return false
	end
	
	ScriptLib.PrintLog("judge true")
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_21(context, evt)
	-- 将configid为 15 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 15, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_22(context, evt)
	if 5007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_22(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {23}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_23(context, evt)
	-- 判断是gadgetid 5007
	if 5007 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_23(context, evt)
	-- 根据不同的选项做不同的操作
	if defs.gadget_id_6 == evt.param2 then
		if 0 ~= ScriptLib.CreateGadget(context, { config_id = defs.gadget_id_1 }) then
		return -1
	end
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220000006, suite = 2 }) then
			return -1
		end
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220000005, defs.gadget_id_5,23 ) then
			return -1
		end
	
	end
	
	
	
		-- 重新生成指定group，指定suite
		
	
	return 0
end

-- 触发操作
function action_EVENT_GATHER_24(context, evt)
	-- 创建id为5009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 5009 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_69(context, evt)
	if evt.param1 ~= 69 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_69(context, evt)
	-- 解锁目标5006
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 5006, state = GadgetState.Default }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : unlock_gadget")
		return -1
	end
	
	return 0
end