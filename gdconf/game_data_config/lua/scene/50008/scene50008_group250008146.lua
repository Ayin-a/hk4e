-- 基础信息
local base_info = {
	group_id = 250008146
}

-- Trigger变量
local defs = {
	gadget_door = 146002,
	group_id = 250008146
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
	{ config_id = 146001, gadget_id = 70360002, pos = { x = -57.493, y = 8.517, z = -383.762 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 146002, gadget_id = 70350004, pos = { x = -58.745, y = 8.517, z = -381.442 }, rot = { x = 0.000, y = 271.221, z = 0.000 }, level = 1, state = GadgetState.GearStart, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1146003, name = "GADGET_CREATE_146003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_146003", action = "action_EVENT_GADGET_CREATE_146003", trigger_count = 0 },
	{ config_id = 1146004, name = "SELECT_OPTION_146004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_EVENT_SELECT_OPTION_146004", trigger_count = 0 }
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
		gadgets = { 146001, 146002 },
		regions = { },
		triggers = { "GADGET_CREATE_146003", "SELECT_OPTION_146004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_146003(context, evt)
	if 146001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_146003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_SELECT_OPTION_146004(context, evt)
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_door) == GadgetState.Default then
		ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_door, GadgetState.GearStart)
	
	elseif
	 ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_door) == GadgetState.GearStart then
		ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_door, GadgetState.Default)
	
	end 
	
	return 0
end