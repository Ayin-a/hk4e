-- 基础信息
local base_info = {
	group_id = 133314291
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
	{ config_id = 291001, gadget_id = 70330404, pos = { x = -202.525, y = -48.174, z = 4776.073 }, rot = { x = 0.001, y = 337.608, z = 348.463 }, level = 30, state = GadgetState.GearStop, persistent = true, area_id = 32 },
	{ config_id = 291002, gadget_id = 70330404, pos = { x = -154.643, y = -43.185, z = 4785.816 }, rot = { x = 350.408, y = 5.854, z = 16.939 }, level = 30, state = GadgetState.GearStop, persistent = true, area_id = 32 },
	{ config_id = 291004, gadget_id = 70330404, pos = { x = -197.376, y = -47.978, z = 4833.200 }, rot = { x = -0.001, y = 41.094, z = 348.277 }, level = 30, state = GadgetState.GearStop, persistent = true, area_id = 32 },
	{ config_id = 291006, gadget_id = 70211111, pos = { x = -188.521, y = -41.827, z = 4796.530 }, rot = { x = 28.663, y = 145.081, z = 345.842 }, level = 26, drop_tag = "解谜中级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	{ config_id = 291008, gadget_id = 70220103, pos = { x = -188.201, y = -37.950, z = 4797.101 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 291010, gadget_id = 70220103, pos = { x = -202.038, y = -43.935, z = 4776.281 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 291011, gadget_id = 70220103, pos = { x = -197.113, y = -43.699, z = 4832.990 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 291013, gadget_id = 70220103, pos = { x = -156.060, y = -35.792, z = 4789.152 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1291007, name = "GADGET_STATE_CHANGE_291007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_291007", action = "action_EVENT_GADGET_STATE_CHANGE_291007" }
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
		gadgets = { 291001, 291002, 291004, 291010, 291011, 291013 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_291007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_291007(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133314291, 291001) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133314291, 291002) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133314291, 291004) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_291007(context, evt)
	-- 创建id为291006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 291006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为291008的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 291008 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end