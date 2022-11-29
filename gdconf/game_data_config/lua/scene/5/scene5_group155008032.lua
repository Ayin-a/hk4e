-- 基础信息
local base_info = {
	group_id = 155008032
}

-- Trigger变量
local defs = {
	groupid = 155008032
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
	{ config_id = 32001, gadget_id = 70290281, pos = { x = -233.660, y = 209.772, z = 468.588 }, rot = { x = 0.000, y = 271.852, z = 0.000 }, level = 36, persistent = true, area_id = 200 },
	-- 大社地下洞穴拉杆机关门
	{ config_id = 32002, gadget_id = 70360170, pos = { x = -231.888, y = 206.072, z = 463.788 }, rot = { x = 270.000, y = 236.371, z = 0.000 }, level = 36, persistent = true, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1032003, name = "GROUP_LOAD_32003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_32003", trigger_count = 0 },
	{ config_id = 1032004, name = "SELECT_OPTION_32004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_32004", action = "action_EVENT_SELECT_OPTION_32004", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "default", value = 0, no_refresh = false }
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
		gadgets = { 32001, 32002 },
		regions = { },
		triggers = { "GROUP_LOAD_32003", "SELECT_OPTION_32004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_32003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 155008032, 32002, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_32004(context, evt)
	-- 判断是gadgetid 32002 option_id 7
	if 32002 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_32004(context, evt)
	
	GadgetStateSwitcher(context,32001,{0,201})
	
	GadgetStateSwitcher(context,32002,{0,201})
	return 0
end