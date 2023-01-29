-- 基础信息
local base_info = {
	group_id = 133314298
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
	{ config_id = 298001, gadget_id = 70330404, pos = { x = -777.173, y = -86.337, z = 4479.827 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStop, area_id = 32 },
	{ config_id = 298002, gadget_id = 70330404, pos = { x = -754.710, y = -85.671, z = 4476.605 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStop, area_id = 32 },
	{ config_id = 298003, gadget_id = 70330404, pos = { x = -776.763, y = -93.449, z = 4433.134 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStop, area_id = 32 },
	{ config_id = 298004, gadget_id = 70211001, pos = { x = -759.983, y = -89.616, z = 4465.240 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1298005, name = "GADGET_STATE_CHANGE_298005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_298005", action = "action_EVENT_GADGET_STATE_CHANGE_298005" }
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
		gadgets = { 298001, 298002, 298003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_298005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_298005(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133314298, 298001) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133314298, 298002) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133314298, 298003) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_298005(context, evt)
	-- 创建id为298004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 298004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end