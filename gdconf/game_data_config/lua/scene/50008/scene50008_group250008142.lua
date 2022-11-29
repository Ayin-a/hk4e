-- 基础信息
local base_info = {
	group_id = 250008142
}

-- Trigger变量
local defs = {
	gadget_door = 142002,
	group_id = 250008142
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
	{ config_id = 142001, gadget_id = 70360002, pos = { x = -54.660, y = 15.087, z = -377.738 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 142002, gadget_id = 70350004, pos = { x = -52.395, y = 8.497, z = -375.806 }, rot = { x = 0.000, y = 271.221, z = 0.000 }, level = 1, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1142003, name = "GADGET_CREATE_142003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_142003", action = "action_EVENT_GADGET_CREATE_142003", trigger_count = 0 },
	{ config_id = 1142004, name = "SELECT_OPTION_142004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_EVENT_SELECT_OPTION_142004", trigger_count = 0 }
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
		gadgets = { 142001, 142002 },
		regions = { },
		triggers = { "GADGET_CREATE_142003", "SELECT_OPTION_142004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_142003(context, evt)
	if 142001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_142003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_SELECT_OPTION_142004(context, evt)
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_door) == GadgetState.Default then
		ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_door, GadgetState.GearStart)
	
	elseif
	 ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_door) == GadgetState.GearStart then
		ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_door, GadgetState.Default)
	
	end 
	
	return 0
end