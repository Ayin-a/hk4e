-- 基础信息
local base_info = {
	group_id = 155005300
}

-- Trigger变量
local defs = {
	groupID = 155005300,
	gadget_gate = 300001,
	gadget_controller = 300002
}

-- DEFS_MISCS
function GadgetStateSwitcher(context,gadget_id,state)

	if ScriptLib.GetGadgetStateByConfigId(context, defs.groupID, gadget_id)  == state[1] then 
		ScriptLib.SetGroupGadgetStateByConfigId(context, defs.groupID, gadget_id, state[2])
	elseif ScriptLib.GetGadgetStateByConfigId(context, defs.groupID, gadget_id)  == state[2] then 
		ScriptLib.SetGroupGadgetStateByConfigId(context, defs.groupID, gadget_id, state[1])
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
	{ config_id = 300001, gadget_id = 70350006, pos = { x = 382.686, y = 123.770, z = 854.849 }, rot = { x = 0.000, y = 358.514, z = 0.000 }, level = 36, persistent = true, area_id = 200 },
	{ config_id = 300002, gadget_id = 70360170, pos = { x = 378.349, y = 123.815, z = 857.060 }, rot = { x = 87.683, y = 270.000, z = 258.349 }, level = 36, persistent = true, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1300003, name = "GROUP_LOAD_300003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_300003", trigger_count = 0 },
	{ config_id = 1300004, name = "SELECT_OPTION_300004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_300004", action = "action_EVENT_SELECT_OPTION_300004", trigger_count = 0 },
	{ config_id = 1300005, name = "TIME_AXIS_PASS_300005", event = EventType.EVENT_TIME_AXIS_PASS, source = "reset", condition = "", action = "action_EVENT_TIME_AXIS_PASS_300005", trigger_count = 0 }
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
		gadgets = { 300001, 300002 },
		regions = { },
		triggers = { "GROUP_LOAD_300003", "SELECT_OPTION_300004", "TIME_AXIS_PASS_300005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_300003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 155005300, 300002, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_300004(context, evt)
	-- 判断是gadgetid 300002 option_id 7
	if 300002 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_300004(context, evt)
		GadgetStateSwitcher(context,defs.gadget_gate,{0,201})
		GadgetStateSwitcher(context,defs.gadget_controller,{0,201})
		-- 删除指定group： 155005300 ；指定config：300002；物件身上指定option：7；
		ScriptLib.DelWorktopOptionByGroupId(context, 155005300, 300002, 7)
		-- 创建标识为"reset"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
		ScriptLib.InitTimeAxis(context, "reset", {1}, false)
		
		
		return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_300005(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 155005300, 300002, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end