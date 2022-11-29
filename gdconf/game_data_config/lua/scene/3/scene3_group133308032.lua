-- 基础信息
local base_info = {
	group_id = 133308032
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
	{ config_id = 32010, npc_id = 4394, pos = { x = -1994.373, y = 288.839, z = 4091.931 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 26 },
	{ config_id = 32011, npc_id = 4392, pos = { x = -1992.665, y = 288.839, z = 4091.027 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 26 },
	{ config_id = 32012, npc_id = 4393, pos = { x = -1991.548, y = 288.839, z = 4094.237 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 26 }
}

-- 装置
gadgets = {
	{ config_id = 32001, gadget_id = 70330293, pos = { x = -1994.373, y = 288.761, z = 4091.931 }, rot = { x = 0.000, y = 95.094, z = 0.000 }, level = 1, state = GadgetState.ChestLocked, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 26 },
	{ config_id = 32002, gadget_id = 70330293, pos = { x = -1992.665, y = 288.759, z = 4091.027 }, rot = { x = 0.361, y = 19.021, z = 2.525 }, level = 1, state = GadgetState.ChestLocked, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 26 },
	{ config_id = 32003, gadget_id = 70330293, pos = { x = 0.000, y = 197.722, z = 0.000 }, rot = { x = 0.000, y = 146.937, z = 0.000 }, level = 1, state = GadgetState.ChestLocked, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 7 },
	{ config_id = 32004, gadget_id = 70710107, pos = { x = -1994.373, y = 288.538, z = 4091.930 }, rot = { x = 0.000, y = 349.031, z = 0.000 }, level = 1, persistent = true, area_id = 26, is_enable_interact = false },
	{ config_id = 32005, gadget_id = 70710107, pos = { x = -1992.665, y = 288.539, z = 4091.027 }, rot = { x = 0.000, y = 307.820, z = 0.000 }, level = 1, persistent = true, area_id = 26, is_enable_interact = false },
	{ config_id = 32006, gadget_id = 70710107, pos = { x = -1991.547, y = 288.538, z = 4094.236 }, rot = { x = 0.000, y = 343.234, z = 0.000 }, level = 1, persistent = true, area_id = 26, is_enable_interact = false },
	{ config_id = 32007, gadget_id = 70330293, pos = { x = -1994.373, y = 288.761, z = 4091.931 }, rot = { x = 0.000, y = 95.094, z = 0.000 }, level = 1, state = GadgetState.GearStop, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 26 },
	{ config_id = 32008, gadget_id = 70540048, pos = { x = -1992.665, y = 288.839, z = 4091.027 }, rot = { x = 0.361, y = 19.021, z = 2.525 }, level = 1, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 26 },
	{ config_id = 32009, gadget_id = 70540048, pos = { x = -1991.548, y = 288.839, z = 4094.237 }, rot = { x = 0.000, y = 197.722, z = 0.000 }, level = 1, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 26 },
	{ config_id = 32013, gadget_id = 70330293, pos = { x = -1994.373, y = 288.761, z = 4091.931 }, rot = { x = 0.000, y = 95.094, z = 0.000 }, level = 1, state = GadgetState.ChestOpened, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 26 },
	{ config_id = 32014, gadget_id = 70330293, pos = { x = -1992.665, y = 288.759, z = 4091.027 }, rot = { x = 0.361, y = 19.021, z = 2.525 }, level = 1, state = GadgetState.ChestOpened, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 26 },
	{ config_id = 32015, gadget_id = 70330293, pos = { x = -1991.548, y = 288.758, z = 4094.237 }, rot = { x = 0.000, y = 146.937, z = 0.000 }, level = 1, state = GadgetState.ChestOpened, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 26 },
	{ config_id = 32016, gadget_id = 70330293, pos = { x = -1994.373, y = 288.761, z = 4091.931 }, rot = { x = 0.000, y = 95.094, z = 0.000 }, level = 1, state = GadgetState.ChestTrap, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 26 },
	{ config_id = 32017, gadget_id = 70330293, pos = { x = -1992.665, y = 288.759, z = 4091.027 }, rot = { x = 0.361, y = 19.021, z = 2.525 }, level = 1, state = GadgetState.ChestTrap, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 26 },
	{ config_id = 32018, gadget_id = 70330293, pos = { x = -1991.548, y = 288.758, z = 4094.237 }, rot = { x = 0.000, y = 197.722, z = 0.000 }, level = 1, state = GadgetState.ChestTrap, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 26 },
	{ config_id = 32019, gadget_id = 70330293, pos = { x = -1994.373, y = 288.761, z = 4091.931 }, rot = { x = 0.000, y = 95.094, z = 0.000 }, level = 1, state = GadgetState.GearStart, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 26 },
	{ config_id = 32020, gadget_id = 70330293, pos = { x = -1992.665, y = 288.759, z = 4091.027 }, rot = { x = 0.361, y = 19.021, z = 2.525 }, level = 1, state = GadgetState.GearStart, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 26 },
	{ config_id = 32021, gadget_id = 70330293, pos = { x = -1991.548, y = 288.758, z = 4094.237 }, rot = { x = 0.000, y = 197.722, z = 0.000 }, level = 1, state = GadgetState.GearStart, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 26 },
	{ config_id = 32022, gadget_id = 70330293, pos = { x = -1994.373, y = 288.761, z = 4091.931 }, rot = { x = 0.000, y = 95.094, z = 0.000 }, level = 1, state = GadgetState.GearAction1, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 26 },
	{ config_id = 32023, gadget_id = 70330293, pos = { x = -1992.665, y = 288.759, z = 4091.027 }, rot = { x = 0.361, y = 19.021, z = 2.525 }, level = 1, state = GadgetState.GearAction1, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 26 },
	{ config_id = 32024, gadget_id = 70330293, pos = { x = -1991.548, y = 288.758, z = 4094.237 }, rot = { x = 0.000, y = 197.722, z = 0.000 }, level = 1, state = GadgetState.GearAction1, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 26 },
	{ config_id = 32025, gadget_id = 70330293, pos = { x = -1992.665, y = 288.759, z = 4091.027 }, rot = { x = 0.361, y = 19.021, z = 2.525 }, level = 1, state = GadgetState.GearStop, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 26 },
	{ config_id = 32026, gadget_id = 70330293, pos = { x = -1991.548, y = 288.758, z = 4094.237 }, rot = { x = 0.000, y = 197.722, z = 0.000 }, level = 1, state = GadgetState.GearStop, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 26 },
	-- 三朵花被交互后变为201
	{ config_id = 32027, gadget_id = 70360189, pos = { x = -1992.596, y = 288.578, z = 4089.821 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 26 },
	-- 三朵花被交互后变为201
	{ config_id = 32029, gadget_id = 70360189, pos = { x = -1992.596, y = 288.578, z = 4089.821 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 26 },
	{ config_id = 32030, gadget_id = 70710470, pos = { x = -1994.373, y = 288.761, z = 4091.931 }, rot = { x = 0.000, y = 95.094, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 32031, gadget_id = 70710470, pos = { x = -1992.665, y = 288.759, z = 4091.027 }, rot = { x = 0.000, y = 98.753, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 32032, gadget_id = 70710470, pos = { x = -1991.548, y = 288.758, z = 4094.237 }, rot = { x = 0.000, y = 146.937, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 32033, gadget_id = 70710470, pos = { x = -1994.373, y = 288.761, z = 4091.931 }, rot = { x = 0.000, y = 95.094, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 32034, gadget_id = 70710470, pos = { x = -1992.665, y = 288.759, z = 4091.027 }, rot = { x = 0.000, y = 98.753, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 32035, gadget_id = 70710470, pos = { x = -1991.548, y = 288.758, z = 4094.237 }, rot = { x = 0.000, y = 146.937, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 32037, gadget_id = 70540048, pos = { x = -1994.373, y = 288.839, z = 4091.931 }, rot = { x = 0.000, y = 95.094, z = 0.000 }, level = 1, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 26 },
	{ config_id = 32038, gadget_id = 70540048, pos = { x = -1992.665, y = 288.839, z = 4091.027 }, rot = { x = 0.361, y = 19.021, z = 2.525 }, level = 1, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 26 },
	{ config_id = 32039, gadget_id = 70540048, pos = { x = -1991.548, y = 288.839, z = 4094.237 }, rot = { x = 0.000, y = 197.722, z = 0.000 }, level = 1, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 判断三朵花被交互
	{ config_id = 1032028, name = "GADGET_STATE_CHANGE_32028", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_32028", action = "action_EVENT_GADGET_STATE_CHANGE_32028", trigger_count = 0 },
	{ config_id = 1032036, name = "GADGET_STATE_CHANGE_32036", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_32036", action = "action_EVENT_GADGET_STATE_CHANGE_32036" },
	-- 判断三朵花被交互
	{ config_id = 1032040, name = "GADGET_STATE_CHANGE_32040", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_32040", action = "action_EVENT_GADGET_STATE_CHANGE_32040", trigger_count = 0 },
	{ config_id = 1032043, name = "GADGET_STATE_CHANGE_32043", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_32043", action = "action_EVENT_GADGET_STATE_CHANGE_32043" },
	{ config_id = 1032044, name = "GADGET_STATE_CHANGE_32044", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_32044", action = "action_EVENT_GADGET_STATE_CHANGE_32044" },
	{ config_id = 1032045, name = "GADGET_STATE_CHANGE_32045", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_32045", action = "action_EVENT_GADGET_STATE_CHANGE_32045" },
	{ config_id = 1032046, name = "GADGET_STATE_CHANGE_32046", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_32046", action = "action_EVENT_GADGET_STATE_CHANGE_32046" },
	{ config_id = 1032047, name = "GADGET_STATE_CHANGE_32047", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_32047", action = "action_EVENT_GADGET_STATE_CHANGE_32047" }
}

-- 变量
variables = {
	{ config_id = 1, name = "count", value = 0, no_refresh = false }
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
		-- description = 不可交互土坑,
		monsters = { },
		gadgets = { 32001, 32002, 32003, 32004, 32005, 32006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 第一天任务前施肥前土坑,
		monsters = { },
		gadgets = { 32004, 32005, 32006, 32013, 32014, 32015, 32027, 32033, 32034, 32035 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_32028", "GADGET_STATE_CHANGE_32036", "GADGET_STATE_CHANGE_32043", "GADGET_STATE_CHANGE_32044" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 不可交互幼苗,
		monsters = { },
		gadgets = { 32004, 32005, 32006, 32019, 32020, 32021 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 第二天任务中，施肥前幼苗,
		monsters = { },
		gadgets = { 32004, 32005, 32006, 32007, 32025, 32026, 32029, 32030, 32031, 32032 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_32040", "GADGET_STATE_CHANGE_32045", "GADGET_STATE_CHANGE_32046", "GADGET_STATE_CHANGE_32047" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 第二天任务后，须弥蔷薇，黑屏摘掉了1朵花,
		monsters = { },
		gadgets = { 32004, 32005, 32006, 32008, 32009 },
		regions = { },
		triggers = { },
		npcs = { 32011, 32012 },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 第三天任务，所有蔷薇不可交互,
		monsters = { },
		gadgets = { 32004, 32005, 32006, 32037, 32038, 32039 },
		regions = { },
		triggers = { },
		npcs = { 32010, 32011, 32012 },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = 已施肥种子,
		monsters = { },
		gadgets = { 32004, 32005, 32006, 32016, 32017, 32018 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = 已施肥幼苗,
		monsters = { },
		gadgets = { 32004, 32005, 32006, 32022, 32023, 32024 },
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
function condition_EVENT_GADGET_STATE_CHANGE_32028(context, evt)
	if GadgetState.ChestTrap ~= ScriptLib.GetGadgetStateByConfigId(context, 133308032, 32013) then
		return false
	end
	
	if GadgetState.ChestTrap ~= ScriptLib.GetGadgetStateByConfigId(context, 133308032, 32014) then
		return false
	end
	
	if GadgetState.ChestTrap ~= ScriptLib.GetGadgetStateByConfigId(context, 133308032, 32015) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_32028(context, evt)
	-- 将configid为 32027 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 32027, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_32036(context, evt)
	if 32013 ~= evt.param2 or GadgetState.ChestTrap ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_32036(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133308032, EntityType.GADGET, 32033 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_32040(context, evt)
	if GadgetState.GearAction1 ~= ScriptLib.GetGadgetStateByConfigId(context, 133308032, 32007) then
		return false
	end
	
	if GadgetState.GearAction1 ~= ScriptLib.GetGadgetStateByConfigId(context, 133308032, 32025) then
		return false
	end
	
	if GadgetState.GearAction1 ~= ScriptLib.GetGadgetStateByConfigId(context, 133308032, 32026) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_32040(context, evt)
	-- 将configid为 32029 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 32029, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_32043(context, evt)
	if 32014 ~= evt.param2 or GadgetState.ChestTrap ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_32043(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133308032, EntityType.GADGET, 32034 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_32044(context, evt)
	if 32015 ~= evt.param2 or GadgetState.ChestTrap ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_32044(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133308032, EntityType.GADGET, 32035 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_32045(context, evt)
	if 32007 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_32045(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133308032, EntityType.GADGET, 32030 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_32046(context, evt)
	if 32025 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_32046(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133308032, EntityType.GADGET, 32031 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_32047(context, evt)
	if 32026 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_32047(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133308032, EntityType.GADGET, 32032 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

require "V3_1/DesertRoseFlower_Quest"