-- 基础信息
local base_info = {
	group_id = 111101290
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
	{ config_id = 290001, gadget_id = 70310001, pos = { x = 2325.820, y = 275.538, z = -1643.364 }, rot = { x = 358.830, y = 0.694, z = 6.982 }, level = 1 },
	{ config_id = 290002, gadget_id = 70310001, pos = { x = 2325.735, y = 275.498, z = -1647.340 }, rot = { x = 1.797, y = 0.038, z = 0.284 }, level = 1 },
	{ config_id = 290003, gadget_id = 70310001, pos = { x = 2326.385, y = 275.441, z = -1651.211 }, rot = { x = 2.812, y = 343.934, z = 1.522 }, level = 1 },
	{ config_id = 290004, gadget_id = 70310001, pos = { x = 2327.937, y = 275.604, z = -1654.842 }, rot = { x = 2.243, y = 342.584, z = 1.172 }, level = 1 },
	{ config_id = 290005, gadget_id = 70310001, pos = { x = 2330.906, y = 276.399, z = -1658.991 }, rot = { x = 11.238, y = 353.130, z = 11.754 }, level = 1 },
	{ config_id = 290006, gadget_id = 70211001, pos = { x = 2330.983, y = 277.149, z = -1661.802 }, rot = { x = 0.000, y = 116.831, z = 0.000 }, level = 11, drop_tag = "战斗低级蒙德", isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1290007, name = "GADGET_STATE_CHANGE_290007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_290007", action = "action_EVENT_GADGET_STATE_CHANGE_290007" }
}

-- 变量
variables = {
	{ config_id = 1, name = "fire_count", value = 0, no_refresh = true }
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
		gadgets = { 290001, 290002, 290003, 290004, 290005 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_290007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_290007(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 111101290, 290001) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 111101290, 290002) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 111101290, 290003) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 111101290, 290004) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 111101290, 290005) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_290007(context, evt)
	-- 创建id为290006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 290006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end