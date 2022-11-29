-- 基础信息
local base_info = {
	group_id = 133303334
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
	{ config_id = 334001, gadget_id = 70310201, pos = { x = -1799.963, y = 88.902, z = 3374.767 }, rot = { x = 0.000, y = 189.209, z = 0.000 }, level = 30, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 23 },
	{ config_id = 334002, gadget_id = 70330246, pos = { x = -1796.712, y = 89.391, z = 3386.277 }, rot = { x = 0.000, y = 13.695, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 334004, gadget_id = 70310199, pos = { x = -1801.830, y = 88.371, z = 3373.373 }, rot = { x = 0.000, y = 7.851, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 334006, gadget_id = 70211001, pos = { x = -1793.701, y = 93.155, z = 3391.646 }, rot = { x = 6.198, y = 263.126, z = 359.254 }, level = 26, drop_tag = "战斗低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1334003, name = "GADGET_STATE_CHANGE_334003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_334003", action = "action_EVENT_GADGET_STATE_CHANGE_334003", trigger_count = 0 },
	{ config_id = 1334005, name = "GROUP_LOAD_334005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_334005", action = "action_EVENT_GROUP_LOAD_334005", trigger_count = 0 }
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
		gadgets = { 334001, 334002, 334004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_334003", "GROUP_LOAD_334005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_334003(context, evt)
	if 334001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_334003(context, evt)
	-- 将configid为 334002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 334002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为334006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 334006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_334005(context, evt)
	if 334001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_334005(context, evt)
	-- 将configid为 334002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 334002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为334006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 334006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end