-- 基础信息
local base_info = {
	group_id = 155008035
}

-- Trigger变量
local defs = {
	groupid = 155008035
}

-- DEFS_MISCS
function GadgetStateSwitcher(context,gadget_id,state)

	if ScriptLib.GetGadgetStateByConfigId(context, defs.groupid, gadget_id)  == state[1] then 
		ScriptLib.SetGroupGadgetStateByConfigId(context, defs.groupid, gadget_id, state[2])
	elseif ScriptLib.GetGadgetStateByConfigId(context, defs.groupid, gadget_id)  == state[2] then 
		ScriptLib.SetGroupGadgetStateByConfigId(context, defs.groupid, gadget_id, state[1])
	end 

end

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
	{ config_id = 35001, gadget_id = 70290281, pos = { x = -180.360, y = 179.001, z = 490.178 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, area_id = 200 },
	{ config_id = 35002, gadget_id = 70360170, pos = { x = -184.277, y = 179.952, z = 486.224 }, rot = { x = 270.000, y = 280.631, z = 0.000 }, level = 36, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1035003, name = "GROUP_LOAD_35003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_35003", trigger_count = 0 },
	{ config_id = 1035004, name = "SELECT_OPTION_35004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_35004", action = "action_EVENT_SELECT_OPTION_35004", trigger_count = 0 }
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
		gadgets = { 35001, 35002 },
		regions = { },
		triggers = { "GROUP_LOAD_35003", "SELECT_OPTION_35004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_35003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 155008035, 35002, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_35004(context, evt)
	-- 判断是gadgetid 35002 option_id 7
	if 35002 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_35004(context, evt)
	GadgetStateSwitcher(context,35001,{0,201})
	GadgetStateSwitcher(context,35002,{0,201})
	return 0
end