-- 基础信息
local base_info = {
	group_id = 133310013
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
	{ config_id = 13001, gadget_id = 70330416, pos = { x = -2360.819, y = 98.266, z = 5179.202 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 27 },
	{ config_id = 13002, gadget_id = 70330416, pos = { x = -2340.989, y = 98.211, z = 5179.007 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 27 },
	{ config_id = 13016, gadget_id = 70330416, pos = { x = -2351.031, y = 104.199, z = 5264.033 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, persistent = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 7305313开始时开门
	{ config_id = 1013003, name = "QUEST_START_13003", event = EventType.EVENT_QUEST_START, source = "7305313", condition = "", action = "action_EVENT_QUEST_START_13003", trigger_count = 0 },
	-- 7305321开始时重置
	{ config_id = 1013015, name = "QUEST_START_13015", event = EventType.EVENT_QUEST_START, source = "7305321", condition = "", action = "action_EVENT_QUEST_START_13015", trigger_count = 0 },
	-- 保底开13016
	{ config_id = 1013018, name = "GROUP_LOAD_13018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_13018", action = "action_EVENT_GROUP_LOAD_13018", trigger_count = 0 },
	-- 7305317结束时开门
	{ config_id = 1013020, name = "QUEST_FINISH_13020", event = EventType.EVENT_QUEST_FINISH, source = "7305317", condition = "", action = "action_EVENT_QUEST_FINISH_13020", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "torch", value = 0, no_refresh = true }
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
		gadgets = { 13001, 13002, 13016 },
		regions = { },
		triggers = { "QUEST_START_13003", "QUEST_START_13015", "GROUP_LOAD_13018", "QUEST_FINISH_13020" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_START_13003(context, evt)
	-- 将configid为 13001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 13001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 13002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 13002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_13015(context, evt)
	-- 将configid为 13016 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 13016, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_13018(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133310097, 97002) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133310098, 98002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_13018(context, evt)
	-- 将configid为 13016 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 13016, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "quest" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "quest", 1, 133309498) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_13020(context, evt)
	-- 将configid为 13016 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 13016, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "quest" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "quest", 1, 133309498) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end