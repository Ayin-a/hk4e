-- 基础信息
local base_info = {
	group_id = 133302320
}

-- Trigger变量
local defs = {
	gadget_id = 320004
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
	{ config_id = 320001, gadget_id = 70310011, pos = { x = -242.494, y = 222.763, z = 2541.198 }, rot = { x = 338.662, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	{ config_id = 320002, gadget_id = 70310011, pos = { x = -210.981, y = 221.497, z = 2531.610 }, rot = { x = 358.952, y = 0.006, z = 359.330 }, level = 27, persistent = true, area_id = 24 },
	{ config_id = 320003, gadget_id = 70320005, pos = { x = -216.895, y = 223.015, z = 2549.964 }, rot = { x = 1.393, y = 0.475, z = 356.616 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 320004, gadget_id = 70211102, pos = { x = -222.034, y = 223.232, z = 2547.148 }, rot = { x = 349.392, y = 0.134, z = 354.710 }, level = 26, drop_tag = "解谜低级须弥", state = GadgetState.ChestLocked, showcutscene = true, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, explore = { name = "chest", exp = 10 }, area_id = 20 },
	{ config_id = 320008, gadget_id = 70310011, pos = { x = -234.994, y = 226.320, z = 2558.870 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1320005, name = "GADGET_STATE_CHANGE_320005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_320005", action = "action_EVENT_GADGET_STATE_CHANGE_320005" },
	{ config_id = 1320006, name = "GROUP_LOAD_320006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_320006", action = "action_EVENT_GROUP_LOAD_320006", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "start", value = 0, no_refresh = true }
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
		gadgets = { 320001, 320002, 320003, 320004, 320008 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_320005", "GROUP_LOAD_320006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_320005(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133302320, 320001) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133302320, 320002) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133302320, 320003) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133302320, 320008) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_320005(context, evt)
	-- 将configid为 320004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 320004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_320006(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133302320, 320001) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133302320, 320002) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133302320, 320003) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133302320, 320008) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_320006(context, evt)
	-- 将configid为 320004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 320004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end