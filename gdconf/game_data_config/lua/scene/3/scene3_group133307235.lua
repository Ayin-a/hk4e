-- 基础信息
local base_info = {
	group_id = 133307235
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
	{ config_id = 235001, gadget_id = 70330335, pos = { x = -1198.350, y = -34.153, z = 5489.345 }, rot = { x = 0.000, y = 96.763, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 235002, gadget_id = 70330335, pos = { x = -1189.290, y = -34.164, z = 5493.557 }, rot = { x = 0.000, y = 96.763, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 235003, gadget_id = 70211102, pos = { x = -1193.173, y = -36.998, z = 5489.985 }, rot = { x = 0.000, y = 154.389, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	{ config_id = 235005, gadget_id = 70330335, pos = { x = -1194.000, y = -25.578, z = 5491.808 }, rot = { x = 0.000, y = 95.044, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 235006, gadget_id = 70220005, pos = { x = -1193.910, y = -25.526, z = 5490.636 }, rot = { x = 0.000, y = 259.894, z = 0.000 }, level = 32, isOneoff = true, persistent = true, area_id = 32 },
	{ config_id = 235007, gadget_id = 70220005, pos = { x = -1193.146, y = -25.194, z = 5491.368 }, rot = { x = 353.065, y = 270.910, z = 90.000 }, level = 32, isOneoff = true, persistent = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1235004, name = "GADGET_STATE_CHANGE_235004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_235004", action = "action_EVENT_GADGET_STATE_CHANGE_235004", trigger_count = 0 }
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
		gadgets = { 235001, 235002, 235003, 235005, 235006, 235007 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_235004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_235004(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133307235, 235001) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133307235, 235002) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133307235, 235005) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_235004(context, evt)
	ScriptLib.SetGadgetStateByConfigId(context,235003, GadgetState.Default)
	
	return 0
end