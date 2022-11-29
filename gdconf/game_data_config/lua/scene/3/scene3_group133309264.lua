-- 基础信息
local base_info = {
	group_id = 133309264
}

-- Trigger变量
local defs = {
	gadget_id = 264004
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
	{ config_id = 264001, gadget_id = 70330332, pos = { x = -2213.346, y = -86.568, z = 5992.671 }, rot = { x = 0.000, y = 25.671, z = 0.000 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 27 },
	{ config_id = 264002, gadget_id = 70330332, pos = { x = -2209.004, y = -86.568, z = 6002.006 }, rot = { x = 0.000, y = 25.671, z = 0.000 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 27 },
	{ config_id = 264003, gadget_id = 70330332, pos = { x = -2199.891, y = -86.568, z = 5997.626 }, rot = { x = 0.000, y = 25.671, z = 0.000 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 27 },
	{ config_id = 264004, gadget_id = 70211150, pos = { x = -2203.101, y = -86.578, z = 6004.526 }, rot = { x = 0.000, y = 206.055, z = 0.000 }, level = 26, chest_drop_id = 21910110, drop_count = 1, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1264005, name = "GADGET_STATE_CHANGE_264005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_264005", action = "action_EVENT_GADGET_STATE_CHANGE_264005" },
	-- 保底
	{ config_id = 1264006, name = "GROUP_LOAD_264006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_264006", action = "action_EVENT_GROUP_LOAD_264006", trigger_count = 0 }
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
		gadgets = { 264001, 264002, 264003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_264005", "GROUP_LOAD_264006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_264005(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309264, 264001) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309264, 264002) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309264, 264003) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_264005(context, evt)
	-- 创建id为264004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 264004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_264006(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309264, 264001) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309264, 264002) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309264, 264003) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_264006(context, evt)
	-- 创建id为264004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 264004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end